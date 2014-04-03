package com.google.glass.logging.audio;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.provider.BaseColumns;
import android.util.Log;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class SavedAudioDatabaseHelper extends SQLiteOpenHelper
{
  private static final String SAVED_AUDIO_TABLE_CREATE_STATEMENT = "CREATE TABLE saved_audio (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, filename TEXT, is_recognized INTEGER DEFAULT 0, is_synced INTEGER DEFAULT 0, timestamp LONG, recognized_commands TEXT, sample_rate LONG);";
  private static final String SAVED_AUDIO_TABLE_NAME = "saved_audio";
  private static final String TAG = SavedAudioDatabaseHelper.class.getSimpleName();
  private static final int VERSION = 3;

  public SavedAudioDatabaseHelper(Context paramContext)
  {
    super(paramContext, "saved_audio", null, 3);
  }

  private static String booleanClause(boolean paramBoolean, String paramString, Boolean paramBoolean1)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    String str1;
    StringBuilder localStringBuilder2;
    if (paramBoolean)
    {
      str1 = "";
      localStringBuilder2 = localStringBuilder1.append(str1).append(paramString).append("=");
      if (!paramBoolean1.booleanValue())
        break label62;
    }
    label62: for (String str2 = "1"; ; str2 = "0")
    {
      return str2;
      str1 = " AND ";
      break;
    }
  }

  private List<SavedAudioRecord> listRestricted(Boolean paramBoolean1, Boolean paramBoolean2)
  {
    ArrayList localArrayList = Lists.newArrayList();
    Cursor localCursor = null;
    do
      try
      {
        localCursor = getWritableDatabase().query("saved_audio", Columns.FULL_PROJECTION, whereProperties(paramBoolean1, paramBoolean2), null, null, null, "timestamp ASC");
        boolean bool = localCursor.moveToFirst();
        if (!bool)
          return localArrayList;
        while (!localCursor.isAfterLast())
        {
          localArrayList.add(SavedAudioRecord.fromCursor(localCursor));
          localCursor.moveToNext();
        }
      }
      finally
      {
        if (localCursor != null)
          localCursor.close();
      }
    while (localCursor == null);
    localCursor.close();
    return localArrayList;
  }

  private static String whereIdIs(long paramLong)
  {
    return "_id=" + paramLong;
  }

  private static String whereProperties(Boolean paramBoolean1, Boolean paramBoolean2)
  {
    boolean bool = true;
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramBoolean1 != null)
    {
      localStringBuilder.append(booleanClause(bool, "is_recognized", paramBoolean1));
      bool = false;
    }
    if (paramBoolean2 != null)
    {
      localStringBuilder.append(booleanClause(bool, "is_synced", paramBoolean2));
      bool = false;
    }
    if (bool)
      return null;
    return localStringBuilder.toString();
  }

  public void delete(SavedAudioRecord paramSavedAudioRecord)
  {
    getWritableDatabase().delete("saved_audio", whereIdIs(paramSavedAudioRecord.getId()), null);
  }

  public void deleteAll(Collection<SavedAudioRecord> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
      delete((SavedAudioRecord)localIterator.next());
  }

  public void insert(SavedAudioRecord paramSavedAudioRecord)
  {
    getWritableDatabase().insert("saved_audio", null, paramSavedAudioRecord.toContentValues());
  }

  public List<SavedAudioRecord> list()
  {
    return listRestricted(null, null);
  }

  public List<SavedAudioRecord> list(boolean paramBoolean1, boolean paramBoolean2)
  {
    return listRestricted(Boolean.valueOf(paramBoolean1), Boolean.valueOf(paramBoolean2));
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE saved_audio (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, filename TEXT, is_recognized INTEGER DEFAULT 0, is_synced INTEGER DEFAULT 0, timestamp LONG, recognized_commands TEXT, sample_rate LONG);");
  }

  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Log.w(TAG, "Downgrading database from version " + paramInt1 + " to " + paramInt2);
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS saved_audio");
    onCreate(paramSQLiteDatabase);
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Log.w(TAG, "Upgrading database from version " + paramInt1 + " to " + paramInt2);
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS saved_audio");
    onCreate(paramSQLiteDatabase);
  }

  public void update(SavedAudioRecord paramSavedAudioRecord)
  {
    getWritableDatabase().update("saved_audio", paramSavedAudioRecord.toContentValues(), whereIdIs(paramSavedAudioRecord.getId()), null);
  }

  static class Columns
    implements BaseColumns
  {
    static final String FILENAME = "filename";
    private static final String[] FULL_PROJECTION = { "_id", "filename", "is_recognized", "is_synced", "timestamp", "recognized_commands", "sample_rate" };
    static final String IS_RECOGNIZED = "is_recognized";
    static final String IS_SYNCED = "is_synced";
    static final String RECOGNIZED_COMMANDS = "recognized_commands";
    static final String SAMPLE_RATE = "sample_rate";
    static final String TIMESTAMP = "timestamp";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.audio.SavedAudioDatabaseHelper
 * JD-Core Version:    0.6.2
 */