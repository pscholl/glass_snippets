package com.google.glass.util;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Settings.NameValueTable;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;

public final class SettingsContract extends Settings.NameValueTable
{
  public static final String AUTHORITY = "com.google.glass.settings";
  public static final Uri CONTENT_URI = Uri.parse("content://com.google.glass.settings/system");
  public static final String TABLE_NAME = "system";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();

  public static final String getValue(Context paramContext, String paramString)
  {
    String[] arrayOfString1 = { "value" };
    String[] arrayOfString2 = { paramString };
    Cursor localCursor = null;
    try
    {
      ContentResolver localContentResolver = paramContext.getContentResolver();
      if (localContentResolver == null)
        if (0 != 0)
          null.close();
      do
      {
        return null;
        ContentProviderClient localContentProviderClient = localContentResolver.acquireContentProviderClient(CONTENT_URI);
        if (localContentProviderClient != null)
          break;
      }
      while (0 == 0);
      null.close();
      return null;
      localCursor = localContentResolver.query(CONTENT_URI, arrayOfString1, "name =?", arrayOfString2, null);
      localObject2 = null;
      if (localCursor != null)
      {
        boolean bool = localCursor.moveToFirst();
        localObject2 = null;
        if (bool)
        {
          String str = localCursor.getString(localCursor.getColumnIndex("value"));
          localObject2 = str;
        }
      }
      return localObject2;
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
      {
        logger.w(localRuntimeException, "RuntimeException accessing " + CONTENT_URI, new Object[0]);
        Object localObject2 = null;
        if (localCursor != null)
        {
          localCursor.close();
          localObject2 = null;
        }
      }
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public static final boolean updateOrInsert(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      ContentResolver localContentResolver = paramContext.getContentResolver();
      boolean bool = false;
      if (localContentResolver == null);
      while (true)
      {
        return bool;
        ContentProviderClient localContentProviderClient = localContentResolver.acquireContentProviderClient(CONTENT_URI);
        bool = false;
        if (localContentProviderClient != null)
        {
          ContentValues localContentValues = new ContentValues();
          localContentValues.put("name", paramString1);
          localContentValues.put("value", paramString2);
          Uri localUri = localContentResolver.insert(CONTENT_URI, localContentValues);
          bool = false;
          if (localUri != null)
            bool = true;
        }
      }
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.SettingsContract
 * JD-Core Version:    0.6.2
 */