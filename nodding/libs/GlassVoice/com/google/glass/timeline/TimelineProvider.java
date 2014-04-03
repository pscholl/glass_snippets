package com.google.glass.timeline;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.SelectionBuilder;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public class TimelineProvider extends ContentProvider
{
  public static final String AUTHORITY = "com.google.glass.timeline";
  private static final Uri BASE_URI;
  public static final int BUNDLE_COVER_EXPLICIT = 1;
  public static final int BUNDLE_COVER_NONE = 0;
  public static final int BUNDLE_COVER_SINGLE = 3;
  public static final int BUNDLE_COVER_STANDIN = 2;
  private static final String DATABASE_NAME = "timeline.db";
  private static final int DATABASE_UPGRADE_BATCH_SIZE = 100;
  private static final int DATABASE_VERSION = 26;
  static final int DEFAULT_PIN_SCORE = 2147483647;
  private static final String ENTITY_ENTITYID_INDEX = "ix_entity_entityid";
  static final String ENTITY_TABLE = "entity";
  public static final Uri ENTITY_URI;
  private static final int MATCH_ENTITY = 4;
  private static final int MATCH_PENDING_ACTIONS_BY_TIMELINE_ID = 3;
  private static final int MATCH_TIMELINE = 1;
  private static final int MATCH_TIMELINE_BY_ID = 2;
  private static final int MATCH_TIMELINE_WITH_EXPIRED = 5;
  private static final int MAX_SYNCED_ITEM_MIGRATION = 100;
  private static final String PENDING_ACTION_DELETE_TIMELINE_ID_TRIGGER = "t_pending_actions_delete_timeline_id";
  private static final String PENDING_ACTION_TABLE = "pending_actions";
  private static final String PENDING_ACTION_TIMELINE_ID_INDEX = "ix_pending_actions_timeline_id";
  private static final String PENDING_ACTION_TYPE = "vnd.com.google.glass.timeline.pending_action";
  private static final String TIMELINE_BUNDLE_COVER_STATUS_INDEX = "ix_timeline_bundle_cover_status";
  private static final String TIMELINE_BUNDLE_ID_INDEX = "ix_timeline_bundle_id";
  private static final String TIMELINE_CLOUD_SYNC_STATUS_SYNC_PROTOCOL_INDEX = "ix_timeline_sync_status_sync_protocol";
  private static final String TIMELINE_DELIVERY_TIME_INDEX = "ix_timeline_delivery_time";
  private static final String TIMELINE_DISPLAY_TIME_INDEX = "ix_timeline_display_time";
  private static final String TIMELINE_EXPIRATION_TIME_INDEX = "ix_timeline_expiration_time";
  private static final String TIMELINE_IS_DELETED_INDEX = "ix_timeline_is_deleted";
  private static final String TIMELINE_PIN_SCORE_INDEX = "ix_timeline_pin_score";
  private static final String TIMELINE_PIN_TIME_INDEX = "ix_timeline_pin_time";
  private static final String TIMELINE_SOURCE_INDEX = "ix_timeline_source";
  private static final String TIMELINE_TABLE = "timeline";
  private static final String TIMELINE_TYPE = "vnd.com.google.glass.timeline";
  public static final Uri TIMELINE_URI;
  public static final Uri TIMELINE_WITH_EXPIRED_URI;
  static final long UNPINNED_ITEM_PIN_TIME = -1L;
  private static final String WITH_EXPIRED_PATH = "withExpired";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final UriMatcher uriMatcher;
  private DatabaseHelper dbHelper;
  private int suppressCount;
  private Uri suppressedNotifyUri;

  static
  {
    BASE_URI = new Uri.Builder().scheme("content").authority("com.google.glass.timeline").build();
    TIMELINE_URI = BASE_URI.buildUpon().appendPath("timeline").build();
    ENTITY_URI = BASE_URI.buildUpon().appendPath("entity").build();
    TIMELINE_WITH_EXPIRED_URI = BASE_URI.buildUpon().appendPath("timeline").appendPath("withExpired").build();
    uriMatcher = new UriMatcher(-1);
    uriMatcher.addURI("com.google.glass.timeline", "timeline", 1);
    uriMatcher.addURI("com.google.glass.timeline", "timeline/withExpired", 5);
    uriMatcher.addURI("com.google.glass.timeline", "timeline/*", 2);
    uriMatcher.addURI("com.google.glass.timeline", "timeline/*/pending_actions", 3);
    uriMatcher.addURI("com.google.glass.timeline", "entity", 4);
  }

  private void addItemExpirationToQuery(SelectionBuilder paramSelectionBuilder)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("(+").append("expiration_time").append(">=CAST(? AS INT)");
    localStringBuilder.append(" OR +").append("expiration_time=0");
    localStringBuilder.append(" OR +").append("expiration_time IS NULL");
    localStringBuilder.append(")");
    paramSelectionBuilder.addSelection(localStringBuilder.toString(), String.valueOf(System.currentTimeMillis()));
  }

  private boolean deleteSomeOldestItems()
  {
    Cursor localCursor = null;
    try
    {
      localCursor = queryInternal(TIMELINE_URI, null, null, null, "display_time ASC", false);
      int i = localCursor.getCount();
      int j = i / 10;
      if (localCursor.moveToPosition(j))
      {
        long l = localCursor.getLong(localCursor.getColumnIndex("display_time"));
        Uri localUri = TIMELINE_URI;
        String[] arrayOfString = new String[1];
        arrayOfString[0] = String.valueOf(l);
        int k = delete(localUri, "display_time<=?", arrayOfString);
        FormattingLogger localFormattingLogger = logger;
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = Integer.valueOf(k);
        arrayOfObject[1] = Integer.valueOf(j + 1);
        arrayOfObject[2] = Integer.valueOf(i);
        localFormattingLogger.i("Deleted %s/%s from %s", arrayOfObject);
        if (k > 0);
        for (boolean bool = true; ; bool = false)
          return bool;
      }
      return false;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public static Uri getPendingActionUri(String paramString)
  {
    return TIMELINE_URI.buildUpon().appendPath(paramString).appendPath("pending_actions").build();
  }

  private Uri insertEntityItem(SQLiteDatabase paramSQLiteDatabase, Uri paramUri, ContentValues paramContentValues)
  {
    paramSQLiteDatabase.insertWithOnConflict("entity", null, paramContentValues, 5);
    return ENTITY_URI;
  }

  private Uri insertInternal(SQLiteDatabase paramSQLiteDatabase, Uri paramUri, ContentValues paramContentValues)
  {
    switch (uriMatcher.match(paramUri))
    {
    case 2:
    default:
      throw new IllegalArgumentException("Unable to insert into URI: " + paramUri);
    case 1:
      return insertTimelineItem(paramSQLiteDatabase, paramUri, paramContentValues);
    case 3:
      return insertPendingAction(paramUri, paramContentValues);
    case 4:
    }
    return insertEntityItem(paramSQLiteDatabase, paramUri, paramContentValues);
  }

  private Uri insertPendingAction(Uri paramUri, ContentValues paramContentValues)
  {
    Assert.assertEquals(Integer.valueOf(3), Integer.valueOf(paramUri.getPathSegments().size()));
    Assert.assertTrue(paramContentValues.containsKey("action_type"));
    String str = (String)paramUri.getPathSegments().get(-2 + paramUri.getPathSegments().size());
    paramContentValues.put("timeline_id", str);
    try
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramContentValues.getAsInteger("action_type");
      arrayOfObject[1] = str;
      localFormattingLogger.d("Inserting pending action %s for %s", arrayOfObject);
      long l = this.dbHelper.getWritableDatabase().insertOrThrow("pending_actions", null, paramContentValues);
      Uri localUri = paramUri.buildUpon().appendPath(String.valueOf(l)).build();
      return localUri;
    }
    catch (SQLException localSQLException)
    {
      logAndThrow(localSQLException, paramUri, paramContentValues);
    }
    return null;
  }

  private Uri insertTimelineItem(SQLiteDatabase paramSQLiteDatabase, Uri paramUri, ContentValues paramContentValues)
  {
    try
    {
      l = insertTimelineItemWithConflictAlgorithm(paramSQLiteDatabase, paramUri, paramContentValues, 2);
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramContentValues.getAsString("_id");
      localFormattingLogger.i("Inserted new timeline item %s", arrayOfObject);
      if (l > 0L)
        return TIMELINE_URI.buildUpon().appendPath(paramContentValues.getAsString("_id")).build();
    }
    catch (SQLiteConstraintException localSQLiteConstraintException)
    {
      while (true)
        long l = overwriteTimelineItemIfNeeded(paramSQLiteDatabase, paramUri, paramContentValues);
    }
    throw new SQLException("Row not inserted for URI: " + paramUri);
  }

  private long insertTimelineItemWithConflictAlgorithm(SQLiteDatabase paramSQLiteDatabase, Uri paramUri, ContentValues paramContentValues, int paramInt)
  {
    long l1 = 0L;
    try
    {
      long l2 = paramSQLiteDatabase.insertWithOnConflict("timeline", null, paramContentValues, paramInt);
      l1 = l2;
      return l1;
    }
    catch (SQLiteFullException localSQLiteFullException)
    {
      if (!deleteSomeOldestItems())
        logAndThrow(localSQLiteFullException, paramUri, paramContentValues);
      return insertTimelineItemWithConflictAlgorithm(paramSQLiteDatabase, paramUri, paramContentValues, paramInt);
    }
    catch (SQLiteConstraintException localSQLiteConstraintException)
    {
      throw localSQLiteConstraintException;
    }
    catch (SQLException localSQLException)
    {
      while (true)
        logAndThrow(localSQLException, paramUri, paramContentValues);
    }
  }

  private void logAndThrow(SQLException paramSQLException, Uri paramUri, ContentValues paramContentValues)
  {
    logger.e(paramSQLException, "Exception inserting:", new Object[0]);
    logger.e("URI: %s", new Object[] { paramUri });
    logger.e("Values: %s", new Object[] { paramContentValues });
    throw paramSQLException;
  }

  private int mutate(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString, boolean paramBoolean)
  {
    SelectionBuilder localSelectionBuilder = new SelectionBuilder(paramString, paramArrayOfString);
    String str;
    SQLiteDatabase localSQLiteDatabase;
    int j;
    switch (uriMatcher.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unable to update or delete URI: " + paramUri);
    case 1:
    case 5:
      str = "timeline";
      localSQLiteDatabase = this.dbHelper.getWritableDatabase();
      if (paramBoolean)
        j = localSQLiteDatabase.delete(str, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments());
      break;
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      if (j > 0)
        notifyChange(paramUri);
      return j;
      str = "timeline";
      localSelectionBuilder.addSelection("_id=?", paramUri.getLastPathSegment());
      break;
      str = "pending_actions";
      localSelectionBuilder.addSelection("timeline_id=?", (String)paramUri.getPathSegments().get(-2 + paramUri.getPathSegments().size()));
      break;
      str = "entity";
      break;
      try
      {
        int i = localSQLiteDatabase.update(str, paramContentValues, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments());
        j = i;
      }
      catch (SQLiteFullException localSQLiteFullException)
      {
        if (!deleteSomeOldestItems())
          throw localSQLiteFullException;
      }
    }
    return mutate(paramUri, paramContentValues, paramString, paramArrayOfString, paramBoolean);
  }

  private long overwriteTimelineItemIfNeeded(SQLiteDatabase paramSQLiteDatabase, Uri paramUri, ContentValues paramContentValues)
  {
    long l1 = 0L;
    Uri localUri = Uri.withAppendedPath(TIMELINE_URI, paramContentValues.getAsString("_id"));
    Cursor localCursor = null;
    try
    {
      localCursor = queryInternal(localUri, new String[] { "modified_time", "is_deleted" }, null, null, null, false);
      long l2;
      Long localLong;
      if (localCursor.moveToNext())
      {
        if (localCursor.getInt(localCursor.getColumnIndex("is_deleted")) > 0)
        {
          FormattingLogger localFormattingLogger4 = logger;
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = paramContentValues.getAsString("_id");
          localFormattingLogger4.i("Insert ignored for timeline item %s because it is already deleted", arrayOfObject4);
          return 1L;
        }
        Integer localInteger = paramContentValues.getAsInteger("is_deleted");
        if ((localInteger != null) && (localInteger.intValue() > 0))
        {
          long l3 = insertTimelineItemWithConflictAlgorithm(paramSQLiteDatabase, paramUri, paramContentValues, 5);
          FormattingLogger localFormattingLogger3 = logger;
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = paramContentValues.getAsString("_id");
          localFormattingLogger3.i("Overwrote timeline item %s because it is now deleted", arrayOfObject3);
          return l3;
        }
        l2 = localCursor.getLong(localCursor.getColumnIndex("modified_time"));
        localLong = paramContentValues.getAsLong("modified_time");
        if ((localLong == null) || (localLong.longValue() <= l2))
          break label326;
        l1 = insertTimelineItemWithConflictAlgorithm(paramSQLiteDatabase, paramUri, paramContentValues, 5);
        FormattingLogger localFormattingLogger2 = logger;
        Object[] arrayOfObject2 = new Object[3];
        arrayOfObject2[0] = paramContentValues.getAsString("_id");
        arrayOfObject2[1] = Long.valueOf(l2);
        arrayOfObject2[2] = localLong;
        localFormattingLogger2.i("Overwrote timeline item %s because existing modified time (%s) < new modified time (%s)", arrayOfObject2);
      }
      while (true)
      {
        return l1;
        label326: FormattingLogger localFormattingLogger1 = logger;
        Object[] arrayOfObject1 = new Object[3];
        arrayOfObject1[0] = paramContentValues.getAsString("_id");
        arrayOfObject1[1] = Long.valueOf(l2);
        arrayOfObject1[2] = localLong;
        localFormattingLogger1.i("Insert ignored for timeline item %s because existing modified time (%s) >= new modified time (%s)", arrayOfObject1);
        l1 = 1L;
      }
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  private Cursor queryInternal(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, boolean paramBoolean)
  {
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    SelectionBuilder localSelectionBuilder = new SelectionBuilder(paramString1, paramArrayOfString2);
    switch (uriMatcher.match(paramUri))
    {
    case 4:
    default:
      throw new IllegalArgumentException("Unable to query URI: " + paramUri);
    case 1:
      localSQLiteQueryBuilder.setTables("timeline");
      if (paramBoolean)
        addItemExpirationToQuery(localSelectionBuilder);
      break;
    case 5:
    case 2:
    case 3:
    }
    while (true)
    {
      Cursor localCursor = localSQLiteQueryBuilder.query(this.dbHelper.getReadableDatabase(), paramArrayOfString1, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments(), null, null, paramString2);
      localCursor.setNotificationUri(getContext().getContentResolver(), paramUri);
      return localCursor;
      localSQLiteQueryBuilder.setTables("timeline");
      continue;
      localSQLiteQueryBuilder.setTables("timeline");
      localSelectionBuilder.addSelection("_id=?", paramUri.getLastPathSegment());
      continue;
      localSQLiteQueryBuilder.setTables("pending_actions");
      localSelectionBuilder.addSelection("timeline_id=?", (String)paramUri.getPathSegments().get(-2 + paramUri.getPathSegments().size()));
    }
  }

  public int bulkInsert(Uri paramUri, ContentValues[] paramArrayOfContentValues)
  {
    int i = 0;
    SQLiteDatabase localSQLiteDatabase = this.dbHelper.getWritableDatabase();
    localSQLiteDatabase.beginTransaction();
    int j = 0;
    try
    {
      while (true)
      {
        int k = paramArrayOfContentValues.length;
        if (j < k)
          try
          {
            insertInternal(localSQLiteDatabase, paramUri, paramArrayOfContentValues[j]);
            i++;
            j++;
          }
          catch (SQLException localSQLException)
          {
            while (true)
            {
              FormattingLogger localFormattingLogger = logger;
              Object[] arrayOfObject = new Object[1];
              arrayOfObject[0] = paramArrayOfContentValues[j].get("_id");
              localFormattingLogger.e(localSQLException, "Failed to insert item %s", arrayOfObject);
            }
          }
      }
    }
    finally
    {
      localSQLiteDatabase.endTransaction();
    }
    localSQLiteDatabase.setTransactionSuccessful();
    localSQLiteDatabase.endTransaction();
    notifyChange(paramUri);
    return i;
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return mutate(paramUri, null, paramString, paramArrayOfString, true);
  }

  public String getType(Uri paramUri)
  {
    switch (uriMatcher.match(paramUri))
    {
    default:
      return null;
    case 1:
      return "vnd.android.cursor.dir/vnd.com.google.glass.timeline";
    case 2:
      return "vnd.android.cursor.item/vnd.com.google.glass.timeline";
    case 3:
    }
    return "vnd.android.cursor.dir/vnd.com.google.glass.timeline.pending_action";
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    Uri localUri = insertInternal(this.dbHelper.getWritableDatabase(), paramUri, paramContentValues);
    notifyChange(paramUri);
    return localUri;
  }

  @VisibleForTesting
  void notifyChange(Uri paramUri)
  {
    if (this.suppressCount > 0)
    {
      if (this.suppressedNotifyUri == null)
        this.suppressedNotifyUri = paramUri;
      while (this.suppressedNotifyUri.equals(paramUri))
        return;
      this.suppressedNotifyUri = TIMELINE_URI;
      return;
    }
    notifyChangeInternal(paramUri);
  }

  @VisibleForTesting
  void notifyChangeInternal(Uri paramUri)
  {
    getContext().getContentResolver().notifyChange(paramUri, null, false);
    getContext().getContentResolver().notifyChange(Uri.parse("com.google.glass.timeline"), null, false);
  }

  public boolean onCreate()
  {
    this.dbHelper = new DatabaseHelper(getContext());
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    return queryInternal(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, true);
  }

  public void startSuppressNotifyChange()
  {
    this.suppressCount = (1 + this.suppressCount);
  }

  public void stopSuppressNotifyChange()
  {
    this.suppressCount = (-1 + this.suppressCount);
    if (this.suppressCount >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if ((this.suppressCount == 0) && (this.suppressedNotifyUri != null))
      {
        Uri localUri = this.suppressedNotifyUri;
        this.suppressedNotifyUri = null;
        notifyChangeInternal(localUri);
      }
      return;
    }
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return mutate(paramUri, paramContentValues, paramString, paramArrayOfString, false);
  }

  private static class DatabaseHelper extends SQLiteOpenHelper
  {
    final Context context;

    DatabaseHelper(Context paramContext)
    {
      super("timeline.db", null, 26);
      this.context = paramContext;
    }

    private void createEntityTable(SQLiteDatabase paramSQLiteDatabase)
    {
      TimelineProvider.logger.i("Creating entity table.", new Object[0]);
      paramSQLiteDatabase.execSQL("CREATE TABLE entity (_id INTEGER PRIMARY KEY,entityId TEXT,entityType INTEGER,timelineId TEXT);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_entity_entityid ON entity(entityId);");
    }

    private void createPendingActionsTable(SQLiteDatabase paramSQLiteDatabase)
    {
      TimelineProvider.logger.i("Creating pending actions table.", new Object[0]);
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS pending_actions (_id INTEGER PRIMARY KEY AUTOINCREMENT,timeline_id TEXT NOT NULL,action_type INTEGER NOT NULL,payload TEXT);");
      paramSQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS ix_pending_actions_timeline_id ON pending_actions(timeline_id);");
      paramSQLiteDatabase.execSQL("CREATE TRIGGER IF NOT EXISTS t_pending_actions_delete_timeline_id DELETE ON timeline BEGIN DELETE FROM pending_actions WHERE timeline_id=old._id; END");
    }

    private void createTimelineTable(SQLiteDatabase paramSQLiteDatabase)
    {
      TimelineProvider.logger.i("Creating timeline table.", new Object[0]);
      paramSQLiteDatabase.execSQL("CREATE TABLE timeline (_id TEXT PRIMARY KEY,creation_time INTEGER,modified_time INTEGER,display_time INTEGER,delivery_time INTEGER,expiration_time INTEGER,pin_time INTEGER DEFAULT -1,pin_score INTEGER DEFAULT 2147483647,is_deleted INTEGER DEFAULT 0,sync_status INTEGER DEFAULT 0,sync_protocol INTEGER DEFAULT 0,bundle_id TEXT DEFAULT \"\",bundle_cover_status INTEGER DEFAULT 0,source TEXT DEFAULT \"\",protobuf_blob BLOB);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_display_time ON timeline(display_time);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_delivery_time ON timeline(delivery_time);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_expiration_time ON timeline(expiration_time);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_pin_time ON timeline(pin_time);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_pin_score ON timeline(pin_score);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_is_deleted ON timeline(is_deleted);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_sync_status_sync_protocol ON timeline(sync_status, sync_protocol);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_bundle_id ON timeline(bundle_id);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_bundle_cover_status ON timeline(bundle_cover_status);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_timeline_source ON timeline(source);");
    }

    private void dropEntityTable(SQLiteDatabase paramSQLiteDatabase)
    {
      TimelineProvider.logger.i("Dropping entity table.", new Object[0]);
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS entity");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_entityid");
    }

    private void dropPendingActionsTable(SQLiteDatabase paramSQLiteDatabase)
    {
      TimelineProvider.logger.i("Dropping pending actions table.", new Object[0]);
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS pending_actions");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_pending_actions_timeline_id");
      paramSQLiteDatabase.execSQL("DROP TRIGGER IF EXISTS t_pending_actions_delete_timeline_id");
    }

    private void dropTimelineTable(SQLiteDatabase paramSQLiteDatabase)
    {
      TimelineProvider.logger.i("Dropping timeline table.", new Object[0]);
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS timeline");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_display_time");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_delivery_time");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_expiration_time");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_pin_time");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_pin_score");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_is_deleted");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_sync_status_sync_protocol");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_bundle_id");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_bundle_cover_status");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_timeline_source");
    }

    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      createTimelineTable(paramSQLiteDatabase);
      createPendingActionsTable(paramSQLiteDatabase);
      createEntityTable(paramSQLiteDatabase);
    }

    public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      FormattingLogger localFormattingLogger = TimelineProvider.logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      localFormattingLogger.w("Downgrading database from version %s to %s", arrayOfObject);
      dropTimelineTable(paramSQLiteDatabase);
      dropPendingActionsTable(paramSQLiteDatabase);
      dropEntityTable(paramSQLiteDatabase);
      onCreate(paramSQLiteDatabase);
    }

    public void onOpen(SQLiteDatabase paramSQLiteDatabase)
    {
      super.onOpen(paramSQLiteDatabase);
      paramSQLiteDatabase.enableWriteAheadLogging();
    }

    public void onUpgrade(final SQLiteDatabase paramSQLiteDatabase, final int paramInt1, final int paramInt2)
    {
      FormattingLogger localFormattingLogger = TimelineProvider.logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      localFormattingLogger.w("Upgrading database from version %s to %s", arrayOfObject);
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS temp_timeline");
      paramSQLiteDatabase.execSQL("ALTER TABLE timeline RENAME TO temp_timeline;");
      dropTimelineTable(paramSQLiteDatabase);
      createTimelineTable(paramSQLiteDatabase);
      dropEntityTable(paramSQLiteDatabase);
      createEntityTable(paramSQLiteDatabase);
      createPendingActionsTable(paramSQLiteDatabase);
      AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
      {
        private void migrate(SQLiteDatabase paramAnonymousSQLiteDatabase, String paramAnonymousString1, String paramAnonymousString2, String paramAnonymousString3)
        {
          TimelineProvider.logger.i("Migrating selection: %s", new Object[] { paramAnonymousString2 });
          Cursor localCursor = null;
          do
          {
            TimelineHelper localTimelineHelper;
            ArrayList localArrayList;
            try
            {
              localCursor = paramAnonymousSQLiteDatabase.query(paramAnonymousString1, null, paramAnonymousString2, null, null, null, paramAnonymousString3);
              if (localCursor == null)
              {
                TimelineProvider.logger.i("Migration query returned null cursor.", new Object[0]);
                return;
              }
              localTimelineHelper = new TimelineHelper();
              localArrayList = new ArrayList();
              int i = 0;
              int j = localCursor.getCount();
              while (localCursor.moveToNext())
              {
                localArrayList.add(TimelineHelper.fromCursor(localCursor));
                i++;
                if (localArrayList.size() >= 100)
                {
                  localTimelineHelper.bulkInsertTimelineItem(TimelineProvider.DatabaseHelper.this.context, localArrayList);
                  localArrayList.clear();
                  FormattingLogger localFormattingLogger = TimelineProvider.logger;
                  Object[] arrayOfObject = new Object[2];
                  arrayOfObject[0] = Integer.valueOf(i);
                  arrayOfObject[1] = Integer.valueOf(j);
                  localFormattingLogger.i("Have migrated %s of %s items.", arrayOfObject);
                }
              }
            }
            finally
            {
              if (localCursor != null)
                localCursor.close();
            }
            localTimelineHelper.bulkInsertTimelineItem(TimelineProvider.DatabaseHelper.this.context, localArrayList);
            localArrayList.clear();
            TimelineProvider.logger.i("Have migrated all items.", new Object[0]);
          }
          while (localCursor == null);
          localCursor.close();
        }

        public void run()
        {
          try
          {
            migrate(paramSQLiteDatabase, "temp_timeline", "sync_status!=1", null);
            migrate(paramSQLiteDatabase, "temp_timeline", "sync_status=1", "display_time DESC LIMIT 100");
            if ((paramInt1 < 25) && (paramInt2 == 25))
              CachedFilesManager.getSharedInstance().clearCache(CachedFilesManager.Type.PICTURE);
            if ((paramInt1 < 26) && (paramInt2 == 26))
              CachedFilesManager.getSharedInstance().trimToWithoutTimeout();
            return;
          }
          finally
          {
            paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS temp_timeline");
          }
        }
      });
    }
  }

  static final class EntityColumns
    implements BaseColumns
  {
    public static final String ENTITY_ID = "entityId";
    public static final String ENTITY_TYPE = "entityType";
    public static final int ENTITY_TYPE_CREATOR = 1;
    public static final int ENTITY_TYPE_SHARE_TARGET = 2;
    public static final String TIMELINE_ID = "timelineId";
  }

  static final class PendingActionColumns
    implements BaseColumns
  {
    public static final String ACTION_TYPE = "action_type";
    public static final String PAYLOAD = "payload";
    public static final String TIMELINE_ID = "timeline_id";
  }

  static final class TimelineColumns
    implements BaseColumns
  {
    public static final String BUNDLE_COVER_STATUS = "bundle_cover_status";
    public static final String BUNDLE_ID = "bundle_id";
    public static final String CLOUD_SYNC_PROTOCOL = "sync_protocol";
    public static final String CLOUD_SYNC_STATUS = "sync_status";
    public static final String CREATION_TIME = "creation_time";
    public static final String DELIVERY_TIME = "delivery_time";
    public static final String DISPLAY_TIME = "display_time";
    public static final String EXPIRATION_TIME = "expiration_time";
    public static final String IS_DELETED = "is_deleted";
    public static final String MODIFIED_TIME = "modified_time";
    public static final String PIN_SCORE = "pin_score";
    public static final String PIN_TIME = "pin_time";
    public static final String PROTOBUF_BLOB = "protobuf_blob";
    public static final String SOURCE = "source";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.TimelineProvider
 * JD-Core Version:    0.6.2
 */