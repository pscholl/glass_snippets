package com.google.i18n.phonenumbers;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

class MetadataManager
{
  private static final String ALTERNATE_FORMATS_FILE_PREFIX = "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto";
  private static final Logger LOGGER = Logger.getLogger(MetadataManager.class.getName());
  private static final String SHORT_NUMBER_METADATA_FILE_PREFIX = "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto";
  private static final Map<Integer, Phonemetadata.PhoneMetadata> callingCodeToAlternateFormatsMap = Collections.synchronizedMap(new HashMap());
  private static final Set<Integer> countryCodeSet = AlternateFormatsCountryCodeSet.getCountryCodeSet();
  private static final Set<String> regionCodeSet = ShortNumbersRegionCodeSet.getRegionCodeSet();
  private static final Map<String, Phonemetadata.PhoneMetadata> regionCodeToShortNumberMetadataMap = Collections.synchronizedMap(new HashMap());

  private static void close(InputStream paramInputStream)
  {
    if (paramInputStream != null);
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      LOGGER.log(Level.WARNING, localIOException.toString());
    }
  }

  static Phonemetadata.PhoneMetadata getAlternateFormatsForCountry(int paramInt)
  {
    if (!countryCodeSet.contains(Integer.valueOf(paramInt)))
      return null;
    synchronized (callingCodeToAlternateFormatsMap)
    {
      if (!callingCodeToAlternateFormatsMap.containsKey(Integer.valueOf(paramInt)))
        loadAlternateFormatsMetadataFromFile(paramInt);
      return (Phonemetadata.PhoneMetadata)callingCodeToAlternateFormatsMap.get(Integer.valueOf(paramInt));
    }
  }

  static Phonemetadata.PhoneMetadata getShortNumberMetadataForRegion(String paramString)
  {
    if (!regionCodeSet.contains(paramString))
      return null;
    synchronized (regionCodeToShortNumberMetadataMap)
    {
      if (!regionCodeToShortNumberMetadataMap.containsKey(paramString))
        loadShortNumberMetadataFromFile(paramString);
      return (Phonemetadata.PhoneMetadata)regionCodeToShortNumberMetadataMap.get(paramString);
    }
  }

  static Set<String> getShortNumberMetadataSupportedRegions()
  {
    return regionCodeSet;
  }

  // ERROR //
  private static void loadAlternateFormatsMetadataFromFile(int paramInt)
  {
    // Byte code:
    //   0: ldc 129
    //   2: new 131	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   9: ldc 134
    //   11: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: iload_0
    //   15: invokevirtual 141	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   18: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   21: invokevirtual 146	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   24: astore_1
    //   25: aconst_null
    //   26: astore_2
    //   27: new 148	java/io/ObjectInputStream
    //   30: dup
    //   31: aload_1
    //   32: invokespecial 150	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   35: astore_3
    //   36: new 152	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection
    //   39: dup
    //   40: invokespecial 153	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection:<init>	()V
    //   43: astore 4
    //   45: aload 4
    //   47: aload_3
    //   48: invokevirtual 157	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection:readExternal	(Ljava/io/ObjectInput;)V
    //   51: aload 4
    //   53: invokevirtual 161	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection:getMetadataList	()Ljava/util/List;
    //   56: invokeinterface 167 1 0
    //   61: astore 7
    //   63: aload 7
    //   65: invokeinterface 173 1 0
    //   70: ifeq +60 -> 130
    //   73: aload 7
    //   75: invokeinterface 177 1 0
    //   80: checkcast 120	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata
    //   83: astore 8
    //   85: getstatic 52	com/google/i18n/phonenumbers/MetadataManager:callingCodeToAlternateFormatsMap	Ljava/util/Map;
    //   88: aload 8
    //   90: invokevirtual 181	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata:getCountryCode	()I
    //   93: invokestatic 99	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   96: aload 8
    //   98: invokeinterface 185 3 0
    //   103: pop
    //   104: goto -41 -> 63
    //   107: astore 6
    //   109: aload_3
    //   110: astore_2
    //   111: getstatic 39	com/google/i18n/phonenumbers/MetadataManager:LOGGER	Ljava/util/logging/Logger;
    //   114: getstatic 84	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   117: aload 6
    //   119: invokevirtual 87	java/io/IOException:toString	()Ljava/lang/String;
    //   122: invokevirtual 91	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;)V
    //   125: aload_2
    //   126: invokestatic 187	com/google/i18n/phonenumbers/MetadataManager:close	(Ljava/io/InputStream;)V
    //   129: return
    //   130: aload_3
    //   131: invokestatic 187	com/google/i18n/phonenumbers/MetadataManager:close	(Ljava/io/InputStream;)V
    //   134: return
    //   135: astore 5
    //   137: aload_2
    //   138: invokestatic 187	com/google/i18n/phonenumbers/MetadataManager:close	(Ljava/io/InputStream;)V
    //   141: aload 5
    //   143: athrow
    //   144: astore 5
    //   146: aload_3
    //   147: astore_2
    //   148: goto -11 -> 137
    //   151: astore 6
    //   153: aconst_null
    //   154: astore_2
    //   155: goto -44 -> 111
    //
    // Exception table:
    //   from	to	target	type
    //   36	63	107	java/io/IOException
    //   63	104	107	java/io/IOException
    //   27	36	135	finally
    //   111	125	135	finally
    //   36	63	144	finally
    //   63	104	144	finally
    //   27	36	151	java/io/IOException
  }

  // ERROR //
  private static void loadShortNumberMetadataFromFile(String paramString)
  {
    // Byte code:
    //   0: ldc 129
    //   2: new 131	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   9: ldc 189
    //   11: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: aload_0
    //   15: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   21: invokevirtual 146	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   24: astore_1
    //   25: aconst_null
    //   26: astore_2
    //   27: new 148	java/io/ObjectInputStream
    //   30: dup
    //   31: aload_1
    //   32: invokespecial 150	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   35: astore_3
    //   36: new 152	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection
    //   39: dup
    //   40: invokespecial 153	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection:<init>	()V
    //   43: astore 4
    //   45: aload 4
    //   47: aload_3
    //   48: invokevirtual 157	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection:readExternal	(Ljava/io/ObjectInput;)V
    //   51: aload 4
    //   53: invokevirtual 161	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection:getMetadataList	()Ljava/util/List;
    //   56: invokeinterface 167 1 0
    //   61: astore 7
    //   63: aload 7
    //   65: invokeinterface 173 1 0
    //   70: ifeq +53 -> 123
    //   73: aload 7
    //   75: invokeinterface 177 1 0
    //   80: checkcast 120	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata
    //   83: astore 8
    //   85: getstatic 54	com/google/i18n/phonenumbers/MetadataManager:regionCodeToShortNumberMetadataMap	Ljava/util/Map;
    //   88: aload_0
    //   89: aload 8
    //   91: invokeinterface 185 3 0
    //   96: pop
    //   97: goto -34 -> 63
    //   100: astore 6
    //   102: aload_3
    //   103: astore_2
    //   104: getstatic 39	com/google/i18n/phonenumbers/MetadataManager:LOGGER	Ljava/util/logging/Logger;
    //   107: getstatic 84	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   110: aload 6
    //   112: invokevirtual 87	java/io/IOException:toString	()Ljava/lang/String;
    //   115: invokevirtual 91	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;)V
    //   118: aload_2
    //   119: invokestatic 187	com/google/i18n/phonenumbers/MetadataManager:close	(Ljava/io/InputStream;)V
    //   122: return
    //   123: aload_3
    //   124: invokestatic 187	com/google/i18n/phonenumbers/MetadataManager:close	(Ljava/io/InputStream;)V
    //   127: return
    //   128: astore 5
    //   130: aload_2
    //   131: invokestatic 187	com/google/i18n/phonenumbers/MetadataManager:close	(Ljava/io/InputStream;)V
    //   134: aload 5
    //   136: athrow
    //   137: astore 5
    //   139: aload_3
    //   140: astore_2
    //   141: goto -11 -> 130
    //   144: astore 6
    //   146: aconst_null
    //   147: astore_2
    //   148: goto -44 -> 104
    //
    // Exception table:
    //   from	to	target	type
    //   36	63	100	java/io/IOException
    //   63	97	100	java/io/IOException
    //   27	36	128	finally
    //   104	118	128	finally
    //   36	63	137	finally
    //   63	97	137	finally
    //   27	36	144	java/io/IOException
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.MetadataManager
 * JD-Core Version:    0.6.2
 */