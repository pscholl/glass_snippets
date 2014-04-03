package com.google.glass.html;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.View.MeasureSpec;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebSettings.ZoomDensity;
import android.webkit.WebView;
import android.webkit.WebView.PictureListener;
import android.widget.FrameLayout;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.build.BuildHelper;
import com.google.glass.entity.MosaicHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.logging.Log;
import com.google.glass.maps.MapHelper;
import com.google.glass.predicates.Assert;
import com.google.glass.timeline.TimelineHelper;
import com.google.glass.userevent.UserEventAction;
import com.google.glass.userevent.UserEventHelper;
import com.google.glass.util.CachedBitmapFactory;
import com.google.glass.util.Labs;
import com.google.glass.util.Labs.Feature;
import com.google.glass.util.MainThreadExecutorManager;
import com.google.glass.util.PrimitiveUtils;
import com.google.googlex.glass.common.proto.TimelineNano.TimelineItem;
import java.io.File;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class HtmlRenderer
{
  private static final Pattern CSS_URL_ATTACHMENT = Pattern.compile("url\\(['\"]?(attachment:\\d+)['\"]?\\)");

  @VisibleForTesting
  static final String DEFAULT_BASE_URL = "file:///android_asset/";

  @VisibleForTesting
  static final boolean FORCE_COMPILED_CSS = false;
  public static final String GLASS_CSS_FILE = "stylesheets/base_style.css";

  @VisibleForTesting
  static final String GOOGLE_BASE_URL = "https://www.google.com";
  private static final int MAX_POOL_SIZE = 10;
  private static final Pattern SRC_ATTACHMENT;
  private static final String TAG = HtmlRenderer.class.getSimpleName();
  private static final FormattingLogger logger = FormattingLoggers.getLogger(TAG);
  private static Pool staticPool;
  private boolean autoSizerFinished;
  private final CachedBitmapFactory bitmapFactory;
  private final Context context;
  private boolean hasCoverPage;
  private boolean hasWebviewRendered;
  private final int height;
  private boolean isAllocated;
  private boolean isWebViewAcquired;
  private String itemId;
  private long itemModifiedTime;
  private int numPages = 1;
  private boolean onlyLoadFirstPage = true;
  private SparseArray<Canvas> pageCanvases = new SparseArray();
  private OnPageCountChangeListener pageChangeListener;
  private SparseArray<OnRenderListener> pageListeners = new SparseArray();
  private boolean paginationFinished;
  private HtmlRenderCache renderCache;
  private final List<AsyncTask<Void, Void, Void>> resourceLoadTasks = new ArrayList();
  private UserEventHelper userEventHelper;
  private WebView webView;
  private WebViewRenderedOnceListener webViewHasRenderedListener;
  private final int width;

  static
  {
    SRC_ATTACHMENT = Pattern.compile("src=['\"](attachment:\\d+)['\"]");
  }

  private HtmlRenderer(Context paramContext, CachedBitmapFactory paramCachedBitmapFactory, HtmlRenderCache paramHtmlRenderCache)
  {
    Timer localTimer = new Timer();
    this.context = paramContext;
    this.bitmapFactory = paramCachedBitmapFactory;
    this.renderCache = paramHtmlRenderCache;
    if ((Labs.isEnabled(Labs.Feature.WK_CH)) && (!Assert.isTest()) && (paramHtmlRenderCache == null))
      throw new IllegalArgumentException("renderCache can not be null.");
    this.userEventHelper = new UserEventHelper(paramContext);
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    this.width = localDisplayMetrics.widthPixels;
    this.height = localDisplayMetrics.heightPixels;
    this.webView = createWebView(paramContext);
    this.webView.addJavascriptInterface(new JavaScriptInterface(), "GLASS");
    MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
    {
      public void run()
      {
        if (HtmlRenderer.this.webView != null)
          HtmlRenderer.this.doLayout(HtmlRenderer.this.webView, HtmlRenderer.this.width, HtmlRenderer.this.height);
      }
    });
    localTimer.log(TAG, "Created HtmlRenderer");
  }

  @VisibleForTesting
  static HtmlRenderer createForTesting(Context paramContext, CachedBitmapFactory paramCachedBitmapFactory, HtmlRenderCache paramHtmlRenderCache)
  {
    Assert.assertIsTest();
    return new HtmlRenderer(paramContext, paramCachedBitmapFactory, paramHtmlRenderCache);
  }

  private static WebView createWebView(Context paramContext)
  {
    WebView localWebView = new WebView(paramContext);
    localWebView.setHorizontalScrollBarEnabled(false);
    localWebView.setVerticalScrollBarEnabled(false);
    if (!BuildHelper.isJellyBean())
    {
      localWebView.setLayerType(1, null);
      localWebView.setBackgroundColor(0);
    }
    WebSettings localWebSettings = localWebView.getSettings();
    localWebSettings.setBuiltInZoomControls(false);
    localWebSettings.setSupportZoom(false);
    localWebSettings.setDefaultZoom(WebSettings.ZoomDensity.FAR);
    localWebSettings.setLoadWithOverviewMode(false);
    localWebSettings.setRenderPriority(WebSettings.RenderPriority.LOW);
    localWebSettings.setCacheMode(2);
    localWebSettings.setJavaScriptEnabled(true);
    FrameLayout localFrameLayout = new FrameLayout(paramContext);
    localFrameLayout.addView(localWebView);
    if (!BuildHelper.isJellyBean())
      localFrameLayout.setLayerType(1, null);
    localWebView.setDrawingCacheEnabled(true);
    localWebView.setDrawingCacheQuality(1048576);
    return localWebView;
  }

  private void destroy()
  {
    this.webView.destroy();
    this.webView = null;
  }

  private void doLayout(WebView paramWebView, int paramInt1, int paramInt2)
  {
    Assert.assertUiThread();
    paramWebView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824));
    paramWebView.layout(0, 0, paramInt1, paramInt2);
  }

  private String getCssUrl(Context paramContext)
  {
    File localFile = new File(paramContext.getFilesDir(), "stylesheets/base_style.css");
    if (localFile.exists())
      return "file://" + localFile.getAbsolutePath();
    return "file:///android_asset/base_style.css";
  }

  public static String getKeyForPageNumber(String paramString, long paramLong, int paramInt, boolean paramBoolean)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Long.valueOf(paramLong);
    arrayOfObject[2] = Integer.valueOf(paramInt);
    arrayOfObject[3] = Boolean.valueOf(paramBoolean);
    return String.format("%s_%d_%d_%s", arrayOfObject);
  }

  public static void initialize(Context paramContext, CachedBitmapFactory paramCachedBitmapFactory, HtmlRenderCache paramHtmlRenderCache)
  {
    Assert.assertUiThread();
    staticPool = new Pool(paramContext, paramCachedBitmapFactory, paramHtmlRenderCache);
  }

  public static HtmlRenderer obtain()
  {
    Assert.assertUiThread();
    if (staticPool == null)
    {
      logger.w("Cannot obtain HTML renderer; pool has not been initialized.", new Object[0]);
      return null;
    }
    return staticPool.obtainRenderer();
  }

  private void render(final TimelineNano.TimelineItem paramTimelineItem, final int paramInt, boolean paramBoolean1, final boolean paramBoolean2, OnPageCountChangeListener paramOnPageCountChangeListener)
  {
    Assert.assertUiThread();
    if (!this.isAllocated)
      throw new IllegalStateException("Called render() on an unallocated renderer!");
    Timer localTimer = new Timer();
    this.itemId = paramTimelineItem.id;
    this.pageChangeListener = paramOnPageCountChangeListener;
    this.onlyLoadFirstPage = paramBoolean2;
    this.hasCoverPage = false;
    this.autoSizerFinished = false;
    this.hasWebviewRendered = false;
    this.paginationFinished = false;
    this.itemModifiedTime = PrimitiveUtils.safeLong(paramTimelineItem.modifiedTime);
    this.webView.setWebViewClient(new ResourceLoadingWebViewClient(this.context, paramTimelineItem, this.bitmapFactory, MapHelper.getInstance(this.context), MosaicHelper.getInstance(this.context), paramBoolean1, this.resourceLoadTasks, new ResourceLoadingWebViewClient.ResourceLoadedCallback()
    {
      public void onResourceLoaded()
      {
        Assert.assertUiThread();
        if ((HtmlRenderer.this.isAllocated) && (paramTimelineItem.id.equals(HtmlRenderer.this.itemId)))
          HtmlRenderer.this.render(paramTimelineItem, paramInt, false, paramBoolean2, HtmlRenderer.this.pageChangeListener);
      }
    }));
    if (Log.isLoggable(TAG, 2))
      this.webView.setWebChromeClient(new WebChromeClient()
      {
        public void onConsoleMessage(String paramAnonymousString1, int paramAnonymousInt, String paramAnonymousString2)
        {
          HtmlRenderer.logger.v(paramAnonymousString1, new Object[0]);
        }
      });
    this.webView.setPictureListener(new WebView.PictureListener()
    {
      public void onNewPicture(WebView paramAnonymousWebView, Picture paramAnonymousPicture)
      {
        boolean bool = true;
        FormattingLogger localFormattingLogger = HtmlRenderer.logger;
        Object[] arrayOfObject = new Object[6];
        arrayOfObject[0] = Integer.toHexString(System.identityHashCode(HtmlRenderer.this));
        arrayOfObject[bool] = HtmlRenderer.this.itemId;
        arrayOfObject[2] = Boolean.valueOf(HtmlRenderer.this.isAllocated);
        arrayOfObject[3] = Boolean.valueOf(HtmlRenderer.this.autoSizerFinished);
        arrayOfObject[4] = Boolean.valueOf(HtmlRenderer.this.paginationFinished);
        arrayOfObject[5] = Boolean.valueOf(paramBoolean2);
        localFormattingLogger.v("Renderer %s: onNewPicture() for itemId: %s, with isAllocated: %b, autoSizerFinished: %b, paginationFinished: %b, onlyLoadFirstPage: %b", arrayOfObject);
        HtmlRenderer localHtmlRenderer;
        if (HtmlRenderer.this.isAllocated)
          if (!HtmlRenderer.this.hasWebviewRendered)
          {
            localHtmlRenderer = HtmlRenderer.this;
            if ((!HtmlRenderer.this.autoSizerFinished) || ((!HtmlRenderer.this.paginationFinished) && (!paramBoolean2)))
              break label210;
          }
        while (true)
        {
          HtmlRenderer.access$1702(localHtmlRenderer, bool);
          HtmlRenderer.this.renderToImage(HtmlRenderer.this.webView);
          if ((HtmlRenderer.this.webViewHasRenderedListener != null) && (HtmlRenderer.this.hasWebviewRendered))
            HtmlRenderer.this.webViewHasRenderedListener.onWebViewRendered();
          return;
          label210: bool = false;
        }
      }
    });
    String str = "file:///android_asset/";
    if ((TimelineHelper.hasAttachmentOfTypes(paramTimelineItem, new String[] { "application/glass+html" })) && (paramTimelineItem.sourceType == 1))
      str = "https://www.google.com";
    this.webView.loadDataWithBaseURL(str, generateHtml(paramTimelineItem, paramInt), "text/html", "UTF-8", null);
    localTimer.log(TAG, "Prepare: " + this.itemId);
  }

  private void renderToImage(WebView paramWebView)
  {
    Assert.assertUiThread();
    if (this.isAllocated)
      for (int i = 0; i < this.pageListeners.size(); i++)
        renderToImage(paramWebView, this.pageListeners.keyAt(i));
  }

  private void renderToImage(WebView paramWebView, int paramInt)
  {
    if (!this.hasWebviewRendered)
      return;
    Timer localTimer = new Timer();
    int i;
    int j;
    label126: UserEventHelper localUserEventHelper;
    UserEventAction localUserEventAction;
    if ((!this.onlyLoadFirstPage) && (this.hasCoverPage))
    {
      i = 1;
      paramWebView.scrollTo(this.width * (paramInt + i), 0);
      Canvas localCanvas1 = (Canvas)this.pageCanvases.get(paramInt);
      if (localCanvas1 != null)
        ((FrameLayout)paramWebView.getParent()).draw(localCanvas1);
      if (Labs.isEnabled(Labs.Feature.WK_CH))
      {
        String str = getKeyForPageNumber(this.itemId, this.itemModifiedTime, paramInt, this.onlyLoadFirstPage);
        Bitmap localBitmap = (Bitmap)this.renderCache.get(str);
        if (localBitmap != null)
          break label302;
        j = 1;
        if (j != 0)
          localBitmap = Bitmap.createBitmap(this.width, this.height, Bitmap.Config.ARGB_8888);
        Canvas localCanvas2 = new Canvas(localBitmap);
        ((FrameLayout)paramWebView.getParent()).draw(localCanvas2);
        if (j != 0)
          this.renderCache.put(str, localBitmap);
        localUserEventHelper = this.userEventHelper;
        localUserEventAction = UserEventAction.HTML_CACHE_INSERTION;
        if (j != 0)
          break label308;
      }
    }
    label302: label308: for (boolean bool = true; ; bool = false)
    {
      localUserEventHelper.log(localUserEventAction, UserEventHelper.createEventTuple("inv", Boolean.valueOf(bool), new Object[0]));
      OnRenderListener localOnRenderListener = (OnRenderListener)this.pageListeners.get(paramInt);
      Assert.assertNotNull(localOnRenderListener);
      localOnRenderListener.onRender(this);
      localTimer.log(TAG, "RenderToImage: " + this.itemId + ", page number: " + paramInt);
      return;
      i = 0;
      break;
      j = 0;
      break label126;
    }
  }

  private String rewriteAttachmentUrls(String paramString)
  {
    String str = SRC_ATTACHMENT.matcher(paramString).replaceAll("src=\"$1#" + this.itemId + "\"");
    return CSS_URL_ATTACHMENT.matcher(str).replaceAll("url($1#" + this.itemId + ")");
  }

  private void setIsAllocated(boolean paramBoolean)
  {
    this.isAllocated = paramBoolean;
  }

  public FrameLayout acquireWebview(WebViewRenderedOnceListener paramWebViewRenderedOnceListener)
  {
    Assert.assertFalse(this.isWebViewAcquired);
    this.webViewHasRenderedListener = paramWebViewRenderedOnceListener;
    this.isWebViewAcquired = true;
    return (FrameLayout)this.webView.getParent();
  }

  @VisibleForTesting
  String generateHtml(TimelineNano.TimelineItem paramTimelineItem, int paramInt)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("<html><head>");
    if (BuildHelper.isJellyBean())
      localStringBuilder1.append("<meta name=\"viewport\" content=\"width=device-width, target-densityDpi=device-dpi\">");
    localStringBuilder1.append("<link rel=\"stylesheet\" type=\"text/css\" href=\"").append(getCssUrl(this.context)).append("\" />");
    localStringBuilder1.append("<script src=\"").append("file:///android_asset/").append("cards_compiled.js\"></script>");
    localStringBuilder1.append("<script>AutoSizer.init();</script>");
    localStringBuilder1.append("<style>footer {margin-right:").append(paramInt).append("px;}</style>");
    localStringBuilder1.append("</head><body>");
    StringBuilder localStringBuilder2 = new StringBuilder();
    localStringBuilder2.append(localStringBuilder1);
    localStringBuilder2.append(rewriteAttachmentUrls(paramTimelineItem.html));
    localStringBuilder2.append("</body></html>");
    return localStringBuilder2.toString();
  }

  public int getNumPages()
  {
    return this.numPages;
  }

  public boolean hasWebViewRendered()
  {
    return this.hasWebviewRendered;
  }

  public boolean isDoneLoadingResources()
  {
    Iterator localIterator = this.resourceLoadTasks.iterator();
    while (localIterator.hasNext())
      if (((AsyncTask)localIterator.next()).getStatus() != AsyncTask.Status.FINISHED)
        return false;
    return true;
  }

  public void registerListenerForPage(int paramInt, Canvas paramCanvas, OnRenderListener paramOnRenderListener)
  {
    Assert.assertNull(this.pageListeners.get(paramInt));
    this.pageListeners.put(paramInt, paramOnRenderListener);
    if (paramCanvas != null)
    {
      Assert.assertNull(this.pageCanvases.get(paramInt));
      this.pageCanvases.put(paramInt, paramCanvas);
    }
    renderToImage(this.webView, paramInt);
  }

  public void release()
  {
    Assert.assertUiThread();
    if (!this.isAllocated)
      throw new IllegalStateException("Called release() on an unallocated renderer!");
    this.itemId = null;
    this.webView.setWebViewClient(null);
    this.webView.setPictureListener(null);
    this.webView.loadUrl("about:blank");
    Iterator localIterator = this.resourceLoadTasks.iterator();
    while (localIterator.hasNext())
      ((AsyncTask)localIterator.next()).cancel(true);
    this.resourceLoadTasks.clear();
    this.hasWebviewRendered = false;
    this.numPages = 1;
    this.pageChangeListener = null;
    this.pageListeners.clear();
    this.pageCanvases.clear();
    staticPool.releaseRenderer(this);
  }

  public void releaseWebview()
  {
    Assert.assertTrue(this.isWebViewAcquired);
    this.webViewHasRenderedListener = null;
    this.isWebViewAcquired = false;
    renderToImage(this.webView);
  }

  public void render(TimelineNano.TimelineItem paramTimelineItem, int paramInt, boolean paramBoolean, OnPageCountChangeListener paramOnPageCountChangeListener)
  {
    render(paramTimelineItem, paramInt, true, paramBoolean, paramOnPageCountChangeListener);
  }

  public void unregisterListenerForPage(int paramInt)
  {
    this.pageListeners.remove(paramInt);
    this.pageCanvases.remove(paramInt);
  }

  public class JavaScriptInterface
  {
    public JavaScriptInterface()
    {
    }

    @JavascriptInterface
    public void autoSizingComplete()
    {
      FormattingLogger localFormattingLogger = HtmlRenderer.logger;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = HtmlRenderer.this.itemId;
      arrayOfObject[1] = Boolean.valueOf(HtmlRenderer.this.onlyLoadFirstPage);
      localFormattingLogger.v("autoSizingComplete for item: %s, onlyLoadingFirstPage: %s", arrayOfObject);
      HtmlRenderer.access$1102(HtmlRenderer.this, true);
      MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
      {
        public void run()
        {
          if (HtmlRenderer.this.webView != null)
            HtmlRenderer.this.webView.loadUrl("javascript:Paginator.init(" + HtmlRenderer.this.onlyLoadFirstPage + ");");
        }
      });
    }

    @JavascriptInterface
    public void paginationComplete(String paramString1, String paramString2, String paramString3)
    {
      FormattingLogger localFormattingLogger = HtmlRenderer.logger;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = HtmlRenderer.this.itemId;
      arrayOfObject[1] = paramString1;
      arrayOfObject[2] = paramString2;
      arrayOfObject[3] = paramString3;
      localFormattingLogger.v("paginationComplete for item: %s to: %s x %s, %s", arrayOfObject);
      int i = HtmlRenderer.this.width;
      try
      {
        int j = new BigDecimal(paramString1).intValue();
        i = j;
        HtmlRenderer.access$602(HtmlRenderer.this, Boolean.valueOf(paramString3).booleanValue());
        HtmlRenderer.access$702(HtmlRenderer.this, Math.max((int)Math.ceil(i / HtmlRenderer.this.width), 1));
        if ((!HtmlRenderer.this.onlyLoadFirstPage) && (HtmlRenderer.this.hasCoverPage))
          HtmlRenderer.access$720(HtmlRenderer.this, 1);
        MainThreadExecutorManager.getMainThreadExecutor().execute(new Runnable()
        {
          public void run()
          {
            if (HtmlRenderer.this.pageChangeListener != null)
              HtmlRenderer.this.pageChangeListener.onPageCountChange(HtmlRenderer.this.numPages);
          }
        });
        HtmlRenderer.access$1002(HtmlRenderer.this, true);
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        while (true)
          HtmlRenderer.logger.e(localNumberFormatException, "Received bad content width from JS: %s", new Object[] { paramString1 });
      }
    }
  }

  public static abstract interface OnPageCountChangeListener
  {
    public abstract void onPageCountChange(int paramInt);
  }

  public static abstract interface OnRenderListener
  {
    public abstract void onRender(HtmlRenderer paramHtmlRenderer);
  }

  private static class Pool
  {
    private final ArrayList<HtmlRenderer> availableRenderers = new ArrayList();
    private final CachedBitmapFactory bitmapFactory;
    private final Context context;
    private final HtmlRenderCache renderCache;

    Pool(Context paramContext, CachedBitmapFactory paramCachedBitmapFactory, HtmlRenderCache paramHtmlRenderCache)
    {
      this.context = paramContext;
      this.bitmapFactory = paramCachedBitmapFactory;
      this.renderCache = paramHtmlRenderCache;
    }

    HtmlRenderer obtainRenderer()
    {
      try
      {
        if (this.availableRenderers.size() > 0);
        for (HtmlRenderer localHtmlRenderer = (HtmlRenderer)this.availableRenderers.remove(-1 + this.availableRenderers.size()); ; localHtmlRenderer = new HtmlRenderer(this.context, this.bitmapFactory, this.renderCache, null))
        {
          localHtmlRenderer.setIsAllocated(true);
          return localHtmlRenderer;
        }
      }
      finally
      {
      }
    }

    void releaseRenderer(HtmlRenderer paramHtmlRenderer)
    {
      try
      {
        paramHtmlRenderer.setIsAllocated(false);
        if (this.availableRenderers.size() < 10)
          this.availableRenderers.add(paramHtmlRenderer);
        while (true)
        {
          return;
          paramHtmlRenderer.destroy();
        }
      }
      finally
      {
      }
    }
  }

  public static abstract interface WebViewRenderedOnceListener
  {
    public abstract void onWebViewRendered();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.html.HtmlRenderer
 * JD-Core Version:    0.6.2
 */