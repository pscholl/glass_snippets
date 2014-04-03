package com.google.glass.voice.network.translate;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.net.Uri.Builder;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Maps;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.HttpRequestDispatcher;
import com.google.glass.net.HttpRequestDispatcherManager;
import com.google.glass.net.SimplifiedHttpResponse;
import com.google.glass.net.UserAgent;
import com.google.glass.predicates.Assert;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Loader;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.FileSaver;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public class NetworkTts
  implements MediaPlayer.OnCompletionListener
{

  @VisibleForTesting
  static final CachedFilesManager.Type CACHE_FILE_TYPE;
  public static final String[] NETWORK_TTS_SUPPORTED_LANGUAGES;
  private static final String REQUEST_DEFAULT_QUERY_PARAMETERS = "ie=utf-8&client=glass";
  public static final String REQUEST_HOST = "translate.google.com";
  public static final String REQUEST_PATH = "/translate_tts";
  private static final String REQUEST_SCHEME = "http";
  private static final String TARGET_LANG = "tl";
  private static final String TARGET_TEXT = "text";
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private static HashSet<String> networkTtsSupportedLanguages;
  private static MediaPlayer player;
  private static NetworkTts sharedInstance;
  private CachedFilesManager.Loader<Boolean> loader = new CachedFilesManager.Loader()
  {
    // ERROR //
    public Boolean load(String paramAnonymousString)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: new 26	java/io/FileInputStream
      //   5: dup
      //   6: new 28	java/io/File
      //   9: dup
      //   10: aload_1
      //   11: invokespecial 31	java/io/File:<init>	(Ljava/lang/String;)V
      //   14: invokespecial 34	java/io/FileInputStream:<init>	(Ljava/io/File;)V
      //   17: astore_3
      //   18: aload_0
      //   19: getfield 15	com/google/glass/voice/network/translate/NetworkTts$1:this$0	Lcom/google/glass/voice/network/translate/NetworkTts;
      //   22: invokevirtual 37	com/google/glass/voice/network/translate/NetworkTts:stopSpeaking	()V
      //   25: new 39	android/media/MediaPlayer
      //   28: dup
      //   29: invokespecial 40	android/media/MediaPlayer:<init>	()V
      //   32: invokestatic 44	com/google/glass/voice/network/translate/NetworkTts:access$002	(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
      //   35: pop
      //   36: invokestatic 48	com/google/glass/voice/network/translate/NetworkTts:access$000	()Landroid/media/MediaPlayer;
      //   39: invokestatic 52	com/google/glass/voice/network/translate/NetworkTts:getSharedInstance	()Lcom/google/glass/voice/network/translate/NetworkTts;
      //   42: invokevirtual 56	android/media/MediaPlayer:setOnCompletionListener	(Landroid/media/MediaPlayer$OnCompletionListener;)V
      //   45: invokestatic 48	com/google/glass/voice/network/translate/NetworkTts:access$000	()Landroid/media/MediaPlayer;
      //   48: iconst_3
      //   49: invokevirtual 60	android/media/MediaPlayer:setAudioStreamType	(I)V
      //   52: invokestatic 48	com/google/glass/voice/network/translate/NetworkTts:access$000	()Landroid/media/MediaPlayer;
      //   55: aload_3
      //   56: invokevirtual 64	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
      //   59: invokevirtual 68	android/media/MediaPlayer:setDataSource	(Ljava/io/FileDescriptor;)V
      //   62: invokestatic 48	com/google/glass/voice/network/translate/NetworkTts:access$000	()Landroid/media/MediaPlayer;
      //   65: invokevirtual 71	android/media/MediaPlayer:prepare	()V
      //   68: invokestatic 48	com/google/glass/voice/network/translate/NetworkTts:access$000	()Landroid/media/MediaPlayer;
      //   71: invokevirtual 74	android/media/MediaPlayer:start	()V
      //   74: iconst_1
      //   75: invokestatic 80	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   78: astore 11
      //   80: aload_3
      //   81: ifnull +7 -> 88
      //   84: aload_3
      //   85: invokevirtual 83	java/io/FileInputStream:close	()V
      //   88: aload 11
      //   90: areturn
      //   91: astore 4
      //   93: invokestatic 87	com/google/glass/voice/network/translate/NetworkTts:access$100	()Lcom/google/glass/logging/FormattingLogger;
      //   96: aload 4
      //   98: ldc 89
      //   100: iconst_1
      //   101: anewarray 5	java/lang/Object
      //   104: dup
      //   105: iconst_0
      //   106: aload_1
      //   107: aastore
      //   108: invokeinterface 95 4 0
      //   113: aload_2
      //   114: ifnull +7 -> 121
      //   117: aload_2
      //   118: invokevirtual 83	java/io/FileInputStream:close	()V
      //   121: iconst_0
      //   122: invokestatic 80	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   125: areturn
      //   126: astore 8
      //   128: invokestatic 87	com/google/glass/voice/network/translate/NetworkTts:access$100	()Lcom/google/glass/logging/FormattingLogger;
      //   131: aload 8
      //   133: ldc 97
      //   135: iconst_1
      //   136: anewarray 5	java/lang/Object
      //   139: dup
      //   140: iconst_0
      //   141: aload_1
      //   142: aastore
      //   143: invokeinterface 95 4 0
      //   148: aload_2
      //   149: ifnull -28 -> 121
      //   152: aload_2
      //   153: invokevirtual 83	java/io/FileInputStream:close	()V
      //   156: goto -35 -> 121
      //   159: astore 9
      //   161: goto -40 -> 121
      //   164: astore 5
      //   166: aload_2
      //   167: ifnull +7 -> 174
      //   170: aload_2
      //   171: invokevirtual 83	java/io/FileInputStream:close	()V
      //   174: aload 5
      //   176: athrow
      //   177: astore 12
      //   179: goto -91 -> 88
      //   182: astore 7
      //   184: goto -63 -> 121
      //   187: astore 6
      //   189: goto -15 -> 174
      //   192: astore 5
      //   194: aload_3
      //   195: astore_2
      //   196: goto -30 -> 166
      //   199: astore 8
      //   201: aload_3
      //   202: astore_2
      //   203: goto -75 -> 128
      //   206: astore 4
      //   208: aload_3
      //   209: astore_2
      //   210: goto -117 -> 93
      //
      // Exception table:
      //   from	to	target	type
      //   2	18	91	java/io/IOException
      //   2	18	126	java/lang/IllegalStateException
      //   152	156	159	java/io/IOException
      //   2	18	164	finally
      //   93	113	164	finally
      //   128	148	164	finally
      //   84	88	177	java/io/IOException
      //   117	121	182	java/io/IOException
      //   170	174	187	java/io/IOException
      //   18	80	192	finally
      //   18	80	199	java/lang/IllegalStateException
      //   18	80	206	java/io/IOException
    }
  };

  static
  {
    CACHE_FILE_TYPE = CachedFilesManager.Type.AUDIO;
    NETWORK_TTS_SUPPORTED_LANGUAGES = new String[] { "af", "sq", "ar", "hy", "bs", "ca", "zh-CN", "zh-TW", "zh", "hr", "cs", "da", "nl", "en", "eo", "fi", "fr", "de", "el", "hi", "ht", "hu", "id", "is", "it", "ja", "ko", "ku", "la", "lv", "mk", "no", "pl", "pt", "ro", "ru", "sr", "sk", "es", "sw", "sv", "ta", "th", "tr", "vi", "cy" };
    networkTtsSupportedLanguages = new HashSet();
    Collections.addAll(networkTtsSupportedLanguages, NETWORK_TTS_SUPPORTED_LANGUAGES);
  }

  @VisibleForTesting
  static String formatCacheFileNameFromUri(String paramString)
  {
    return paramString.substring(1 + paramString.lastIndexOf(File.separator));
  }

  @VisibleForTesting
  static Map<String, String> getHeaders()
  {
    HashMap localHashMap = Maps.newHashMap();
    localHashMap.put("Accept-Charset", "UTF-8");
    localHashMap.put("Accept-Encoding", "gzip");
    localHashMap.put("User-Agent", UserAgent.get());
    return localHashMap;
  }

  public static String getNetworkTtsUri(String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (!isLanguageSupported(paramString2)))
    {
      logger.w("Network TTS not supported for \"%s\"", new Object[] { paramString2 });
      return null;
    }
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("http").authority("translate.google.com").path("/translate_tts").encodedQuery("ie=utf-8&client=glass").appendQueryParameter("text", paramString1).appendQueryParameter("tl", paramString2);
    return localBuilder.build().toString();
  }

  public static NetworkTts getSharedInstance()
  {
    if (sharedInstance == null)
      sharedInstance = new NetworkTts();
    return sharedInstance;
  }

  public static boolean isLanguageSupported(String paramString)
  {
    return networkTtsSupportedLanguages.contains(paramString);
  }

  public static boolean isTtsPlaying()
  {
    return player != null;
  }

  public static void setSharedInstance(NetworkTts paramNetworkTts)
  {
    sharedInstance = paramNetworkTts;
  }

  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer.release();
    player = null;
  }

  public boolean requestTtsAndPlay(Context paramContext, String paramString)
  {
    Assert.assertTrue(AsyncThreadExecutorManager.isOnSerialInstanceThread());
    boolean bool = streamFromCache(formatCacheFileNameFromUri(paramString));
    if ((!bool) && (paramString != null))
      bool = streamFromServer(HttpRequestDispatcherManager.getSharedDispatcher(paramContext), paramString);
    if (!bool)
      logger.w("Could not obtain TTS from either local cache or network", new Object[0]);
    return bool;
  }

  public void stopSpeaking()
  {
    Assert.assertTrue(AsyncThreadExecutorManager.isOnSerialInstanceThread());
    if ((player != null) && (player.isPlaying()))
    {
      player.stop();
      player.release();
      player = null;
    }
  }

  @VisibleForTesting
  boolean streamFromCache(String paramString)
  {
    CachedFilesManager localCachedFilesManager = CachedFilesManager.getSharedInstance();
    String str = localCachedFilesManager.getPath(CACHE_FILE_TYPE, paramString);
    boolean bool1 = localCachedFilesManager.contains(CACHE_FILE_TYPE, paramString);
    boolean bool2 = false;
    if (bool1)
    {
      logger.v("Streaming from cache file: %s", new Object[] { str });
      bool2 = ((Boolean)CachedFilesManager.getSharedInstance().load(str, this.loader)).booleanValue();
    }
    return bool2;
  }

  @VisibleForTesting
  boolean streamFromServer(HttpRequestDispatcher paramHttpRequestDispatcher, String paramString)
  {
    logger.v("Streaming from the TTS server: %s", new Object[] { paramString });
    SimplifiedHttpResponse localSimplifiedHttpResponse = paramHttpRequestDispatcher.postWithHeaders(paramString, getHeaders(), null);
    if (localSimplifiedHttpResponse == null)
      logger.w("No results returned from TTS server", new Object[0]);
    do
    {
      return false;
      if (localSimplifiedHttpResponse.statusCode == 404)
      {
        logger.w("TTS not found", new Object[0]);
        return false;
      }
      if (localSimplifiedHttpResponse.statusCode != 200)
      {
        FormattingLogger localFormattingLogger2 = logger;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(localSimplifiedHttpResponse.statusCode);
        localFormattingLogger2.w("TTS Server error code: %s", arrayOfObject2);
        return false;
      }
    }
    while ((localSimplifiedHttpResponse.body == null) || (localSimplifiedHttpResponse.body.length <= 0));
    String str = formatCacheFileNameFromUri(paramString);
    FormattingLogger localFormattingLogger1 = logger;
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(localSimplifiedHttpResponse.body.length);
    arrayOfObject1[1] = str;
    localFormattingLogger1.v("Write %s bytes of audio data to file %s", arrayOfObject1);
    CachedFilesManager.getSharedInstance().save(CACHE_FILE_TYPE, str, FileSaver.newSaver(localSimplifiedHttpResponse.body));
    return streamFromCache(str);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.translate.NetworkTts
 * JD-Core Version:    0.6.2
 */