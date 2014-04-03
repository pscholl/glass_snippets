package com.google.android.speech.embedded;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Joiner;
import com.google.common.base.Joiner.MapJoiner;
import com.google.common.collect.Maps;
import java.util.HashMap;
import java.util.Map;

public class Greco3Preferences
{
  private static final Joiner.MapJoiner ACTIVE_DOWNLOADS_JOINER = Joiner.on(',').withKeyValueSeparator(":");
  public static final String COMPILED_APK_GRAMMAR_REVISION_PREFIX = "g3_apk_grammar_revision_id_v1:";
  public static final String PREF_ACTIVE_DOWNLOADS = "g3_active_downloads";
  private static final String TAG = "VS.G3Preferences";
  private final SharedPreferences mSharedPreferences;

  public Greco3Preferences(SharedPreferences paramSharedPreferences)
  {
    this.mSharedPreferences = paramSharedPreferences;
  }

  @VisibleForTesting
  public static HashMap<String, Long> buildHashMapFromDelimitedKeyValuePairs(String paramString)
  {
    HashMap localHashMap = Maps.newHashMap();
    String[] arrayOfString1 = paramString.split(",");
    int i = arrayOfString1.length;
    int j = 0;
    if (j < i)
    {
      String str = arrayOfString1[j].trim();
      if (TextUtils.isEmpty(str));
      while (true)
      {
        j++;
        break;
        String[] arrayOfString2 = str.split(":");
        if (arrayOfString2.length != 2)
          Log.e("VS.G3Preferences", "Skipping bad value in active downloads setting pref :" + str);
        else
          try
          {
            Long localLong = Long.valueOf(Long.parseLong(arrayOfString2[1]));
            localHashMap.put(arrayOfString2[0], localLong);
          }
          catch (NumberFormatException localNumberFormatException)
          {
            Log.e("VS.G3Preferences", "Skipping bad value in active downloads pref: " + str);
          }
      }
    }
    return localHashMap;
  }

  @VisibleForTesting
  static String serializeHashMapToDelimitedKeyValuePairs(Map<String, Long> paramMap)
  {
    return ACTIVE_DOWNLOADS_JOINER.join(paramMap);
  }

  private void writeToSharedPrefs(String paramString1, String paramString2)
  {
    this.mSharedPreferences.edit().putString(paramString1, paramString2).apply();
  }

  public void addActiveDownload(String paramString, long paramLong)
  {
    HashMap localHashMap;
    try
    {
      localHashMap = getActiveDownloads();
      if (localHashMap.containsKey(paramString))
        throw new IllegalStateException("Attempt to add download :" + paramString + ", was already active.");
    }
    finally
    {
    }
    localHashMap.put(paramString, Long.valueOf(paramLong));
    writeToSharedPrefs("g3_active_downloads", serializeHashMapToDelimitedKeyValuePairs(localHashMap));
  }

  public HashMap<String, Long> getActiveDownloads()
  {
    try
    {
      HashMap localHashMap = buildHashMapFromDelimitedKeyValuePairs(this.mSharedPreferences.getString("g3_active_downloads", ""));
      return localHashMap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getCompiledGrammarRevisionId(Greco3Grammar paramGreco3Grammar)
  {
    String str = "g3_apk_grammar_revision_id_v1:" + paramGreco3Grammar.getDirectoryName();
    return this.mSharedPreferences.getString(str, null);
  }

  public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    this.mSharedPreferences.registerOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }

  public void removeActiveDownload(String paramString)
  {
    try
    {
      HashMap localHashMap = getActiveDownloads();
      if (!localHashMap.containsKey(paramString))
        Log.w("VS.G3Preferences", "Attempt to remove non-existent download" + paramString);
      while (true)
      {
        return;
        localHashMap.remove(paramString);
        writeToSharedPrefs("g3_active_downloads", serializeHashMapToDelimitedKeyValuePairs(localHashMap));
      }
    }
    finally
    {
    }
  }

  public void setCompiledGrammarRevisionId(Greco3Grammar paramGreco3Grammar, String paramString)
  {
    String str = "g3_apk_grammar_revision_id_v1:" + paramGreco3Grammar.getDirectoryName();
    this.mSharedPreferences.edit().putString(str, paramString).apply();
  }

  public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener paramOnSharedPreferenceChangeListener)
  {
    this.mSharedPreferences.unregisterOnSharedPreferenceChangeListener(paramOnSharedPreferenceChangeListener);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.Greco3Preferences
 * JD-Core Version:    0.6.2
 */