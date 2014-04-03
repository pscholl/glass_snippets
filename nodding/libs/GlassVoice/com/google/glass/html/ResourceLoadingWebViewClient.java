package com.google.glass.html;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMap.Builder;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.glass.async.AsyncThreadExecutorManager;
import com.google.glass.entity.MosaicHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.maps.MapHelper;
import com.google.glass.predicates.Assert;
import com.google.glass.proto.MapRenderingServiceNano.MapRenderRequest;
import com.google.glass.util.ArrayUtils;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.ImageProxyDownloadTask;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.googlex.glass.common.proto.TimelineNano.Attachment;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

public class ResourceLoadingWebViewClient extends WebViewClient
{
  private static final String ATTACHMENT_SCHEME = "attachment";
  private static final String CID_SCHEME = "cid";
  private static final String DATA_SCHEME = "data";
  private static final String FILE_SCHEME = "file";
  private static final Map<String, String> FILE_WHITELIST = ImmutableMap.builder().put("/system/glass_fonts/Roboto-Light.ttf", "application/octet-stream").put("/system/glass_fonts/Roboto-Thin.ttf", "application/octet-stream").put("/data/data/com.google.glass.home/files/stylesheets/base_style.css", "text/css").build();
  private static final String GLASS_SCHEME = "glass";
  protected static final String HTTPS_SCHEME = "https";
  protected static final String HTTP_SCHEME = "http";
  private static final String TAG = ResourceLoadingWebViewClient.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private final CachedBitmapFactory bitmapFactory;
  private final Context context;
  private final ImageUrlHelper imageUrlHelper;
  private final TimelineNano.TimelineItem item;
  private final boolean loadUncachedResources;
  private final MapHelper mapHelper;
  private final MosaicHelper mosaicHelper;
  private final List<AsyncTask<Void, Void, Void>> resourceLoadTasks;
  private final ResourceLoadedCallback resourceLoadedCallback;
  private final Thumbnailer thumbnailer;

  public ResourceLoadingWebViewClient(Context paramContext, TimelineNano.TimelineItem paramTimelineItem, CachedBitmapFactory paramCachedBitmapFactory, MapHelper paramMapHelper, MosaicHelper paramMosaicHelper, boolean paramBoolean, List<AsyncTask<Void, Void, Void>> paramList, ResourceLoadedCallback paramResourceLoadedCallback)
  {
    this.context = paramContext;
    this.item = paramTimelineItem;
    this.bitmapFactory = paramCachedBitmapFactory;
    this.mapHelper = paramMapHelper;
    this.mosaicHelper = paramMosaicHelper;
    this.loadUncachedResources = paramBoolean;
    this.resourceLoadTasks = paramList;
    this.resourceLoadedCallback = paramResourceLoadedCallback;
    this.thumbnailer = new Thumbnailer();
    this.imageUrlHelper = new ImageUrlHelper(paramContext);
  }

  private TimelineNano.Attachment findAttachmentForAttachmentUri(Uri paramUri)
  {
    String str = paramUri.getSchemeSpecificPart();
    if (TextUtils.isEmpty(str))
    {
      FormattingLogger localFormattingLogger3 = logger;
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = paramUri;
      arrayOfObject3[1] = this.item.id;
      localFormattingLogger3.w("URL is empty: %s/%s", arrayOfObject3);
      return null;
    }
    int i;
    try
    {
      i = Integer.parseInt(str);
      if ((i < 0) || ((this.item.attachment != null) && (i >= this.item.attachment.length)))
      {
        FormattingLogger localFormattingLogger2 = logger;
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = paramUri;
        arrayOfObject2[1] = this.item.id;
        localFormattingLogger2.w("Index out of bounds: %s/%s", arrayOfObject2);
        return null;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      FormattingLogger localFormattingLogger1 = logger;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = paramUri;
      arrayOfObject1[1] = this.item.id;
      localFormattingLogger1.w("Unable to parse attachment index: %s/%s", arrayOfObject1);
      return null;
    }
    return this.item.attachment[i];
  }

  private TimelineNano.Attachment findAttachmentForCidUri(Uri paramUri)
  {
    String str = paramUri.getSchemeSpecificPart();
    TimelineNano.Attachment localAttachment;
    if (TextUtils.isEmpty(str))
    {
      FormattingLogger localFormattingLogger = logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramUri;
      arrayOfObject[1] = this.item.id;
      localFormattingLogger.w("URL is empty: %s/%s", arrayOfObject);
      localAttachment = null;
      return localAttachment;
    }
    if (!ArrayUtils.isEmpty(this.item.attachment))
    {
      TimelineNano.Attachment[] arrayOfAttachment = this.item.attachment;
      int i = arrayOfAttachment.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label115;
        localAttachment = arrayOfAttachment[j];
        if (str.equals(localAttachment.id))
          break;
      }
    }
    label115: return null;
  }

