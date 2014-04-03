.class public Lcom/google/glass/html/HtmlRenderer;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;,
        Lcom/google/glass/html/HtmlRenderer$Pool;,
        Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;,
        Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;,
        Lcom/google/glass/html/HtmlRenderer$OnRenderListener;
    }
.end annotation


# static fields
.field private static final CSS_URL_ATTACHMENT:Ljava/util/regex/Pattern; = null

.field static final DEFAULT_BASE_URL:Ljava/lang/String; = "file:///android_asset/"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FORCE_COMPILED_CSS:Z = false
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final GLASS_CSS_FILE:Ljava/lang/String; = "stylesheets/base_style.css"

.field static final GOOGLE_BASE_URL:Ljava/lang/String; = "https://www.google.com"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final SRC_ATTACHMENT:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;


# instance fields
.field private autoSizerFinished:Z

.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final context:Landroid/content/Context;

.field private hasCoverPage:Z

.field private hasWebviewRendered:Z

.field private final height:I

.field private isAllocated:Z

.field private isWebViewAcquired:Z

.field private itemId:Ljava/lang/String;

.field private itemModifiedTime:J

.field private numPages:I

.field private onlyLoadFirstPage:Z

.field private pageCanvases:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

.field private pageListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/glass/html/HtmlRenderer$OnRenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private paginationFinished:Z

.field private renderCache:Lcom/google/glass/html/HtmlRenderCache;

.field private final resourceLoadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private webView:Landroid/webkit/WebView;

