package com.google.glass.logging.audio;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import com.google.android.speech.message.S3RequestStream;
import com.google.android.speech.message.S3RequestUtils;
import com.google.android.speech.message.S3ResponseStream;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Splitter;
import com.google.common.collect.Maps;
import com.google.common.io.Closeables;
import com.google.common.io.Files;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;
import com.google.glass.net.HttpRequestDispatcher;
import com.google.glass.net.SimplifiedHttpResponse;
import com.google.glass.util.ProtoDebugUtils;
import com.google.glass.voice.AlignmentInfo;
import com.google.glass.voice.network.VoiceSearchContainer;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.speech.common.Alternates.AlternateParams;
import com.google.speech.logs.RecognizerOuterClass.RecognizerHypothesisLog;
import com.google.speech.logs.RecognizerOuterClass.RecognizerLog;
import com.google.speech.logs.RecognizerOuterClass.RecognizerSegmentLog;
import com.google.speech.logs.VoicesearchClientLogProto.ClientEvent;
import com.google.speech.logs.VoicesearchClientLogProto.VoiceSearchClientLog;
import com.google.speech.s3.Audio.S3AudioInfo;
import com.google.speech.s3.ClientLogRequestProto.ClientLogRequest;
import com.google.speech.s3.S3.Locale;
import com.google.speech.s3.S3.S3ClientInfo;
import com.google.speech.s3.S3.S3Request;
import com.google.speech.s3.S3.S3Response;
import com.google.speech.s3.S3.S3SessionInfo;
import com.google.speech.s3.S3.S3UserInfo;
import com.google.speech.speech.s3.Recognizer.S3RecognizerInfo;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.Configuration;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.HttpServerInfo;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

