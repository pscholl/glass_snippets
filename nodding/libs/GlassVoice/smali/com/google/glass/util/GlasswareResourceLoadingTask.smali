.class public abstract Lcom/google/glass/util/GlasswareResourceLoadingTask;
.super Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.source "GlasswareResourceLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
        "<TResult;>;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final CACHE_RETRY_DELAY_MS:J = 0x0L

#the value of this static final field might be set in the static constructor
.field static final CACHE_VALIDATION_INTERVAL_MS:J = 0x0L

.field private static final MAX_CACHE_ENTRIES:I = 0x40

.field private static final PARSER:Lcom/google/glass/net/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SHARED_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final cacheFilename:Ljava/lang/String;

.field private final cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final clock:Lcom/google/glass/util/Clock;

.field private entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final projectId:Ljava/lang/String;

.field private final requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private final resourceType:I

.field private final sharedCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 49
    new-instance v0, Lcom/google/glass/net/ProtoParser;

    new-instance v1, Lcom/google/glass/util/GlasswareResourceLoadingTask$1;

    invoke-direct {v1}, Lcom/google/glass/util/GlasswareResourceLoadingTask$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/ProtoParser;-><init>(Lcom/google/glass/net/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->PARSER:Lcom/google/glass/net/ProtoParser;

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->CACHE_RETRY_DELAY_MS:J

    .line 71
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "cachedFilesManager"
    .parameter "requestDispatcher"
    .parameter
    .parameter "clock"
    .parameter "backgroundExecutor"
    .parameter "projectId"
    .parameter "resourceType"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/util/CachedFilesManager;",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<*>;>;",
            "Lcom/google/glass/util/Clock;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    .local p4, sharedCache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry<*>;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>(Landroid/content/Context;)V

    .line 155
    iput-object p2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 156
    iput-object p3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 157
    iput-object p4, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    .line 158
    iput-object p5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/util/Clock;

    .line 159
    iput-object p6, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 160
    iput-object p7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p8}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->getFilenameSuffix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    .line 162
    iput p8, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:I

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "projectId"
    .parameter "resourceType"

    .prologue
    .line 141
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/GlasswareResourceLoadingTask;->SHARED_CACHE:Landroid/util/LruCache;

    new-instance v5, Lcom/google/glass/util/Clock$Impl;

    invoke-direct {v5}, Lcom/google/glass/util/Clock$Impl;-><init>()V

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/util/GlasswareResourceLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/util/GlasswareResourceLoadingTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->downloadResourceAndUpdateValidationTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/util/GlasswareResourceLoadingTask;)Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/util/GlasswareResourceLoadingTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->loadFromDiskCache()Z

    move-result v0

    return v0
.end method

