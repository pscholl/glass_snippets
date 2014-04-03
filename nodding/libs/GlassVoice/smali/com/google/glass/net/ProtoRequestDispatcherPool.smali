.class public Lcom/google/glass/net/ProtoRequestDispatcherPool;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcherPool.java"


# static fields
.field public static final MAX_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private currentIndex:I

.field private dispatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/net/ProtoRequestDispatcherPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->context:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    .line 40
    new-instance v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v0, p1}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method createDispatcher(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1
    .parameter "context"
    .parameter "httpDispatcher"
    .parameter "closeHttpOnExit"
    .parameter "defaultResponseThread"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public declared-synchronized getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 10

    .prologue
    const/16 v9, 0x8

    .line 54
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 55
    iget-object v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 56
    .local v3, prd:Lcom/google/glass/net/ProtoRequestDispatcher;
    invoke-virtual {v3}, Lcom/google/glass/net/ProtoRequestDispatcher;->isBusy()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 80
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v3

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v3           #prd:Lcom/google/glass/net/ProtoRequestDispatcher;
    :cond_2
    :goto_2
    :try_start_1
    iget v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    if-ge v5, v9, :cond_3

    iget v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    if-gt v5, v6, :cond_3

    .line 65
    iget-object v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->httpRequestDispatcher:Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/google/glass/net/ProtoRequestDispatcherPool;->createDispatcher(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v4

    .line 68
    .local v4, requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    iget-object v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, name:Ljava/lang/String;
    new-instance v5, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;

    invoke-direct {v5, p0, v4, v2}, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;-><init>(Lcom/google/glass/net/ProtoRequestDispatcherPool;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 54
    .end local v1           #n:I
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 75
    .restart local v1       #n:I
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    iget v6, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 76
    .restart local v3       #prd:Lcom/google/glass/net/ProtoRequestDispatcher;
    iget v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    .line 77
    iget v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    if-lt v5, v9, :cond_0

    .line 78
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