  private String loadAttachment(final TimelineNano.Attachment paramAttachment, List<Runnable> paramList)
  {
    String str;
    if (this.bitmapFactory.cacheContainsAttachment(paramAttachment))
    {
      str = this.bitmapFactory.getCachedAttachmentPath(paramAttachment, true);
      if (str == null);
    }
    switch (5.$SwitchMap$com$google$glass$html$Thumbnailer$ThumbnailerResult[this.thumbnailer.createThumbnail(paramAttachment, str, true).ordinal()])
    {
    default:
      paramList.add(new Runnable()
      {
        public void run()
        {
          String str = ResourceLoadingWebViewClient.this.bitmapFactory.getCachedAttachmentPath(paramAttachment, false);
          ResourceLoadingWebViewClient.this.thumbnailer.createThumbnail(paramAttachment, str, false);
        }
      });
      str = null;
    case 1:
      return str;
    case 2:
      return this.thumbnailer.getThumbnailFile(paramAttachment).getAbsolutePath();
    case 3:
    }
    return null;
  }

  private String loadHttpResource(final BlockingDownloadTask paramBlockingDownloadTask, List<Runnable> paramList)
  {
    String str = paramBlockingDownloadTask.checkCache();
    if (str == null)
      paramList.add(new Runnable()
      {
        public void run()
        {
          paramBlockingDownloadTask.getPath();
        }
      });
    return str;
  }