public class S3SavedAudioSyncer
  implements SavedAudioSyncer
{
  private static final String ANDROID_PLATFORM = "Android";
  private static final String CLIENT_LOG_SERVICE = "clientlog";
  private static final String ENDPOINT_URL = "https://www.google.com/m/voice-search/fallback";

  @VisibleForTesting
  static final long INSTALL_ID_WINDOW_SIZE_MILLIS = 0L;
  private static final String LOGGING_APP_ID = "async-glass-logging";
  private static final String SERVICE_RECOGNIZER = "recognizer";
  private static final String TAG = S3SavedAudioSyncer.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private String appVersion;
  private final Map<String, String> httpHeaders;
  private final HttpRequestDispatcher httpRequestDispatcher;
  private String installId;
  private long installIdInvalidateTime = -9223372036854775808L;
  private final String magicHeader;

  S3SavedAudioSyncer(String paramString, Map<String, String> paramMap, HttpRequestDispatcher paramHttpRequestDispatcher)
  {
    this.magicHeader = paramString;
    this.httpHeaders = paramMap;
    this.httpRequestDispatcher = paramHttpRequestDispatcher;
  }

  public static S3.S3Request createClientLogRequest(VoicesearchClientLogProto.VoiceSearchClientLog paramVoiceSearchClientLog)
  {
    return S3RequestUtils.createBaseS3Request().setClientLogRequestExtension(new ClientLogRequestProto.ClientLogRequest().setVoiceSearch(paramVoiceSearchClientLog));
  }

  public static S3.S3Request createInitLogRequest()
  {
    return S3RequestUtils.createBaseS3Request().setService("clientlog");
  }

  public static S3SavedAudioSyncer createS3SavedAudioSyncer(Context paramContext, HttpRequestDispatcher paramHttpRequestDispatcher)
  {
    GstaticConfiguration.Configuration localConfiguration = VoiceSearchContainer.getConfiguration(paramContext);
    return new S3SavedAudioSyncer(localConfiguration.getSingleHttpServerInfo().getHeader(), getHeaders(localConfiguration), paramHttpRequestDispatcher);
  }

  private void doSync(Context paramContext, SavedAudioRecord paramSavedAudioRecord)
    throws IOException, SyncFailedException
  {
    String str = UUID.randomUUID().toString();
    makeRequest(getRecognizeRequestBody(paramContext, paramSavedAudioRecord, str));
    makeRequest(getLogRequestBody(paramContext, paramSavedAudioRecord.getRecognizedCommands(), str));
  }

  private String getAppVersion(Context paramContext)
  {
    if (this.appVersion == null);
    try
    {
      this.appVersion = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      if (this.appVersion == null)
        return "";
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        logger.e(localNameNotFoundException, "Error getting app version", new Object[0]);
    }
    return this.appVersion;
  }

  private static Map<String, String> getHeaders(GstaticConfiguration.Configuration paramConfiguration)
  {
    HashMap localHashMap = Maps.newHashMap();
    GstaticConfiguration.HttpServerInfo localHttpServerInfo = paramConfiguration.getSingleHttpServerInfo();
    List localList1 = localHttpServerInfo.getHttpHeaderKeyList();
    List localList2 = localHttpServerInfo.getHttpHeaderValueList();
    for (int i = 0; i < localList1.size(); i++)
      localHashMap.put(localList1.get(i), localList2.get(i));
    return localHashMap;
  }

  private byte[] getLogRequestBody(Context paramContext, String paramString1, String paramString2)
    throws IOException
  {
    RecognizerOuterClass.RecognizerLog localRecognizerLog = new RecognizerOuterClass.RecognizerLog();
    List localList = AlignmentInfo.parseRecognizedCommandsString(paramString1);
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      AlignmentInfo localAlignmentInfo = (AlignmentInfo)localIterator.next();
      RecognizerOuterClass.RecognizerSegmentLog localRecognizerSegmentLog = new RecognizerOuterClass.RecognizerSegmentLog();
      localRecognizerSegmentLog.addHypothesis(new RecognizerOuterClass.RecognizerHypothesisLog().setHypothesis(localAlignmentInfo.text));
      if (localStringBuilder.length() > 0)
        localStringBuilder.append(" ");
      localStringBuilder.append(localAlignmentInfo.text);
      localRecognizerSegmentLog.setRelativeStartTimeMs((int)localAlignmentInfo.startMillis);
      localRecognizerSegmentLog.setRelativeEndTimeMs((int)localAlignmentInfo.endMillis);
      localRecognizerLog.addRecognizerSegment(localRecognizerSegmentLog);
    }
    localRecognizerLog.setTopHypothesis(new RecognizerOuterClass.RecognizerHypothesisLog().setHypothesis(localStringBuilder.toString()));
    VoicesearchClientLogProto.ClientEvent localClientEvent = new VoicesearchClientLogProto.ClientEvent();
    localClientEvent.setRequestId(paramString2);
    localClientEvent.setEmbeddedRecognizerLog(localRecognizerLog);
    localClientEvent.setEventType(52);
    VoicesearchClientLogProto.VoiceSearchClientLog localVoiceSearchClientLog = new VoicesearchClientLogProto.VoiceSearchClientLog().setInstallId(this.installId).setPackageId(paramContext.getPackageName()).setPlatformId("Android").setPlatformVersion(Build.DISPLAY).setDeviceModel(Build.MODEL).setApplicationId("async-glass-logging").setApplicationVersion(getAppVersion(paramContext)).setLocale(Locale.getDefault().toString()).addBundledClientEvents(localClientEvent);
    String str = this.magicHeader;
    S3.S3Request[] arrayOfS3Request = new S3.S3Request[3];
    arrayOfS3Request[0] = createInitLogRequest();
    arrayOfS3Request[1] = createClientLogRequest(localVoiceSearchClientLog);
    arrayOfS3Request[2] = S3RequestUtils.createEndOfData();
    return getRequestBody(str, arrayOfS3Request);
  }

  private byte[] getRecognizeRequestBody(Context paramContext, SavedAudioRecord paramSavedAudioRecord, String paramString)
    throws IOException
  {
    S3.S3Request localS3Request = createVoiceRecognizeRequest(paramContext, paramSavedAudioRecord, paramString);
    setInstallId(localS3Request, paramSavedAudioRecord.getTimestamp());
    byte[] arrayOfByte = Files.toByteArray(new File(paramSavedAudioRecord.getFilename()));
    String str = this.magicHeader;
    S3.S3Request[] arrayOfS3Request = new S3.S3Request[3];
    arrayOfS3Request[0] = localS3Request;
    arrayOfS3Request[1] = S3RequestUtils.createAudioDataRequest(arrayOfByte, arrayOfByte.length);
    arrayOfS3Request[2] = S3RequestUtils.createEndOfData();
    return getRequestBody(str, arrayOfS3Request);
  }

  private static byte[] getRequestBody(String paramString, S3.S3Request[] paramArrayOfS3Request)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    S3RequestStream localS3RequestStream = new S3RequestStream(localByteArrayOutputStream, paramString, false);
    List localList = Arrays.asList(paramArrayOfS3Request);
    localS3RequestStream.writeHeader((S3.S3Request)localList.get(0));
    for (int i = 1; i < localList.size(); i++)
      localS3RequestStream.write((S3.S3Request)localList.get(i));
    localS3RequestStream.close();
    localByteArrayOutputStream.flush();
    return localByteArrayOutputStream.toByteArray();
  }

  private S3.S3ClientInfo getS3ClientInfo(Context paramContext)
  {
    return new S3.S3ClientInfo().setApplicationId("async-glass-logging").setApplicationVersion(getAppVersion(paramContext)).setPlatformId(Build.DISPLAY).setPlatformVersion("Android").setDeviceModel(Build.MODEL);
  }

  private Recognizer.S3RecognizerInfo getS3RecognizerInfo()
  {
    return new Recognizer.S3RecognizerInfo().setAlternateParams(new Alternates.AlternateParams().setMaxSpanLength(10).setMaxTotalSpanLength(250).setUnit(1)).setEnableAlternates(true).setEnableCombinedNbest(true).setEnablePartialResults(false).setConfidenceThreshold(0.0F).setMaxNbest(1).setProfanityFilter(2);
  }

  private S3.S3UserInfo getS3UserInfo()
  {
    S3.Locale localLocale = new S3.Locale().setFormat(2).setLocale(Locale.getDefault().toString());
    return new S3.S3UserInfo().setUserLocale(localLocale).setSpokenLanguage(localLocale);
  }

  private static void logResponses(byte[] paramArrayOfByte)
  {
    S3ResponseStream localS3ResponseStream = new S3ResponseStream(new ByteArrayInputStream(paramArrayOfByte));
    try
    {
      localS3Response = localS3ResponseStream.read();
      String str1 = ProtoDebugUtils.asciiDebug(localS3Response);
      Iterator localIterator = Splitter.on("\n").split(str1).iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        Log.logPii(3, TAG, str2);
      }
    }
    catch (IOException localIOException)
    {
      int i;
      do
      {
        S3.S3Response localS3Response;
        logger.w(localIOException, "Failed to read S3Response", new Object[0]);
        return;
        if (localS3Response.getStatus() == 2)
          break;
        i = localS3Response.getStatus();
      }
      while (i != 1);
      return;
    }
    finally
    {
      Closeables.closeQuietly(localS3ResponseStream);
    }
  }

  private void makeRequest(byte[] paramArrayOfByte)
    throws SyncFailedException
  {
    SimplifiedHttpResponse localSimplifiedHttpResponse = this.httpRequestDispatcher.postWithHeaders("https://www.google.com/m/voice-search/fallback", this.httpHeaders, paramArrayOfByte);
    if (localSimplifiedHttpResponse == null)
      throw new SyncFailedException("Connection failed or no response from the server.");
    int i = localSimplifiedHttpResponse.statusCode;
    if (i != 200)
      throw new SyncFailedException("S3 returned non-200 response: " + i);
  }

  public S3.S3Request createVoiceRecognizeRequest(Context paramContext, SavedAudioRecord paramSavedAudioRecord, String paramString)
  {
    return S3RequestUtils.createBaseS3Request().setService("recognizer").setS3AudioInfoExtension(getS3AudioInfo(paramSavedAudioRecord)).setS3ClientInfoExtension(getS3ClientInfo(paramContext)).setS3UserInfoExtension(getS3UserInfo()).setS3RecognizerInfoExtension(getS3RecognizerInfo()).setS3SessionInfoExtension(new S3.S3SessionInfo().setSessionId(paramString));
  }

  protected Audio.S3AudioInfo getS3AudioInfo(SavedAudioRecord paramSavedAudioRecord)
  {
    return new Audio.S3AudioInfo().setEncoding(0).setSampleRateHz((float)paramSavedAudioRecord.getSampleRate().longValue());
  }

  @VisibleForTesting
  void setInstallId(S3.S3Request paramS3Request, long paramLong)
  {
    if (!paramS3Request.hasS3UserInfoExtension())
      paramS3Request.setS3UserInfoExtension(new S3.S3UserInfo());
    while (true)
    {
      if (paramLong > this.installIdInvalidateTime)
      {
        this.installId = UUID.randomUUID().toString();
        this.installIdInvalidateTime = (paramLong + INSTALL_ID_WINDOW_SIZE_MILLIS);
      }
      paramS3Request.getS3UserInfoExtension().setInstallId(this.installId);
      return;
      try
      {
        paramS3Request.setS3UserInfoExtension(S3.S3UserInfo.parseFrom(paramS3Request.getS3UserInfoExtension().toByteArray()));
      }
      catch (InvalidProtocolBufferMicroException localInvalidProtocolBufferMicroException)
      {
        throw new RuntimeException(localInvalidProtocolBufferMicroException);
      }
    }
  }

  public void sync(Context paramContext, SavedAudioRecord paramSavedAudioRecord)
    throws SyncFailedException
  {
    try
    {
      doSync(paramContext, paramSavedAudioRecord);
      return;
    }
    catch (IOException localIOException)
    {
      throw new SyncFailedException(localIOException);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.audio.S3SavedAudioSyncer
 * JD-Core Version:    0.6.2
 */