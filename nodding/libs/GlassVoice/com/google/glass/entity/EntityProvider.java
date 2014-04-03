package com.google.glass.entity;

import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.BaseColumns;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.predicates.Assert;
import com.google.glass.util.Clock;
import com.google.glass.util.Clock.Impl;
import com.google.glass.util.SelectionBuilder;
import com.google.glass.util.SettingsHelper;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public class EntityProvider extends ContentProvider
{
  public static final String AUTHORITY = "com.google.glass.entity";
  private static final Uri BASE_URI;
  private static final String DATABASE_NAME = "entity.db";
  private static final int DATABASE_VERSION = 12;
  private static final String ENTITY_EMAIL_INDEX = "ix_entity_email";
  private static final String ENTITY_IS_COMMUNICATION_TARGET_INDEX = "ix_entity_is_communication_target";
  private static final String ENTITY_IS_SHARE_TARGET_INDEX = "ix_entity_is_share_target";
  private static final String ENTITY_PHONE_NUMBER_INDEX = "ix_entity_phone_number";

  @Deprecated
  private static final String ENTITY_SHOULD_SYNC_INDEX = "ix_entity_should_sync";
  private static final String ENTITY_SOURCE_INDEX = "ix_entity_source";
  private static final String ENTITY_TABLE = "entity";
  private static final String ENTITY_TYPE = "vnd.com.google.glass.entity";
  private static final int INCREMENT_SHARE_COUNT = 3;
  private static final String INCREMENT_SHARE_COUNT_PATH = "incrementShare";
  private static final boolean LOG_QUERY = false;
  private static final int MATCH_ENTITY = 1;
  private static final int MATCH_ENTITY_BY_ID = 2;
  public static final long RECENT_ENTITIES_INTERVAL_MILLIS_CUTOFF = 0L;
  public static final int TYPE_GROUP = 0;
  public static final int TYPE_INDIVIDUAL = 1;
  public static final Uri URI;
  public static final String URI_PARAM_GROUP_BY = "groupBy";
  public static final String URI_PARAM_LIMIT = "limit";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static final UriMatcher uriMatcher;
  private Clock clock;
  private DatabaseHelper dbHelper;
  private SettingsHelper settingsHelper;
  private boolean suppressUpdates;

  static
  {
    BASE_URI = new Uri.Builder().scheme("content").authority("com.google.glass.entity").build();
    URI = BASE_URI.buildUpon().appendPath("entity").build();
    uriMatcher = new UriMatcher(-1);
    uriMatcher.addURI("com.google.glass.entity", "entity", 1);
    uriMatcher.addURI("com.google.glass.entity", "entity/*", 2);
    uriMatcher.addURI("com.google.glass.entity", "incrementShare", 3);
  }

  public static Uri getAllEntitiesUri()
  {
    Uri.Builder localBuilder = URI.buildUpon();
    localBuilder.appendQueryParameter("groupBy", "ifnull(obfuscated_gaia_id, \"FGID\" || _id)");
    return localBuilder.build();
  }

  public static boolean incrementShareCount(ContentResolver paramContentResolver, TimelineNano.Entity paramEntity)
  {
    String str1 = paramEntity.id;
    String str2 = paramEntity.source;
    Assert.assertNotUiThread();
    Assert.assertFalse(TextUtils.isEmpty(str1));
    Assert.assertFalse(TextUtils.isEmpty(str2));
    return paramContentResolver.update(BASE_URI.buildUpon().appendPath("incrementShare").build(), null, "_id=? AND source=?", new String[] { str1, str2 }) > 0;
  }

  // ERROR //
  private int mutate(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 193	com/google/glass/entity/EntityProvider:dbHelper	Lcom/google/glass/entity/EntityProvider$DatabaseHelper;
    //   4: invokevirtual 199	com/google/glass/entity/EntityProvider$DatabaseHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore 6
    //   9: new 201	com/google/glass/util/SelectionBuilder
    //   12: dup
    //   13: aload_3
    //   14: aload 4
    //   16: invokespecial 204	com/google/glass/util/SelectionBuilder:<init>	(Ljava/lang/String;[Ljava/lang/String;)V
    //   19: astore 7
    //   21: getstatic 125	com/google/glass/entity/EntityProvider:uriMatcher	Landroid/content/UriMatcher;
    //   24: aload_1
    //   25: invokevirtual 208	android/content/UriMatcher:match	(Landroid/net/Uri;)I
    //   28: tableswitch	default:+28 -> 56, 1:+55->83, 2:+96->124, 3:+114->142
    //   57: nop
    //   58: <illegal opcode>
    //   59: dup
    //   60: new 212	java/lang/StringBuilder
    //   63: dup
    //   64: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   67: ldc 215
    //   69: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: aload_1
    //   73: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokespecial 229	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   82: athrow
    //   83: ldc 38
    //   85: astore 8
    //   87: iload 5
    //   89: ifeq +271 -> 360
    //   92: aload 6
    //   94: aload 8
    //   96: aload 7
    //   98: invokevirtual 232	com/google/glass/util/SelectionBuilder:getSelection	()Ljava/lang/String;
    //   101: aload 7
    //   103: invokevirtual 236	com/google/glass/util/SelectionBuilder:getArguments	()[Ljava/lang/String;
    //   106: invokevirtual 242	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   109: istore 15
    //   111: iload 15
    //   113: ifle +8 -> 121
    //   116: aload_0
    //   117: aload_1
    //   118: invokespecial 246	com/google/glass/entity/EntityProvider:notifyChange	(Landroid/net/Uri;)V
    //   121: iload 15
    //   123: ireturn
    //   124: ldc 38
    //   126: astore 8
    //   128: aload 7
    //   130: ldc 248
    //   132: aload_1
    //   133: invokevirtual 251	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   136: invokevirtual 255	com/google/glass/util/SelectionBuilder:addSelection	(Ljava/lang/String;Ljava/lang/String;)V
    //   139: goto -52 -> 87
    //   142: iload 5
    //   144: ifeq +31 -> 175
    //   147: new 210	java/lang/IllegalArgumentException
    //   150: dup
    //   151: new 212	java/lang/StringBuilder
    //   154: dup
    //   155: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   158: ldc_w 257
    //   161: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: aload_1
    //   165: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   168: invokevirtual 226	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   171: invokespecial 229	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   174: athrow
    //   175: ldc 38
    //   177: astore 8
    //   179: aload 6
    //   181: aload 8
    //   183: iconst_1
    //   184: anewarray 183	java/lang/String
    //   187: dup
    //   188: iconst_0
    //   189: ldc_w 259
    //   192: aastore
    //   193: aload 7
    //   195: invokevirtual 232	com/google/glass/util/SelectionBuilder:getSelection	()Ljava/lang/String;
    //   198: aload 7
    //   200: invokevirtual 236	com/google/glass/util/SelectionBuilder:getArguments	()[Ljava/lang/String;
    //   203: aconst_null
    //   204: aconst_null
    //   205: aconst_null
    //   206: invokevirtual 263	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   209: astore 9
    //   211: aload 9
    //   213: ifnonnull +49 -> 262
    //   216: getstatic 87	com/google/glass/entity/EntityProvider:logger	Lcom/google/glass/logging/FormattingLogger;
    //   219: astore 16
    //   221: iconst_2
    //   222: anewarray 265	java/lang/Object
    //   225: astore 17
    //   227: aload 17
    //   229: iconst_0
    //   230: aload 7
    //   232: invokevirtual 232	com/google/glass/util/SelectionBuilder:getSelection	()Ljava/lang/String;
    //   235: aastore
    //   236: aload 17
    //   238: iconst_1
    //   239: aload 7
    //   241: invokevirtual 236	com/google/glass/util/SelectionBuilder:getArguments	()[Ljava/lang/String;
    //   244: invokestatic 270	java/util/Arrays:toString	([Ljava/lang/Object;)Ljava/lang/String;
    //   247: aastore
    //   248: aload 16
    //   250: ldc_w 272
    //   253: aload 17
    //   255: invokeinterface 278 3 0
    //   260: iconst_0
    //   261: ireturn
    //   262: aload 9
    //   264: invokeinterface 284 1 0
    //   269: istore 11
    //   271: iload 11
    //   273: ifne +12 -> 285
    //   276: aload 9
    //   278: invokeinterface 287 1 0
    //   283: iconst_0
    //   284: ireturn
    //   285: new 289	android/content/ContentValues
    //   288: dup
    //   289: invokespecial 290	android/content/ContentValues:<init>	()V
    //   292: astore 12
    //   294: aload 12
    //   296: ldc_w 259
    //   299: iconst_1
    //   300: aload 9
    //   302: iconst_0
    //   303: invokeinterface 294 2 0
    //   308: iadd
    //   309: invokestatic 300	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   312: invokevirtual 304	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   315: aload 12
    //   317: ldc_w 306
    //   320: aload_0
    //   321: getfield 308	com/google/glass/entity/EntityProvider:clock	Lcom/google/glass/util/Clock;
    //   324: invokeinterface 314 1 0
    //   329: invokestatic 319	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   332: invokevirtual 322	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   335: aload 9
    //   337: invokeinterface 287 1 0
    //   342: aload 12
    //   344: astore_2
    //   345: goto -258 -> 87
    //   348: astore 10
    //   350: aload 9
    //   352: invokeinterface 287 1 0
    //   357: aload 10
    //   359: athrow
    //   360: aload 7
    //   362: invokevirtual 232	com/google/glass/util/SelectionBuilder:getSelection	()Ljava/lang/String;
    //   365: astore 13
    //   367: aload 7
    //   369: invokevirtual 236	com/google/glass/util/SelectionBuilder:getArguments	()[Ljava/lang/String;
    //   372: astore 14
    //   374: aload 6
    //   376: aload 8
    //   378: aload_2
    //   379: aload 13
    //   381: aload 14
    //   383: invokevirtual 325	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   386: istore 15
    //   388: goto -277 -> 111
    //   391: astore 10
    //   393: goto -43 -> 350
    //
    // Exception table:
    //   from	to	target	type
    //   262	271	348	finally
    //   285	294	348	finally
    //   294	335	391	finally
  }

  private void notifyChange(Uri paramUri)
  {
    if (this.suppressUpdates)
      return;
    if (paramUri != null)
      getContext().getContentResolver().notifyChange(paramUri, null, false);
    getContext().getContentResolver().notifyChange(BASE_URI, null, false);
  }

  public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> paramArrayList)
    throws OperationApplicationException
  {
    Object localObject = null;
    int i = 0;
    int j = paramArrayList.size();
    ContentProviderResult[] arrayOfContentProviderResult = new ContentProviderResult[j];
    this.suppressUpdates = true;
    int k = 0;
    while (true)
      if (k < j)
        try
        {
          arrayOfContentProviderResult[k] = ((ContentProviderOperation)paramArrayList.get(k)).apply(this, arrayOfContentProviderResult, k);
          k++;
        }
        catch (OperationApplicationException localOperationApplicationException)
        {
          while (true)
          {
            i++;
            if (localObject == null)
              localObject = localOperationApplicationException;
          }
        }
    this.suppressUpdates = false;
    if (localObject != null)
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = Integer.valueOf(j);
      localFormattingLogger.d("applyBatch() failed on %s out of %s total operations.", arrayOfObject);
      throw localObject;
    }
    notifyChange(null);
    return arrayOfContentProviderResult;
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
      return "vnd.android.cursor.dir/vnd.com.google.glass.entity";
    case 2:
    }
    return "vnd.android.cursor.item/vnd.com.google.glass.entity";
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    switch (uriMatcher.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unable to insert into URI: " + paramUri);
    case 1:
    }
    try
    {
      long l = this.dbHelper.getWritableDatabase().insertWithOnConflict("entity", null, paramContentValues, 5);
      if (l > 0L)
      {
        notifyChange(paramUri);
        return URI.buildUpon().appendPath((String)paramContentValues.get("_id")).build();
      }
    }
    catch (SQLException localSQLException)
    {
      logger.e(localSQLException, "Exception inserting into entity DB", new Object[0]);
      return null;
    }
    throw new SQLException("Row not inserted for URI: " + paramUri);
  }

  public boolean onCreate()
  {
    this.dbHelper = new DatabaseHelper(getContext());
    this.clock = new Clock.Impl();
    this.settingsHelper = new SettingsHelper(getContext());
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    SelectionBuilder localSelectionBuilder = new SelectionBuilder(paramString1, paramArrayOfString2);
    switch (uriMatcher.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unable to query URI: " + paramUri);
    case 1:
      localSQLiteQueryBuilder.setTables("entity");
    case 2:
    }
    while (true)
    {
      String str1 = paramUri.getQueryParameter("limit");
      String str2 = paramUri.getQueryParameter("groupBy");
      Cursor localCursor = localSQLiteQueryBuilder.query(this.dbHelper.getReadableDatabase(), paramArrayOfString1, localSelectionBuilder.getSelection(), localSelectionBuilder.getArguments(), str2, null, paramString2, str1);
      localCursor.setNotificationUri(getContext().getContentResolver(), paramUri);
      return localCursor;
      localSQLiteQueryBuilder.setTables("entity");
      localSelectionBuilder.addSelection("_id=?", paramUri.getLastPathSegment());
    }
  }

  @VisibleForTesting
  protected void setClock(Clock paramClock)
  {
    this.clock = paramClock;
  }

  public void shutdown()
  {
    this.dbHelper.close();
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return mutate(paramUri, paramContentValues, paramString, paramArrayOfString, false);
  }

  public static final class Columns
    implements BaseColumns
  {
    public static final String DISPLAY_NAME = "display_name";
    public static final String EMAIL = "email";
    public static final String IMAGE_URL = "image_url";
    public static final String IS_COMMUNICATION_TARGET = "is_communication_target";
    public static final String IS_IN_MY_CONTACTS = "is_in_my_contacts";
    public static final String IS_SHARE_TARGET = "is_share_target";
    public static final String OBFUSCATED_GAIA_ID = "obfuscated_gaia_id";
    public static final String PHONE_NUMBER = "phone_number";
    public static final String PRIORITY = "share_priority";
    public static final String PROTOBUF_BLOB = "protobuf_blob";
    public static final String SECONDARY_PHONE_NUMBERS = "secondary_phone_numbers";
    public static final String SHARE_COUNT = "share_count";
    public static final String SHARE_TIME = "share_time";
    public static final String SOURCE = "source";
    public static final String TYPE = "type";
  }

  private static class DatabaseHelper extends SQLiteOpenHelper
  {
    private final Context context;

    DatabaseHelper(Context paramContext)
    {
      super("entity.db", null, 12);
      this.context = paramContext;
    }

    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE entity (_id TEXT,source TEXT,is_share_target INTEGER DEFAULT 0,is_communication_target INTEGER DEFAULT 0,share_priority INTEGER,share_count INTEGER DEFAULT 0,share_time INTEGER DEFAULT 0,phone_number TEXT,secondary_phone_numbers TEXT,email TEXT,display_name TEXT COLLATE NOCASE,image_url TEXT,type INTEGER DEFAULT NULL,obfuscated_gaia_id TEXT DEFAULT NULL,is_in_my_contacts INTEGER DEFAULT 0,protobuf_blob BLOB,PRIMARY KEY (_id,source));");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_entity_source ON entity(source);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_entity_is_share_target ON entity(is_share_target);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_entity_is_communication_target ON entity(is_communication_target);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_entity_phone_number ON entity(phone_number);");
      paramSQLiteDatabase.execSQL("CREATE INDEX ix_entity_email ON entity(email);");
    }

    public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      onUpgrade(paramSQLiteDatabase, paramInt1, paramInt2);
    }

    public void onOpen(SQLiteDatabase paramSQLiteDatabase)
    {
      super.onOpen(paramSQLiteDatabase);
      paramSQLiteDatabase.enableWriteAheadLogging();
    }

    public void onUpgrade(final SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      FormattingLogger localFormattingLogger = EntityProvider.logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      localFormattingLogger.w("Upgrading database from version %s to %s", arrayOfObject);
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS temp_entity");
      paramSQLiteDatabase.execSQL("ALTER TABLE entity RENAME TO temp_entity;");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS entity");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_source");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_is_share_target");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_is_communication_target");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_phone_number");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_email");
      paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS ix_entity_should_sync");
      onCreate(paramSQLiteDatabase);
      AsyncThreadExecutorManager.getThreadPoolExecutor().execute(new Runnable()
      {
        private void migrate()
        {
          Cursor localCursor = paramSQLiteDatabase.query("temp_entity", null, null, null, null, null, null);
          if (localCursor == null)
            EntityProvider.logger.d("Entity table migration query returned null cursor.", new Object[0]);
          while (true)
          {
            return;
            int i = 0;
            try
            {
              ContentValues[] arrayOfContentValues = new ContentValues[localCursor.getCount()];
              while ((localCursor.moveToNext()) || (i < arrayOfContentValues.length))
              {
                ContentValues localContentValues = EntityHelper.toContentValues(EntityHelper.fromCursor(localCursor));
                int j = localCursor.getInt(localCursor.getColumnIndex("share_count"));
                long l = localCursor.getLong(localCursor.getColumnIndex("share_time"));
                localContentValues.put("share_count", Integer.valueOf(j));
                localContentValues.put("share_time", Long.valueOf(l));
                arrayOfContentValues[i] = localContentValues;
                i++;
              }
              EntityProvider.DatabaseHelper.this.context.getContentResolver().bulkInsert(EntityProvider.URI, arrayOfContentValues);
              return;
            }
            finally
            {
              if (localCursor != null)
                localCursor.close();
            }
          }
        }

        public void run()
        {
          try
          {
            migrate();
            return;
          }
          finally
          {
            paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS temp_entity");
          }
        }
      });
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.EntityProvider
 * JD-Core Version:    0.6.2
 */