  private byte[] loadMap(final String paramString, List<Runnable> paramList)
  {
    final MapRenderingServiceNano.MapRenderRequest localMapRenderRequest = new MapRenderingServiceNano.MapRenderRequest();
    localMapRenderRequest.uri = paramString;
    byte[] arrayOfByte = this.mapHelper.getCachedMapPng(localMapRenderRequest);
    if (arrayOfByte != null)
      return arrayOfByte;
    paramList.add(new Runnable()
    {
      public void run()
      {
        ListenableFuture localListenableFuture = ResourceLoadingWebViewClient.this.mapHelper.renderMapToPng(localMapRenderRequest);
        try
        {
          localListenableFuture.get();
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          Thread.currentThread().interrupt();
          localListenableFuture.cancel(true);
          return;
        }
        catch (ExecutionException localExecutionException)
        {
          FormattingLogger localFormattingLogger = ResourceLoadingWebViewClient.logger;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = paramString;
          localFormattingLogger.e(localExecutionException, "Map rendering error, uri: %s", arrayOfObject);
        }
      }
    });
    return null;
  }

  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    Assert.assertNotUiThread();
    Timer localTimer = new Timer();
    ArrayList localArrayList = new ArrayList();
    boolean bool1 = TextUtils.isEmpty(paramString);
    byte[] arrayOfByte = null;
    String str1 = null;
    String str2 = null;
    Uri localUri;
    String str3;
    if (!bool1)
    {
      localUri = Uri.parse(paramString);
      str3 = localUri.getScheme();
      if ("data".equals(str3))
        return null;
      if (!"file".equals(str3))
        break label321;
      boolean bool4 = FILE_WHITELIST.containsKey(localUri.getPath());
      arrayOfByte = null;
      str1 = null;
      str2 = null;
      if (bool4)
      {
        str2 = localUri.getPath();
        str1 = (String)FILE_WHITELIST.get(localUri.getPath());
      }
    }
    while (true)
    {
      Object localObject = null;
      if (arrayOfByte != null)
        try
        {
          localObject = new ByteArrayInputStream(arrayOfByte);
          label148: if (localObject != null)
          {
            if (str1 == null)
              str1 = ContentTypes.sniff((InputStream)localObject);
            localTimer.log(TAG, "Loaded: " + paramString + " (" + str1 + ")");
            WebResourceResponse localWebResourceResponse = new WebResourceResponse(str1, "", (InputStream)localObject);
            return localWebResourceResponse;
          }
        }
        catch (IOException localIOException1)
        {
          logger.e(localIOException1, "Error reading: %s", new Object[] { str2 });
          if (localObject == null);
        }
      try
      {
        ((InputStream)localObject).close();
        label262: if (this.loadUncachedResources)
        {
          Iterator localIterator = localArrayList.iterator();
          while (true)
            if (localIterator.hasNext())
            {
              final Runnable localRunnable = (Runnable)localIterator.next();
              MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
              {
                public void run()
                {
                  new AsyncTask()
                  {
                    protected Void doInBackground(Void[] paramAnonymous2ArrayOfVoid)
                    {
                      Assert.assertNotUiThread();
                      if (!isCancelled())
                        ResourceLoadingWebViewClient.1.this.val$runnable.run();
                      return null;
                    }

                    protected void onPostExecute(Void paramAnonymous2Void)
                    {
                      Assert.assertUiThread();
                      if (!isCancelled())
                        ResourceLoadingWebViewClient.this.resourceLoadedCallback.onResourceLoaded();
                    }

                    protected void onPreExecute()
                    {
                      Assert.assertUiThread();
                      ResourceLoadingWebViewClient.this.resourceLoadTasks.add(this);
                    }
                  }
                  .executeOnExecutor(AsyncThreadExecutorManager.getThreadPoolExecutor(), new Void[0]);
                }
              });
              continue;
              label321: if ("attachment".equals(str3))
              {
                TimelineNano.Attachment localAttachment2 = findAttachmentForAttachmentUri(localUri);
                arrayOfByte = null;
                str1 = null;
                str2 = null;
                if (localAttachment2 == null)
                  break;
                str2 = loadAttachment(localAttachment2, localArrayList);
                str1 = localAttachment2.contentType;
                arrayOfByte = null;
                break;
              }
              if ("cid".equals(str3))
              {
                TimelineNano.Attachment localAttachment1 = findAttachmentForCidUri(localUri);
                arrayOfByte = null;
                str1 = null;
                str2 = null;
                if (localAttachment1 == null)
                  break;
                str2 = loadAttachment(localAttachment1, localArrayList);
                str1 = localAttachment1.contentType;
                arrayOfByte = null;
                break;
              }
              if (("http".equals(str3)) || ("https".equals(str3)))
              {
                String str4 = localUri.toString();
                ImageUrlHelper.ImageDownloadParams localImageDownloadParams = this.imageUrlHelper.getImageDownloadParams(str4);
                str2 = loadHttpResource(new BlockingDownloadTask(str4, localImageDownloadParams.width, localImageDownloadParams.height, localImageDownloadParams.cropType), localArrayList);
                arrayOfByte = null;
                str1 = null;
                break;
              }
              boolean bool2 = "glass".equals(str3);
              arrayOfByte = null;
              str1 = null;
              str2 = null;
              if (!bool2)
                break;
              boolean bool3 = MapHelper.isGlassMapUri(localUri);
              arrayOfByte = null;
              str1 = null;
              str2 = null;
              if (!bool3)
                break;
              arrayOfByte = loadMap(paramString, localArrayList);
              str1 = "image/png";
              str2 = null;
              break;
              localObject = null;
              if (str2 == null)
                break label148;
              BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(str2));
              localObject = localBufferedInputStream;
              break label148;
            }
        }
        if (this.loadUncachedResources)
        {
          FormattingLogger localFormattingLogger = logger;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(localArrayList.size());
          arrayOfObject[1] = paramString;
          localFormattingLogger.d("Resource not cached; running %d load task(s) asynchronously for: %s", arrayOfObject);
        }
        while (true)
        {
          return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
          logger.d("Resource not cached; will not load: %s", new Object[] { paramString });
        }
      }
      catch (IOException localIOException2)
      {
        break label262;
      }
    }
  }

  private class BlockingDownloadTask extends ImageProxyDownloadTask
  {
    BlockingDownloadTask(String paramInt1, int paramInt2, int paramInt3, int arg5)
    {
      super(paramInt1, paramInt2, paramInt3, i);
    }

    protected void bindContent(String paramString)
    {
    }

    public String getPath()
    {
      return loadContent(null);
    }

    protected void prepareContent()
    {
    }
  }

  public static abstract interface ResourceLoadedCallback
  {
    public abstract void onResourceLoaded();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.html.ResourceLoadingWebViewClient
 * JD-Core Version:    0.6.2
 */