.class public Lcom/google/glass/util/GlasswareMessagesLoadingTask;
.super Lcom/google/glass/util/GlasswareResourceLoadingTask;
.source "GlasswareMessagesLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/GlasswareMessagesLoadingTask$NameCacheEntry;,
        Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/GlasswareResourceLoadingTask",
        "<",
        "Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "cachedFilesManager"
    .parameter "requestDispatcher"
    .parameter
    .parameter "clock"
    .parameter "backgroundExecutor"
    .parameter "projectId"
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
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p4, sharedCache:Landroid/util/LruCache;,"Landroid/util/LruCache<Ljava/lang/String;Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry<*>;>;"
    const/4 v8, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/util/GlasswareResourceLoadingTask;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedFilesManager;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/util/LruCache;Lcom/google/glass/util/Clock;Ljava/util/concurrent/Executor;Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;)V
    .locals 1
    .parameter "context"
    .parameter "projectId"
    .parameter "receiver"

    .prologue
    .line 79
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/util/GlasswareResourceLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    .line 81
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static getGlasswareName(JLcom/google/glass/util/GlasswareMessagesLoadingTask;)Ljava/lang/String;
    .locals 11
    .parameter "timeoutMs"
    .parameter "task"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 173
    cmp-long v6, p0, v7

    if-lez v6, :cond_0

    .line 175
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 178
    :cond_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 179
    .local v2, loadLatch:Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 182
    .local v5, ref:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;>;"
    new-instance v4, Lcom/google/glass/util/GlasswareMessagesLoadingTask$1;

    invoke-direct {v4, v5, v2}, Lcom/google/glass/util/GlasswareMessagesLoadingTask$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 189
    .local v4, receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;
    invoke-direct {p2, v4}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->setMessagesReceiver(Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;)V

    .line 191
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isUiThread()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 192
    invoke-static {p2}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 199
    :goto_0
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 200
    .local v3, loaded:Z
    if-nez v3, :cond_3

    .line 201
    cmp-long v6, p0, v7

    if-lez v6, :cond_2

    .line 202
    sget-object v6, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Timed out waiting for glassware name"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :goto_1
    const-string v6, ""
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_2
    return-object v6

    .line 194
    .end local v3           #loaded:Z
    :cond_1
    invoke-static {p2}, Lcom/google/glass/util/DeferredContentLoader;->postLoadToUiThread(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    goto :goto_0

    .line 204
    .restart local v3       #loaded:Z
    :cond_2
    :try_start_1
    sget-object v6, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "No glassware name available in cache"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 210
    .end local v3           #loaded:Z
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v6, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Interrupted waiting for glassware name"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p2, v10}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->cancel(Z)V

    .line 213
    throw v0

    .line 217
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v3       #loaded:Z
    :cond_3
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    .line 218
    .local v1, glasswareMessages:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    if-nez v1, :cond_4

    .line 219
    sget-object v6, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to load glassware name"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    const-string v6, ""

    goto :goto_2

    .line 223
    :cond_4
    iget-object v6, v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 224
    iget-object v6, v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    goto :goto_2

    .line 226
    :cond_5
    iget-object v6, v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 227
    iget-object v6, v1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    goto :goto_2

    .line 230
    :cond_6
    sget-object v6, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Glassware has no defined name."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const-string v6, ""

    goto :goto_2
.end method

.method public static getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "entity"
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->source:Ljava/lang/String;

    const-string v2, "api:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    sget-object v1, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No glassware resources available for this entity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    const-string v1, ""

    .line 136
    :goto_0
    return-object v1

    .line 134
    :cond_1
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->getProjectId(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, projectId:Ljava/lang/String;
    invoke-static {p0, v0, p2, p3}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    const-string v2, "api:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    sget-object v1, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No glassware resources available for this timeline item"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    const-string v1, ""

    .line 102
    :goto_0
    return-object v1

    .line 100
    :cond_1
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    const-string v2, "api:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, projectId:Ljava/lang/String;
    invoke-static {p0, v0, p2, p3}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGlasswareName(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "projectId"
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;)V

    .line 167
    .local v0, task:Lcom/google/glass/util/GlasswareMessagesLoadingTask;
    invoke-static {p2, p3, v0}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(JLcom/google/glass/util/GlasswareMessagesLoadingTask;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getGlasswareNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "entity"

    .prologue
    .line 144
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static getGlasswareNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 108
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private setMessagesReceiver(Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    .line 236
    return-void
.end method


# virtual methods
.method protected bindContent(Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;)V
    .locals 3
    .parameter "resource"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    invoke-interface {v0, p1}, Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;->onMessagesLoaded(Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    sget-object v0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Got glassware messages without a receiver to deliver them to."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->bindContent(Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const-string v0, "gm"

    return-object v0
.end method

.method protected newCacheEntry()Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lcom/google/glass/util/GlasswareMessagesLoadingTask$NameCacheEntry;

    invoke-direct {v0}, Lcom/google/glass/util/GlasswareMessagesLoadingTask$NameCacheEntry;-><init>()V

    return-object v0
.end method

.method protected prepareContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->loadContentFromCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    .line 246
    .local v0, messages:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->receiver:Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;

    invoke-interface {v1, v0}, Lcom/google/glass/util/GlasswareMessagesLoadingTask$MessagesReceiver;->onMessagesLoaded(Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;)V

    .line 252
    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->cancel(Z)V

    .line 254
    :cond_0
    return-void

    .line 250
    :cond_1
    sget-object v1, Lcom/google/glass/util/GlasswareMessagesLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Got glassware messages without a receiver to deliver them to."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
