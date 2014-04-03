package com.google.glass.util;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.app.GlassApplication;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.ProtoParser;
import com.google.glass.net.ProtoParser.Provider;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponse;
import com.google.glass.net.ServerConstants.Action;
import com.google.glass.predicates.Assert;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.googlex.glass.common.proto.ImageDownloadNano.ImageDownloadRequest;
import com.google.googlex.glass.common.proto.ImageDownloadNano.ImageDownloadRequest.RequestedDimensions;
import com.google.googlex.glass.common.proto.ImageDownloadNano.ImageDownloadResponse;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class ImageProxyDownloadTask extends DeferredContentLoader.LoadingTask<String>
{
  public static final CachedFilesManager.Type CACHE_TYPE = CachedFilesManager.Type.PICTURE;
  public static final int DIMENSION_NOT_SET = -1;
  private static final ProtoParser<ImageDownloadNano.ImageDownloadResponse> PARSER;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private final CachedFilesManager cachedFilesManager;
  private final int cropType;
  private int height;
  private String imageUrl;
  private final ProtoRequestDispatcher requestDispatcher;
  private int width;

  static
  {
    PARSER = new ProtoParser(new ProtoParser.Provider()
    {
      public ImageDownloadNano.ImageDownloadResponse provide()
      {
        return new ImageDownloadNano.ImageDownloadResponse();
      }
    });
  }

  public ImageProxyDownloadTask(Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramContext);
    this.imageUrl = paramString;
    this.width = paramInt1;
    this.height = paramInt2;
    this.cropType = paramInt3;
    this.cachedFilesManager = CachedFilesManager.getSharedInstance();
    this.requestDispatcher = GlassApplication.from(paramContext).getPooledRequestDispatcher();
  }

  private String downloadImage(String paramString)
  {
    Assert.assertNotUiThread();
    ImageDownloadNano.ImageDownloadRequest.RequestedDimensions localRequestedDimensions = new ImageDownloadNano.ImageDownloadRequest.RequestedDimensions();
    if (this.width != -1)
      localRequestedDimensions.widthPixels = Integer.valueOf(this.width);
    if (this.height != -1)
      localRequestedDimensions.heightPixels = Integer.valueOf(this.height);
    ImageDownloadNano.ImageDownloadRequest localImageDownloadRequest = new ImageDownloadNano.ImageDownloadRequest();
    localImageDownloadRequest.requestedDimensions = localRequestedDimensions;
    localImageDownloadRequest.url = this.imageUrl;
    localImageDownloadRequest.cropType = this.cropType;
    logger.d("Downloading image [filename=%s, request=%s].", new Object[] { paramString, localImageDownloadRequest });
    Stopwatch localStopwatch = new Stopwatch();
    localStopwatch.start();
    ProtoResponse localProtoResponse;
    try
    {
      localProtoResponse = this.requestDispatcher.blockingDispatch(ServerConstants.Action.DOWNLOAD_IMAGE, localImageDownloadRequest, PARSER);
      localStopwatch.stop();
      if ((localProtoResponse == null) || (localProtoResponse.getResponseProto() == null))
      {
        logger.w("No response - network may be disconnected", new Object[0]);
        return null;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      logger.e(localInterruptedException, "Interrupted while downloading image from clientproxy", new Object[0]);
      return null;
    }
    ImageDownloadNano.ImageDownloadResponse localImageDownloadResponse = (ImageDownloadNano.ImageDownloadResponse)localProtoResponse.getResponseProto();
    if (localImageDownloadResponse.status != 0)
    {
      FormattingLogger localFormattingLogger4 = logger;
      Object[] arrayOfObject5 = new Object[2];
      arrayOfObject5[0] = Integer.valueOf(localImageDownloadResponse.status);
      arrayOfObject5[1] = this.imageUrl;
      localFormattingLogger4.w("Server status: %s for: %s", arrayOfObject5);
      return null;
    }
    if (ArrayUtils.isEmpty(localImageDownloadResponse.image))
    {
      FormattingLogger localFormattingLogger3 = logger;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = this.imageUrl;
      localFormattingLogger3.w("No image download data for %s", arrayOfObject4);
      return null;
    }
    if (isCancelled())
    {
      FormattingLogger localFormattingLogger2 = logger;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.imageUrl;
      localFormattingLogger2.d("Image download cancelled for %s", arrayOfObject3);
      return null;
    }
    UserEventHelper localUserEventHelper = new UserEventHelper(getContext());
    UserEventAction localUserEventAction = UserEventAction.IMAGE_DOWNLOAD_LATENCY;
    String str1 = Long.toString(localStopwatch.getTotalElapsedMilliseconds());
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = "b";
    arrayOfObject1[1] = Integer.toString(localImageDownloadResponse.image.length);
    localUserEventHelper.log(localUserEventAction, UserEventHelper.createEventTuple("l", str1, arrayOfObject1));
    String str2 = this.cachedFilesManager.getPath(CACHE_TYPE, paramString);
    FormattingLogger localFormattingLogger1 = logger;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = this.imageUrl;
    arrayOfObject2[1] = str2;
    localFormattingLogger1.d("Saving %s under %s", arrayOfObject2);
    this.cachedFilesManager.save(CACHE_TYPE, paramString, FileSaver.newSaver(localImageDownloadResponse.image));
    return str2;
  }

  @VisibleForTesting
  public static String getFilename(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    StringBuilder localStringBuilder = new StringBuilder(64 + paramString.length());
    try
    {
      localStringBuilder.append(new BigInteger(1, MessageDigest.getInstance("MD5").digest(URLEncoder.encode(paramString, "UTF-8").getBytes())).toString(16));
      localStringBuilder.append("-").append(paramInt1).append("-").append(paramInt2).append("-").append(paramInt3);
      return localStringBuilder.toString();
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalStateException(localUnsupportedEncodingException);
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new IllegalStateException(localNoSuchAlgorithmException);
    }
  }

  public String checkCache()
  {
    Assert.assertNotUiThread();
    if (TextUtils.isEmpty(this.imageUrl));
    String str;
    do
    {
      return null;
      str = getFilename(this.imageUrl, this.width, this.height, this.cropType);
    }
    while (!this.cachedFilesManager.contains(CACHE_TYPE, str));
    return this.cachedFilesManager.getPath(CACHE_TYPE, str);
  }

  protected String getImageUrl()
  {
    return this.imageUrl;
  }

  protected String getUserEventTag()
  {
    return "ip";
  }

  protected String loadContent(Condition paramCondition)
  {
    Assert.assertNotUiThread();
    if (TextUtils.isEmpty(this.imageUrl))
      return null;
    String str = getFilename(this.imageUrl, this.width, this.height, this.cropType);
    if (!this.cachedFilesManager.contains(CACHE_TYPE, str))
      return downloadImage(str);
    return this.cachedFilesManager.getPath(CACHE_TYPE, str);
  }

  protected String loadContentFromCache()
  {
    Assert.assertUiThread();
    if (TextUtils.isEmpty(this.imageUrl))
      return null;
    String str = getFilename(this.imageUrl, this.width, this.height, this.cropType);
    return this.cachedFilesManager.getPath(CACHE_TYPE, str);
  }

  public void setImageDimensions(int paramInt1, int paramInt2)
  {
    this.width = paramInt1;
    this.height = paramInt2;
  }

  protected String setImageUrl(String paramString)
  {
    this.imageUrl = paramString;
    return paramString;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.ImageProxyDownloadTask
 * JD-Core Version:    0.6.2
 */