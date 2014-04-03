package com.x.google.common;

import com.x.google.common.io.IoUtil;
import com.x.google.common.util.text.TextUtil;
import com.x.google.debug.DebugUtil;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class I18n
{
  private static final int RESOURCE_SIGNATURE_AND_VERSION = 64178;
  private static String STRING_RESOURCE = "/strings.dat";
  private static I18n instance = null;
  private String[] embeddedLocalizedStrings = null;
  private String[] remoteLocalizedStrings = null;
  private String systemLanguage;
  private String systemLocale;
  private String uiLanguage;
  private String uiLocale;

  I18n(String paramString)
  {
    setSystemLocale(calculateSystemLocale(paramString));
    setUiLocale(locale());
  }

  private static String calculateSystemLocale(String paramString)
  {
    String str1 = normalizeLocale(paramString);
    String str2 = normalizeLocale(System.getProperty("microedition.locale"));
    if (("en".equals(str2)) || ((str2.length() == 2) && (str1.startsWith(str2))))
      str2 = str1;
    return str2;
  }

  public static String embed(int paramInt)
  {
    return getInstance().getEmbeddedLocalizedString(paramInt);
  }

  public static String embed(String paramString)
  {
    return "<" + paramString + ">";
  }

  public static String get(int paramInt)
  {
    return getInstance().getRemoteLocalizedString(paramInt);
  }

  public static String get(String paramString)
  {
    return "<" + paramString + ">";
  }

  public static String getBestLocaleMatch(String paramString, String[] paramArrayOfString)
  {
    String str1 = optimizeLocale(paramString);
    String str2 = getLanguage(str1);
    int i = -1;
    int j = 0;
    int k = 0;
    if (k < paramArrayOfString.length)
    {
      String str3 = paramArrayOfString[k];
      if (k == 0);
      for (boolean bool = true; ; bool = false)
      {
        int m = getLocaleMatchLevel(str1, str2, str3, bool);
        if (m > i)
        {
          i = m;
          j = k;
        }
        k++;
        break;
      }
    }
    return paramArrayOfString[j];
  }

  public static String getCountry(String paramString)
  {
    int i = indexOfLocaleSeparator(paramString);
    if (i < 0)
      return null;
    String str = paramString.substring(i + 1);
    int j = indexOfLocaleSeparator(str);
    if (j >= 0)
      str = str.substring(0, j);
    if (str.length() > 0);
    while (true)
    {
      return str;
      str = null;
    }
  }

  private static I18n getInstance()
  {
    if (instance == null)
      throw new IllegalStateException("I18n must be initialized");
    return instance;
  }

  public static String getLanguage(String paramString)
  {
    int i = indexOfLocaleSeparator(paramString);
    if (i < 0)
      return paramString;
    return paramString.substring(0, i);
  }

  private static int getLocaleMatchLevel(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    if (paramString1.equals(paramString3))
      return 4;
    if (paramString1.startsWith(paramString3))
      return 3;
    if (paramString3.startsWith(paramString2))
      return 2;
    if (paramBoolean)
      return 1;
    return 0;
  }

  private static int indexOfLocaleSeparator(String paramString)
  {
    int i = paramString.indexOf('_');
    int j = paramString.indexOf('-');
    if (i < 0)
      i = j;
    while ((j < 0) || (i < j))
      return i;
    return j;
  }

  public static I18n init(String paramString)
  {
    instance = new I18n(paramString);
    return instance;
  }

  public static String locale()
  {
    return DebugUtil.getAntPropertyOrNull("en");
  }

  public static String normalizeLocale(String paramString)
  {
    String str = "en";
    if (paramString != null)
    {
      String[] arrayOfString = TextUtil.split(paramString.replace('-', '_'), '_');
      if ((arrayOfString[0].length() == 2) || (arrayOfString[0].length() == 3))
      {
        str = arrayOfString[0].toLowerCase();
        if ((arrayOfString.length >= 2) && (arrayOfString[1].length() == 2))
          str = str + "_" + arrayOfString[1].toUpperCase();
      }
    }
    return str;
  }

  private static String optimizeLocale(String paramString)
  {
    if (paramString == null)
      paramString = "en";
    do
    {
      return paramString;
      if ((paramString.equals("en_AU")) || (paramString.equals("en_NZ")))
        return "en_GB";
    }
    while (!paramString.startsWith("nb"));
    return "no";
  }

  void forceUiLocaleForTesting(String paramString)
  {
    if (paramString != null);
    for (String str = normalizeLocale(paramString); ; str = this.systemLocale)
    {
      this.uiLocale = str;
      return;
    }
  }

  public String getEmbeddedLocalizedString(int paramInt)
  {
    if (this.embeddedLocalizedStrings != null)
      return this.embeddedLocalizedStrings[paramInt];
    return "";
  }

  public String getRemoteLocalizedString(int paramInt)
  {
    if (this.remoteLocalizedStrings != null)
      return this.remoteLocalizedStrings[paramInt];
    return "";
  }

  public String getSystemLanguage()
  {
    return this.systemLanguage;
  }

  public String getSystemLocale()
  {
    return this.systemLocale;
  }

  public String getUiLanguage()
  {
    return this.uiLanguage;
  }

  public String getUiLocale()
  {
    return this.uiLocale;
  }

  public boolean isRTL()
  {
    return (this.uiLanguage.equals("ar")) || (this.uiLocale.equals("ar")) || (this.uiLanguage.equals("fa")) || (this.uiLocale.equals("fa")) || (this.uiLanguage.equals("he")) || (this.uiLocale.equals("he"));
  }

  public boolean isRemoteLocalizedStringsLoaded()
  {
    return this.remoteLocalizedStrings != null;
  }

  public String[] loadStringResources(String paramString)
  {
    String str = optimizeLocale(paramString);
    InputStream localInputStream = getClass().getResourceAsStream(STRING_RESOURCE);
    if (localInputStream == null)
      throw new RuntimeException("Missing " + STRING_RESOURCE);
    try
    {
      String[] arrayOfString = loadStringResourcesFromInputStream(str, localInputStream, true);
      return arrayOfString;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(STRING_RESOURCE + ": " + localIOException.getMessage());
    }
    finally
    {
      IoUtil.closeInputStream(localInputStream);
    }
  }

  public String[] loadStringResourcesFromDataInput(String paramString, DataInput paramDataInput, boolean paramBoolean)
    throws IOException
  {
    String str1 = optimizeLocale(paramString).toLowerCase();
    String str2 = getLanguage(str1);
    if (paramDataInput == null)
      throw new IOException("data input is null");
    if (paramDataInput.readUnsignedShort() != 64178)
      throw new IOException("Bum string resources signature");
    Object localObject1 = null;
    int i = paramDataInput.readUnsignedShort();
    int j = paramDataInput.readUnsignedShort();
    int k;
    int m;
    int n;
    int i2;
    boolean bool;
    label127: int i4;
    Object localObject2;
    if ((j > 0) && (i > 0))
    {
      k = -1;
      m = 0;
      n = 0;
      if (n < j)
      {
        String str3 = paramDataInput.readUTF();
        String str4 = str3.toLowerCase();
        i2 = paramDataInput.readInt();
        if (n == 0)
        {
          bool = true;
          int i3 = getLocaleMatchLevel(str1, str2, str4, bool);
          if (i3 <= k)
            break label258;
          i4 = i3;
          localObject2 = str3;
        }
      }
    }
    while (true)
    {
      n++;
      localObject1 = localObject2;
      k = i4;
      m = i2;
      break;
      bool = false;
      break label127;
      if (k == -1)
        throw new IOException("Empty string resources");
      IoUtil.skipBytes(paramDataInput, m);
      String[] arrayOfString = new String[i];
      int i1 = 0;
      while (i1 < i)
      {
        arrayOfString[i1] = paramDataInput.readUTF();
        i1++;
        continue;
        throw new IOException("Bum string resources");
      }
      if (paramBoolean)
        this.uiLocale = localObject1;
      return arrayOfString;
      label258: i2 = m;
      localObject2 = localObject1;
      i4 = k;
    }
  }

  public String[] loadStringResourcesFromInputStream(String paramString, InputStream paramInputStream, boolean paramBoolean)
    throws IOException
  {
    if (paramInputStream == null)
      throw new IOException("resourceInputStream is null");
    return loadStringResourcesFromDataInput(paramString, new DataInputStream(paramInputStream), paramBoolean);
  }

  public void setRemoteLocalizedStrings(String[] paramArrayOfString)
  {
    this.remoteLocalizedStrings = paramArrayOfString;
  }

  public void setSystemLocale(String paramString)
  {
    this.systemLocale = normalizeLocale(paramString);
    int i = this.systemLocale.indexOf('_');
    if (i < 0);
    for (String str = this.systemLocale; ; str = this.systemLocale.substring(0, i))
    {
      this.systemLanguage = str;
      return;
    }
  }

  public void setUiLocale(String paramString)
  {
    if (paramString != null);
    for (String str = normalizeLocale(paramString); ; str = this.systemLocale)
    {
      this.uiLocale = str;
      this.uiLanguage = getLanguage(this.uiLocale);
      return;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.I18n
 * JD-Core Version:    0.6.2
 */