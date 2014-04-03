.class public Lcom/google/glass/entity/MosaicHelper;
.super Ljava/lang/Object;
.source "MosaicHelper.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "mosaic"

.field private static final MOSAIC_CACHE_MAX_BYTES:I = 0x400000

.field private static final SCHEME:Ljava/lang/String; = "glass"

.field private static instance:Lcom/google/glass/entity/MosaicHelper;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final mosaicCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/glass/entity/MosaicHelper$1;

    const/high16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/google/glass/entity/MosaicHelper$1;-><init>(Lcom/google/glass/entity/MosaicHelper;I)V

    iput-object v0, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    .line 73
    iput-object p1, p0, Lcom/google/glass/entity/MosaicHelper;->context:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/widget/MosaicView;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/entity/MosaicHelper;->mosaicViewToPng(Lcom/google/glass/widget/MosaicView;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/entity/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/entity/MosaicHelper;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/glass/entity/MosaicHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/entity/MosaicHelper;->instance:Lcom/google/glass/entity/MosaicHelper;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 45
    sget-object v0, Lcom/google/glass/entity/MosaicHelper;->instance:Lcom/google/glass/entity/MosaicHelper;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/google/glass/entity/MosaicHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/entity/MosaicHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/entity/MosaicHelper;->instance:Lcom/google/glass/entity/MosaicHelper;

    .line 48
    :cond_0
    return-void
.end method

.method public static isGlassMosaicUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "glass"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mosaic"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mosaicViewToPng(Lcom/google/glass/widget/MosaicView;)[B
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 138
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 139
    invoke-virtual {p1, v5}, Lcom/google/glass/widget/MosaicView;->setDrawingCacheEnabled(Z)V

    .line 141
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/widget/MosaicView;->measure(II)V

    .line 144
    invoke-virtual {p1}, Lcom/google/glass/widget/MosaicView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/glass/widget/MosaicView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Lcom/google/glass/widget/MosaicView;->layout(IIII)V

    .line 145
    invoke-virtual {p1, v5}, Lcom/google/glass/widget/MosaicView;->buildDrawingCache(Z)V

    .line 146
    invoke-virtual {p1}, Lcom/google/glass/widget/MosaicView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 150
    invoke-virtual {p1, v4}, Lcom/google/glass/widget/MosaicView;->setDrawingCacheEnabled(Z)V

    .line 151
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getCachedMosaicPng(Lcom/google/glass/widget/ImageLoader;)[B
    .locals 3
    .parameter "imageLoader"

    .prologue
    .line 81
    iget-object v1, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    invoke-interface {p1}, Lcom/google/glass/widget/ImageLoader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renderMosaicToPng(Lcom/google/glass/widget/ImageLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .parameter "imageLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/widget/ImageLoader;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-interface {p1}, Lcom/google/glass/widget/ImageLoader;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    monitor-enter v5

    .line 96
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;

    invoke-virtual {v4, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 97
    .local v0, cachedData:[B
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    sget-object v4, Lcom/google/glass/entity/MosaicHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Returning mosaic from cache"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 134
    :goto_0
    return-object v2

    .line 97
    .end local v0           #cachedData:[B
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 103
    .restart local v0       #cachedData:[B
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    .line 105
    .local v2, resultFuture:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<[B>;"
    new-instance v3, Lcom/google/glass/widget/MosaicView;

    iget-object v4, p0, Lcom/google/glass/entity/MosaicHelper;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/glass/widget/MosaicView;-><init>(Landroid/content/Context;)V

    .line 107
    .local v3, view:Lcom/google/glass/widget/MosaicView;
    new-instance v4, Lcom/google/glass/entity/MosaicHelper$2;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/google/glass/entity/MosaicHelper$2;-><init>(Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/widget/MosaicView;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v3, v4}, Lcom/google/glass/widget/MosaicView;->setCellsLoadedListener(Lcom/google/glass/widget/MosaicView$CellsLoadedListener;)V

    .line 128
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/google/glass/entity/MosaicHelper$3;

    invoke-direct {v5, p0, v3, p1}, Lcom/google/glass/entity/MosaicHelper$3;-><init>(Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/widget/MosaicView;Lcom/google/glass/widget/ImageLoader;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