.method private downloadResource()Z
    .locals 14

    .prologue
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 278
    sget-object v5, Lcom/google/glass/util/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Requesting resource: %s:%s, fingerprint=%s"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v10, v9, v7

    iget v10, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    iget-object v10, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v10}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-interface {v5, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    new-instance v3, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;-><init>()V

    .line 282
    .local v3, request:Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    iget v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:I

    iput v5, v3, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type:I

    .line 283
    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    iput-object v5, v3, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    .line 284
    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v5}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    .line 286
    const/4 v4, 0x0

    .line 289
    .local v4, response:Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v8, Lcom/google/glass/net/ServerConstants$Action;->RESOURCE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v9, Lcom/google/glass/util/GlasswareResourceLoadingTask;->PARSER:Lcom/google/glass/net/ProtoParser;

    invoke-virtual {v5, v8, v3, v9}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v2

    .line 291
    .local v2, r:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;>;"
    invoke-virtual {v2}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v2           #r:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;>;"
    :goto_0
    if-eqz v4, :cond_1

    iget v5, v4, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    if-nez v5, :cond_1

    .line 297
    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([B)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 298
    sget-object v5, Lcom/google/glass/util/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "New resource: %s:%s, fingerprint=%s"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v10, v9, v7

    iget v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    iget-object v7, v4, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    aput-object v7, v9, v12

    invoke-interface {v5, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v5, v4, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    invoke-direct {p0, v7, v8, v5}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->saveToDiskCache(J[B)V

    :goto_1
    move v5, v6

    .line 312
    :goto_2
    return v5

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, e:Ljava/lang/InterruptedException;
    sget-object v5, Lcom/google/glass/util/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Interrupted while requesting resource from clientproxy!"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v5, v1, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 302
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_0
    sget-object v5, Lcom/google/glass/util/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "No update: %s:%s"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v10, v9, v7

    iget v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    invoke-interface {v5, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 305
    :cond_1
    if-eqz v4, :cond_2

    iget v5, v4, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    if-ne v5, v12, :cond_2

    .line 307
    sget-object v5, Lcom/google/glass/util/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Resource not found: %s:%s"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v10, v9, v7

    iget v10, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-interface {v5, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    const-wide/16 v8, 0x0

    new-array v5, v7, [B

    invoke-direct {p0, v8, v9, v5}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->saveToDiskCache(J[B)V

    move v5, v6

    .line 309
    goto :goto_2

    .line 311
    :cond_2
    sget-object v5, Lcom/google/glass/util/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Request failed: %s:%s"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v10, v9, v7

    iget v10, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-interface {v5, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v7

    .line 312
    goto :goto_2
.end method

.method private downloadResourceAndUpdateValidationTime()V
    .locals 5

    .prologue
    .line 270
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->downloadResource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    iget-object v1, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/google/glass/util/GlasswareResourceLoadingTask;->CACHE_VALIDATION_INTERVAL_MS:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->setNextValidationTime(J)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    iget-object v1, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v1}, Lcom/google/glass/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/google/glass/util/GlasswareResourceLoadingTask;->CACHE_RETRY_DELAY_MS:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->setNextValidationTime(J)V

    goto :goto_0
.end method

.method static getFilenameSuffix(I)Ljava/lang/String;
    .locals 3
    .parameter "resourceType"

    .prologue
    .line 166
    packed-switch p0, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown resource type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 168
    :pswitch_0
    const-string v0, "MEDIUM"

    .line 174
    :goto_0
    return-object v0

    .line 170
    :pswitch_1
    const-string v0, "SMALL"

    goto :goto_0

    .line 172
    :pswitch_2
    const-string v0, "MESSAGES"

    goto :goto_0

    .line 174
    :pswitch_3
    const-string v0, "STYLESHEET"

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private loadFromDiskCache()Z
    .locals 8

    .prologue
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 339
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    new-instance v6, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v6}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/glass/util/CachedFilesManager;->load(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 340
    .local v0, fileData:[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-ge v3, v7, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v2

    .line 343
    :cond_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x8

    new-array v1, v3, [B

    .line 344
    .local v1, resourceData:[B
    array-length v3, v1

    invoke-static {v0, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iget-object v2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-static {v0}, Lcom/google/common/primitives/Longs;->fromByteArray([B)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->populate([BJ)V

    .line 346
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private populateCacheEntry()V
    .locals 5

    .prologue
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    const/4 v4, 0x0

    .line 253
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->downloadResourceAndUpdateValidationTime()V

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->loadFromDiskCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    sget-object v0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to load from cache: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    new-array v1, v4, [B

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->populate([BJ)V

    .line 261
    :cond_1
    return-void
.end method

.method private saveToDiskCache(J[B)V
    .locals 4
    .parameter "fingerprint"
    .parameter "data"

    .prologue
    .line 320
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    new-instance v3, Lcom/google/glass/util/GlasswareResourceLoadingTask$3;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/glass/util/GlasswareResourceLoadingTask$3;-><init>(Lcom/google/glass/util/GlasswareResourceLoadingTask;J[B)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 332
    return-void
.end method


# virtual methods
.method protected abstract bindContent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method protected final loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 9
    .parameter "isCancelled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/Condition;",
            ")TResult;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 197
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 199
    invoke-virtual {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    const/4 v0, 0x0

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :cond_1
    const/4 v2, 0x0

    .line 204
    .local v2, isNewEntry:Z
    iget-object v4, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 205
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    iput-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    .line 206
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    if-nez v3, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->newCacheEntry()Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    .line 208
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v3, v5, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/4 v2, 0x1

    .line 211
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    if-eqz v2, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->populateCacheEntry()V

    .line 217
    :cond_3
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v3}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->waitForDecodedData()Ljava/lang/Object;

    move-result-object v0

    .line 220
    .local v0, bitmap:Ljava/lang/Object;,"TResult;"
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    #getter for: Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->access$200(Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->clock:Lcom/google/glass/util/Clock;

    invoke-interface {v3}, Lcom/google/glass/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v5}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->getNextValidationTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 225
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/glass/util/GlasswareResourceLoadingTask$2;

    invoke-direct {v4, p0}, Lcom/google/glass/util/GlasswareResourceLoadingTask$2;-><init>(Lcom/google/glass/util/GlasswareResourceLoadingTask;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Ljava/util/concurrent/RejectedExecutionException;
    iget-object v3, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    #getter for: Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->access$200(Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 211
    .end local v0           #bitmap:Ljava/lang/Object;,"TResult;"
    .end local v1           #e:Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 240
    .restart local v0       #bitmap:Ljava/lang/Object;,"TResult;"
    :cond_4
    sget-object v3, Lcom/google/glass/util/GlasswareResourceLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Already updating resource: %s:%s, fingerprint=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->projectId:Ljava/lang/String;

    aput-object v6, v5, v7

    iget v6, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->resourceType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    invoke-virtual {v7}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->getFingerprint()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected final loadContentFromCache()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask;,"Lcom/google/glass/util/GlasswareResourceLoadingTask<TResult;>;"
    iget-object v1, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->sharedCache:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    iput-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    .line 185
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask;->entry:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;

    #getter for: Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->decodedData:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->access$100(Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    .line 189
    :goto_0
    return-object v0

    .line 188
    :cond_0
    monitor-exit v1

    .line 189
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract newCacheEntry()Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<TResult;>;"
        }
    .end annotation
.end method

.method protected abstract prepareContent()V
.end method
