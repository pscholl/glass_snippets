package com.google.android.speech.embedded;

import com.google.wireless.voicesearch.proto.GstaticConfiguration.LanguagePack;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class LanguagePackUtils
{
  public static String buildDownloadFilename(GstaticConfiguration.LanguagePack paramLanguagePack)
  {
    return paramLanguagePack.getLanguagePackId() + ".zip";
  }

  public static GstaticConfiguration.LanguagePack findById(GstaticConfiguration.LanguagePack paramLanguagePack, List<GstaticConfiguration.LanguagePack> paramList)
  {
    return findById(paramLanguagePack.getLanguagePackId(), paramList);
  }

  public static GstaticConfiguration.LanguagePack findById(String paramString, List<GstaticConfiguration.LanguagePack> paramList)
  {
    int i = paramList.size();
    for (int j = 0; j < i; j++)
    {
      GstaticConfiguration.LanguagePack localLanguagePack = (GstaticConfiguration.LanguagePack)paramList.get(j);
      if (localLanguagePack.getLanguagePackId().equals(paramString))
        return localLanguagePack;
    }
    return null;
  }

  public static ArrayList<GstaticConfiguration.LanguagePack> getInstallableLanguagePacks(List<GstaticConfiguration.LanguagePack> paramList, int[] paramArrayOfInt, int paramInt, Map<String, GstaticConfiguration.LanguagePack> paramMap)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      GstaticConfiguration.LanguagePack localLanguagePack1 = (GstaticConfiguration.LanguagePack)localIterator.next();
      if ((isCompatible(localLanguagePack1, paramArrayOfInt, paramInt)) && (!paramMap.containsKey(localLanguagePack1.getBcp47Locale())))
      {
        GstaticConfiguration.LanguagePack localLanguagePack2 = (GstaticConfiguration.LanguagePack)localHashMap.get(localLanguagePack1.getBcp47Locale());
        if ((localLanguagePack2 == null) || (localLanguagePack2.getVersion() < localLanguagePack1.getVersion()))
          localHashMap.put(localLanguagePack1.getBcp47Locale(), localLanguagePack1);
      }
    }
    ArrayList localArrayList = new ArrayList(localHashMap.size());
    localArrayList.addAll(localHashMap.values());
    return localArrayList;
  }

  public static boolean isCompatible(GstaticConfiguration.LanguagePack paramLanguagePack, int[] paramArrayOfInt, int paramInt)
  {
    int i = paramLanguagePack.getLanguagePackFormatVersionCount();
    if (i == 0)
      return false;
    int j = paramLanguagePack.getLanguagePackFormatVersion(i - 1);
    for (int k = 0; ; k++)
    {
      int m = paramArrayOfInt.length;
      int n = 0;
      if (k < m)
      {
        if (paramArrayOfInt[k] == j)
          n = 1;
      }
      else
      {
        int i1;
        if (paramInt < paramLanguagePack.getMinimumDeviceClass())
        {
          boolean bool = paramLanguagePack.hasMinimumDeviceClass();
          i1 = 0;
          if (bool);
        }
        else
        {
          i1 = 1;
        }
        if ((i1 == 0) || (n == 0))
          break;
        return true;
      }
    }
  }

  public static GstaticConfiguration.LanguagePack isUpgradeable(GstaticConfiguration.LanguagePack paramLanguagePack, List<GstaticConfiguration.LanguagePack> paramList, int[] paramArrayOfInt, int paramInt)
  {
    paramLanguagePack.getBcp47Locale();
    Object localObject = null;
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      GstaticConfiguration.LanguagePack localLanguagePack = (GstaticConfiguration.LanguagePack)localIterator.next();
      if ((isCompatible(localLanguagePack, paramArrayOfInt, paramInt)) && (localLanguagePack.getBcp47Locale().equals(paramLanguagePack.getBcp47Locale())) && (localLanguagePack.getVersion() > paramLanguagePack.getVersion()) && ((localObject == null) || (localObject.getVersion() < localLanguagePack.getVersion())))
        localObject = localLanguagePack;
    }
    return localObject;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.embedded.LanguagePackUtils
 * JD-Core Version:    0.6.2
 */