.field private webViewHasRenderedListener:Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/google/glass/html/HtmlRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 85
    const-string v0, "src=[\'\"](attachment:\\d+)[\'\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->SRC_ATTACHMENT:Ljava/util/regex/Pattern;

    .line 89
    const-string v0, "url\\([\'\"]?(attachment:\\d+)[\'\"]?\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->CSS_URL_ATTACHMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V
    .locals 5
    .parameter "context"
    .parameter "bitmapFactory"
    .parameter "renderCache"

    .prologue
    const/4 v3, 0x1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    .line 264
    iput v3, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    .line 269
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    .line 283
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    .line 289
    iput-boolean v3, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    .line 315
    new-instance v1, Lcom/google/glass/html/Timer;

    invoke-direct {v1}, Lcom/google/glass/html/Timer;-><init>()V

    .line 316
    .local v1, timer:Lcom/google/glass/html/Timer;
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    .line 317
    iput-object p2, p0, Lcom/google/glass/html/HtmlRenderer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 318
    iput-object p3, p0, Lcom/google/glass/html/HtmlRenderer;->renderCache:Lcom/google/glass/html/HtmlRenderCache;

    .line 320
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->WK_CH:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "renderCache can not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_0
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v2, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 329
    .local v0, display:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    .line 330
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/google/glass/html/HtmlRenderer;->height:I

    .line 332
    invoke-static {p1}, Lcom/google/glass/html/HtmlRenderer;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    .line 333
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;

    invoke-direct {v3, p0}, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;-><init>(Lcom/google/glass/html/HtmlRenderer;)V

    const-string v4, "GLASS"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$1;

    invoke-direct {v3, p0}, Lcom/google/glass/html/HtmlRenderer$1;-><init>(Lcom/google/glass/html/HtmlRenderer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 348
    sget-object v2, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    const-string v3, "Created HtmlRenderer"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;Lcom/google/glass/html/HtmlRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/html/HtmlRenderer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/glass/html/HtmlRenderer;->setIsAllocated(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->paginationFinished:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/glass/html/HtmlRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->paginationFinished:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/glass/html/HtmlRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/glass/html/HtmlRenderer;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/html/HtmlRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->height:I

    return v0
.end method

.method static synthetic access$1400(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/html/HtmlRenderer;->doLayout(Landroid/webkit/WebView;II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/glass/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/google/glass/html/HtmlRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/html/HtmlRenderer;)Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webViewHasRenderedListener:Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/html/HtmlRenderer;->destroy()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/html/HtmlRenderer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/html/HtmlRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->hasCoverPage:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/glass/html/HtmlRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->hasCoverPage:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/html/HtmlRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/glass/html/HtmlRenderer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    return p1
.end method

.method static synthetic access$720(Lcom/google/glass/html/HtmlRenderer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/glass/html/HtmlRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/glass/html/HtmlRenderer;)Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

    return-object v0
.end method

.method static createForTesting(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)Lcom/google/glass/html/HtmlRenderer;
    .locals 1
    .parameter "context"
    .parameter "bitmapFactory"
    .parameter "renderCache"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 180
    new-instance v0, Lcom/google/glass/html/HtmlRenderer;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V

    return-object v0
.end method

.method private static createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 636
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 637
    .local v1, webView:Landroid/webkit/WebView;
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 638
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 642
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isJellyBean()Z

    move-result v3

    if-nez v3, :cond_0

    .line 643
    invoke-virtual {v1, v5, v6}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 644
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 647
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 648
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 649
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 650
    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 651
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 652
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 655
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 659
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 663
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 664
    .local v2, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 669
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isJellyBean()Z

    move-result v3

    if-nez v3, :cond_1

    .line 670
    invoke-virtual {v2, v5, v6}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 674
    :cond_1
    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 675
    const/high16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setDrawingCacheQuality(I)V

    .line 677
    return-object v1
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    .line 390
    return-void
.end method

.method private doLayout(Landroid/webkit/WebView;II)V
    .locals 4
    .parameter "webView"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 681
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 682
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 683
    .local v1, widthMeasureSpec:I
    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 684
    .local v0, heightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->measure(II)V

    .line 685
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/webkit/WebView;->layout(IIII)V

    .line 686
    return-void
.end method

.method private getCssUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 616
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "stylesheets/base_style.css"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 617
    .local v0, downloadedCssFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "file:///android_asset/base_style.css"

    goto :goto_0
.end method

.method public static getKeyForPageNumber(Ljava/lang/String;JIZ)Ljava/lang/String;
    .locals 4
    .parameter "itemId"
    .parameter "itemModifiedTime"
    .parameter "pageNumber"
    .parameter "onlyShowingFirstPage"

    .prologue
    .line 764
    const-string v0, "%s_%d_%d_%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V
    .locals 1
    .parameter "context"
    .parameter "bitmapFactory"
    .parameter "renderCache"

    .prologue
    .line 159
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 160
    new-instance v0, Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer$Pool;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V

    sput-object v0, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    .line 161
    return-void
.end method

.method public static obtain()Lcom/google/glass/html/HtmlRenderer;
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 169
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot obtain HTML renderer; pool has not been initialized."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-virtual {v0}, Lcom/google/glass/html/HtmlRenderer$Pool;->obtainRenderer()Lcom/google/glass/html/HtmlRenderer;

    move-result-object v0

    goto :goto_0
.end method

.method private render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
    .locals 12
    .parameter "item"
    .parameter "footerMarginRight"
    .parameter "loadUncachedResources"
    .parameter "onlyLoadFirstPage"
    .parameter "listener"

    .prologue
    .line 448
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 449
    iget-boolean v1, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Called render() on an unallocated renderer!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_0
    new-instance v10, Lcom/google/glass/html/Timer;

    invoke-direct {v10}, Lcom/google/glass/html/Timer;-><init>()V

    .line 454
    .local v10, timer:Lcom/google/glass/html/Timer;
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    .line 455
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

    .line 456
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    .line 457
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/html/HtmlRenderer;->hasCoverPage:Z

    .line 458
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z

    .line 459
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    .line 460
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/html/HtmlRenderer;->paginationFinished:Z

    .line 461
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    invoke-static {v1}, Lcom/google/glass/util/PrimitiveUtils;->safeLong(Ljava/lang/Long;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/html/HtmlRenderer;->itemModifiedTime:J

    .line 464
    iget-object v11, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/maps/MapHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v5

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/entity/MosaicHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/entity/MosaicHelper;

    move-result-object v6

    iget-object v8, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    new-instance v9, Lcom/google/glass/html/HtmlRenderer$2;

    move/from16 v0, p4

    invoke-direct {v9, p0, p1, p2, v0}, Lcom/google/glass/html/HtmlRenderer$2;-><init>(Lcom/google/glass/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZ)V

    move-object v3, p1

    move v7, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/html/ResourceLoadingWebViewClient;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/entity/MosaicHelper;ZLjava/util/List;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V

    invoke-virtual {v11, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 478
    sget-object v1, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/google/glass/logging/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$3;

    invoke-direct {v3, p0}, Lcom/google/glass/html/HtmlRenderer$3;-><init>(Lcom/google/glass/html/HtmlRenderer;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$4;

    move/from16 v0, p4

    invoke-direct {v3, p0, v0}, Lcom/google/glass/html/HtmlRenderer$4;-><init>(Lcom/google/glass/html/HtmlRenderer;Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 518
    const-string v2, "file:///android_asset/"

    .line 519
    .local v2, baseUrl:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "application/glass+html"

    aput-object v4, v1, v3

    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sourceType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 523
    const-string v2, "https://www.google.com"

    .line 525
    :cond_2
    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/html/HtmlRenderer;->generateHtml(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sget-object v1, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method private renderToImage(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "webView"

    .prologue
    .line 690
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 691
    iget-boolean v2, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-eqz v2, :cond_0

    .line 692
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 693
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 694
    .local v1, pageNumber:I
    invoke-direct {p0, p1, v1}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;I)V

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    .end local v0           #i:I
    .end local v1           #pageNumber:I
    :cond_0
    return-void
.end method

.method private renderToImage(Landroid/webkit/WebView;I)V
    .locals 13
    .parameter "webView"
    .parameter "pageNumber"

    .prologue
    .line 706
    iget-boolean v8, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    if-nez v8, :cond_0

    .line 756
    :goto_0
    return-void

    .line 710
    :cond_0
    new-instance v7, Lcom/google/glass/html/Timer;

    invoke-direct {v7}, Lcom/google/glass/html/Timer;-><init>()V

    .line 714
    .local v7, timer:Lcom/google/glass/html/Timer;
    iget-boolean v8, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/google/glass/html/HtmlRenderer;->hasCoverPage:Z

    if-eqz v8, :cond_5

    const/4 v5, 0x1

    .line 717
    .local v5, pageOffset:I
    :goto_1
    iget v8, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    add-int v9, p2, v5

    mul-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 720
    iget-object v8, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Canvas;

    .line 721
    .local v6, renderCanvas:Landroid/graphics/Canvas;
    if-eqz v6, :cond_1

    .line 724
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 730
    :cond_1
    sget-object v8, Lcom/google/glass/util/Labs$Feature;->WK_CH:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v8}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 731
    iget-object v8, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    iget-wide v9, p0, Lcom/google/glass/html/HtmlRenderer;->itemModifiedTime:J

    iget-boolean v11, p0, Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z

    invoke-static {v8, v9, v10, p2, v11}, Lcom/google/glass/html/HtmlRenderer;->getKeyForPageNumber(Ljava/lang/String;JIZ)Ljava/lang/String;

    move-result-object v3

    .line 732
    .local v3, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/glass/html/HtmlRenderer;->renderCache:Lcom/google/glass/html/HtmlRenderCache;

    invoke-virtual {v8, v3}, Lcom/google/glass/html/HtmlRenderCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 733
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_6

    const/4 v1, 0x1

    .line 734
    .local v1, cacheMiss:Z
    :goto_2
    if-eqz v1, :cond_2

    .line 735
    iget v8, p0, Lcom/google/glass/html/HtmlRenderer;->width:I

    iget v9, p0, Lcom/google/glass/html/HtmlRenderer;->height:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 737
    :cond_2
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 738
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 742
    if-eqz v1, :cond_3

    .line 743
    iget-object v8, p0, Lcom/google/glass/html/HtmlRenderer;->renderCache:Lcom/google/glass/html/HtmlRenderCache;

    invoke-virtual {v8, v3, v0}, Lcom/google/glass/html/HtmlRenderCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    :cond_3
    iget-object v9, p0, Lcom/google/glass/html/HtmlRenderer;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v10, Lcom/google/glass/userevent/UserEventAction;->HTML_CACHE_INSERTION:Lcom/google/glass/userevent/UserEventAction;

    const-string v11, "inv"

    if-nez v1, :cond_7

    const/4 v8, 0x1

    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v8, v12}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 752
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #cacheMiss:Z
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #key:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/html/HtmlRenderer$OnRenderListener;

    .line 753
    .local v4, listener:Lcom/google/glass/html/HtmlRenderer$OnRenderListener;
    invoke-static {v4}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-interface {v4, p0}, Lcom/google/glass/html/HtmlRenderer$OnRenderListener;->onRender(Lcom/google/glass/html/HtmlRenderer;)V

    .line 755
    sget-object v8, Lcom/google/glass/html/HtmlRenderer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RenderToImage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", page number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 714
    .end local v4           #listener:Lcom/google/glass/html/HtmlRenderer$OnRenderListener;
    .end local v5           #pageOffset:I
    .end local v6           #renderCanvas:Landroid/graphics/Canvas;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 733
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v5       #pageOffset:I
    .restart local v6       #renderCanvas:Landroid/graphics/Canvas;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 747
    .restart local v1       #cacheMiss:Z
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    :cond_7
    const/4 v8, 0x0

    goto :goto_3
.end method

.method private rewriteAttachmentUrls(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "html"

    .prologue
    .line 629
    sget-object v3, Lcom/google/glass/html/HtmlRenderer;->SRC_ATTACHMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 630
    .local v1, srcMatcher:Ljava/util/regex/Matcher;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "src=\"$1#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, s:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/html/HtmlRenderer;->CSS_URL_ATTACHMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 632
    .local v2, urlMatcher:Ljava/util/regex/Matcher;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url($1#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setIsAllocated(Z)V
    .locals 0
    .parameter "isAllocated"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    .line 394
    return-void
.end method


# virtual methods
.method public acquireWebview(Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "listener"

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isWebViewAcquired:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 567
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer;->webViewHasRenderedListener:Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isWebViewAcquired:Z

    .line 569
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method generateHtml(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Ljava/lang/String;
    .locals 6
    .parameter "item"
    .parameter "footerRightMargin"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .local v3, htmlStartBuilder:Ljava/lang/StringBuilder;
    const-string v4, "<html><head>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isJellyBean()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    const-string v4, "<meta name=\"viewport\" content=\"width=device-width, target-densityDpi=device-dpi\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_0
    const-string v4, "<link rel=\"stylesheet\" type=\"text/css\" href=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/html/HtmlRenderer;->context:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/google/glass/html/HtmlRenderer;->getCssUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v4, "<script src=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file:///android_asset/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cards_compiled.js\"></script>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v4, "<script>AutoSizer.init();</script>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    const-string v4, "<style>footer {margin-right:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "px;}</style>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string v4, "</head><body>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v2, "</body></html>"

    .line 604
    .local v2, htmlEnd:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .local v0, cardHtml:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 607
    iget-object v4, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->html:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/glass/html/HtmlRenderer;->rewriteAttachmentUrls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, firstPage:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    return v0
.end method

.method public hasWebViewRendered()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    return v0
.end method

.method public isDoneLoadingResources()Z
    .locals 4

    .prologue
    .line 398
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    .line 399
    .local v1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 400
    const/4 v2, 0x0

    .line 403
    .end local v1           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerListenerForPage(ILandroid/graphics/Canvas;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V
    .locals 1
    .parameter "pageNumber"
    .parameter "canvas"
    .parameter "listener"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 535
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 539
    if-eqz p2, :cond_0

    .line 542
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p1}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;I)V

    .line 548
    return-void
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 356
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 357
    iget-boolean v2, p0, Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z

    if-nez v2, :cond_0

    .line 358
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Called release() on an unallocated renderer!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :cond_0
    iput-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;

    .line 363
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 364
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 368
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    .line 372
    .local v1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 374
    .end local v1           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 376
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z

    .line 377
    iput v5, p0, Lcom/google/glass/html/HtmlRenderer;->numPages:I

    .line 378
    iput-object v4, p0, Lcom/google/glass/html/HtmlRenderer;->pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

    .line 381
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 382
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 384
    sget-object v2, Lcom/google/glass/html/HtmlRenderer;->staticPool:Lcom/google/glass/html/HtmlRenderer$Pool;

    invoke-virtual {v2, p0}, Lcom/google/glass/html/HtmlRenderer$Pool;->releaseRenderer(Lcom/google/glass/html/HtmlRenderer;)V

    .line 385
    return-void
.end method

.method public releaseWebview()V
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isWebViewAcquired:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webViewHasRenderedListener:Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/html/HtmlRenderer;->isWebViewAcquired:Z

    .line 582
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;)V

    .line 583
    return-void
.end method

.method public render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
    .locals 6
    .parameter "item"
    .parameter "footerMarginRight"
    .parameter "onlyLoadFirstPage"
    .parameter "listener"

    .prologue
    .line 425
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V

    .line 426
    return-void
.end method

.method public unregisterListenerForPage(I)V
    .locals 1
    .parameter "pageNumber"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 556
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer;->pageCanvases:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 557
    return-void
.end method
