.class public Lcom/google/glass/net/ProtoRequestDispatcher;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    }
.end annotation


# static fields
.field private static final DISPATCHER_PREFS:Ljava/lang/String; = "prd_prefs"

.field static final MAX_BATCH_DATA_SIZE_BYTES:I = 0x20000

.field static final MAX_PENDING_DATA_SIZE_BYTES:I = 0x80000

.field private static final PREF_DISPATCHER_ID:Ljava/lang/String; = "id"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final closeHttpOnExit:Z

.field private final context:Landroid/content/Context;

.field private final defaultResponseThread:Ljava/util/concurrent/Executor;

.field private dispatcherId:J

.field private explicitFlush:Z

.field private final httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

.field private final isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final queueCondition:Ljava/util/concurrent/locks/Condition;

.field private final queueLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private requestPriorityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$Request;",
            ">;"
        }
    .end annotation
.end field

.field private shouldExit:Z

.field private totalQueuedDataSize:I

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V
    .locals 1
    .parameter "context"
    .parameter "httpDispatcher"
    .parameter "closeHttpOnExit"
    .parameter "defaultResponseThread"

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    .line 236
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 248
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 251
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    .line 260
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$1;

    invoke-direct {v0, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$1;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->requestPriorityComparator:Ljava/util/Comparator;

    .line 285
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {p4}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    .line 288
    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 289
    iput-boolean p3, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->closeHttpOnExit:Z

    .line 290
    iput-object p4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->defaultResponseThread:Ljava/util/concurrent/Executor;

    .line 291
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 292
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/net/ProtoRequestDispatcher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    return-object v0
.end method

.method private clearQueue()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 674
    return-void
.end method

.method private dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)Z
    .locals 10
    .parameter "action"
    .parameter "requestProto"
    .parameter "isImmediate"
    .parameter
    .parameter
    .parameter "responseThread"
    .parameter "logMetrics"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Z",
            "Lcom/google/glass/net/ProtoParser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 525
    .local p4, responseParser:Lcom/google/glass/net/ProtoParser;,"Lcom/google/glass/net/ProtoParser<TT;>;"
    .local p5, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    iget-object v2, p1, Lcom/google/glass/net/ServerConstants$Action;->path:Ljava/lang/String;

    .line 528
    .local v2, path:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 532
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 533
    const/4 v0, 0x0

    .line 552
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 554
    :goto_0
    return v0

    .line 537
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    iget-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    or-int/2addr v0, p3

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 544
    iget v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 545
    iget v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:I

    invoke-virtual {p2}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:I

    .line 548
    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 554
    const/4 v0, 0x1

    goto :goto_0

    .line 544
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 552
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private ensureDispatcherId()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 842
    iget-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 843
    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    const-string v3, "prd_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 845
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    .line 846
    const-string v2, "id"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    .line 847
    iget-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_1

    .line 848
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 850
    .local v0, random:Ljava/security/SecureRandom;
    :cond_0
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    .line 851
    iget-wide v2, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 853
    .end local v0           #random:Ljava/security/SecureRandom;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "id"

    iget-wide v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 856
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method

.method private parseResponses(Ljava/util/List;Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;)Z
    .locals 7
    .parameter
    .parameter "batchResponse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$Request;",
            ">;",
            "Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 881
    .local p1, batchedRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request;>;"
    const/4 v1, 0x0

    .line 882
    .local v1, error:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 883
    iget-object v4, p2, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    aget-object v3, v4, v2

    .line 884
    .local v3, responseWrapper:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 885
    .local v0, batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    iget v4, v3, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    if-lez v4, :cond_1

    .line 886
    const/4 v1, 0x1

    .line 887
    iget v4, v3, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->errorCode:I

    invoke-virtual {v0, v4}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(I)V

    .line 882
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 889
    :cond_1
    iget-object v4, v3, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    invoke-virtual {v0, v4}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onSuccess([B)V

    .line 891
    iget-boolean v4, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->logMetrics:Z

    if-eqz v4, :cond_0

    .line 892
    iget-object v4, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->path:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestProto:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v5}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v5

    iget-object v6, v3, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;->data:[B

    array-length v6, v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/glass/net/ProtoRequestDispatcher;->logRequestMetrics(Ljava/lang/String;II)V

    goto :goto_1

    .line 897
    .end local v0           #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    .end local v3           #responseWrapper:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
    :cond_2
    return v1
.end method


# virtual methods
.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;)Lcom/google/glass/net/ProtoResponse;
    .locals 2
    .parameter "action"
    .parameter "requestProto"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Lcom/google/glass/net/ProtoParser",
            "<TT;>;)",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 394
    .local p3, responseParser:Lcom/google/glass/net/ProtoParser;,"Lcom/google/glass/net/ProtoParser<TT;>;"
    const/4 v0, 0x1

    .line 395
    .local v0, logMetrics:Z
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;Z)Lcom/google/glass/net/ProtoResponse;

    move-result-object v1

    return-object v1
.end method

.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;Z)Lcom/google/glass/net/ProtoResponse;
    .locals 13
    .parameter "action"
    .parameter "requestProto"
    .parameter
    .parameter "logMetrics"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Lcom/google/glass/net/ProtoParser",
            "<TT;>;Z)",
            "Lcom/google/glass/net/ProtoResponse",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 421
    .local p3, responseParser:Lcom/google/glass/net/ProtoParser;,"Lcom/google/glass/net/ProtoParser<TT;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 427
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 428
    .local v9, errorCodeReference:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 431
    .local v12, responseParserReference:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 432
    .local v11, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Lcom/google/glass/net/ProtoRequestDispatcher$2;

    invoke-direct {v5, p0, v11, v9, v12}, Lcom/google/glass/net/ProtoRequestDispatcher$2;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 450
    .local v5, latchedResponseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    const/4 v10, 0x1

    .line 451
    .local v10, isImmediate:Z
    const/4 v3, 0x1

    new-instance v6, Lcom/google/glass/net/ProtoRequestDispatcher$3;

    invoke-direct {v6, p0}, Lcom/google/glass/net/ProtoRequestDispatcher$3;-><init>(Lcom/google/glass/net/ProtoRequestDispatcher;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 477
    :goto_0
    return-object v0

    .line 465
    :cond_0
    :try_start_0
    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 473
    invoke-static {}, Lcom/google/glass/net/ProtoResponse;->cancel()Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v8

    .line 467
    .local v8, e:Ljava/lang/InterruptedException;
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Interrupted during blockingDispatch"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v8, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    throw v8

    .line 474
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 475
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/glass/net/ProtoResponse;->error(I)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 477
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/google/glass/net/ProtoResponse;->success(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal proto response state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z
    .locals 7
    .parameter "action"
    .parameter "requestProto"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Lcom/google/glass/net/ProtoParser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 317
    .local p3, responseParser:Lcom/google/glass/net/ProtoParser;,"Lcom/google/glass/net/ProtoParser<TT;>;"
    .local p4, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    const/4 v6, 0x1

    .line 318
    .local v6, logMetrics:Z
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Z)Z

    move-result v0

    return v0
.end method

.method public blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Z)Z
    .locals 6
    .parameter "action"
    .parameter "requestProto"
    .parameter
    .parameter
    .parameter "logMetrics"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Lcom/google/glass/net/ProtoParser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p3, responseParser:Lcom/google/glass/net/ProtoParser;,"Lcom/google/glass/net/ProtoParser<TT;>;"
    .local p4, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    const/4 v2, 0x0

    .line 344
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 347
    const/4 v1, 0x0

    .line 350
    .local v1, response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;Z)Lcom/google/glass/net/ProtoResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 358
    :goto_0
    if-nez v1, :cond_0

    .line 371
    :goto_1
    return v2

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Thread interrupted during request -- calling ProtoResponseHandler#onCancel"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    invoke-interface {p4}, Lcom/google/glass/net/ProtoResponseHandler;->onCancel()V

    goto :goto_0

    .line 363
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    invoke-interface {p4}, Lcom/google/glass/net/ProtoResponseHandler;->onCancel()V

    .line 371
    :cond_1
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 365
    :cond_2
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->isError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()I

    move-result v2

    invoke-interface {p4, v2}, Lcom/google/glass/net/ProtoResponseHandler;->onError(I)V

    goto :goto_2

    .line 367
    :cond_3
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    invoke-virtual {v1}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/google/glass/net/ProtoResponseHandler;->onSuccess(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_2
.end method

.method composeBatchLogEventString(IIIJJZ)Ljava/lang/String;
    .locals 6
    .parameter "numRequests"
    .parameter "numBytesRequest"
    .parameter "numBytesResponse"
    .parameter "beforeHttpTime"
    .parameter "afterHttpTime"
    .parameter "error"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 871
    const-string v1, "r"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v4, "breq"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "bres"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "l"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    sub-long v4, p6, p4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "e"

    aput-object v4, v3, v0

    const/4 v4, 0x7

    if-eqz p8, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method composeRequestSizeLogEventString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "numBytesRequest"
    .parameter "numBytesResponse"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 913
    const-string v0, "p"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "breq"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bres"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z
    .locals 9
    .parameter "action"
    .parameter "requestProto"
    .parameter "isImmediate"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Z",
            "Lcom/google/glass/net/ProtoParser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 498
    .local p4, responseParser:Lcom/google/glass/net/ProtoParser;,"Lcom/google/glass/net/ProtoParser<TT;>;"
    .local p5, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    const/4 v8, 0x1

    .line 499
    .local v8, logMetrics:Z
    iget-object v6, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->defaultResponseThread:Ljava/util/concurrent/Executor;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)Z

    move-result v0

    return v0
.end method

.method public dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Z)Z
    .locals 8
    .parameter "action"
    .parameter "requestProto"
    .parameter "isImmediate"
    .parameter
    .parameter
    .parameter "logMetrics"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lcom/google/glass/net/ServerConstants$Action;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Z",
            "Lcom/google/glass/net/ProtoParser",
            "<TT;>;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .line 518
    .local p4, responseParser:Lcom/google/glass/net/ProtoParser;,"Lcom/google/glass/net/ProtoParser<TT;>;"
    .local p5, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<TT;>;"
    iget-object v6, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->defaultResponseThread:Ljava/util/concurrent/Executor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Ljava/util/concurrent/Executor;Z)Z

    move-result v0

    return v0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 580
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    .line 581
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 585
    return-void

    .line 583
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    .line 565
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 570
    return-void

    .line 568
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isBusy()Z
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 660
    const/4 v0, 0x1

    .line 666
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 664
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 666
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method isFlushConditionMet()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 921
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 924
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->totalQueuedDataSize:I

    const/high16 v2, 0x8

    if-gt v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->explicitFlush:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method lockQueueForTest()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method logBatchMetrics(IIIJJZ)V
    .locals 3
    .parameter "numRequests"
    .parameter "numBytesRequest"
    .parameter "numBytesResponse"
    .parameter "beforeHttpTime"
    .parameter "afterHttpTime"
    .parameter "error"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_BATCH:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual/range {p0 .. p8}, Lcom/google/glass/net/ProtoRequestDispatcher;->composeBatchLogEventString(IIIJJZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method logRequestMetrics(Ljava/lang/String;II)V
    .locals 3
    .parameter "path"
    .parameter "numBytesRequest"
    .parameter "numBytesResponse"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 903
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PROTO_REQUEST_DISPATCHER_REQUEST_SIZE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/net/ProtoRequestDispatcher;->composeRequestSizeLogEventString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 591
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 593
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v3, servicing:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 598
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 600
    :goto_1
    :try_start_0
    iget-boolean v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 602
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v4, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Interrupted while waiting for queue condition."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 635
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 607
    :cond_1
    :try_start_3
    iget-boolean v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-eqz v4, :cond_4

    .line 610
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 611
    .local v2, request:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    invoke-virtual {v2}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onCancel()V

    goto :goto_2

    .line 613
    .end local v2           #request:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->clearQueue()V

    .line 616
    iget-boolean v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->closeHttpOnExit:Z

    if-eqz v4, :cond_3

    .line 617
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    invoke-interface {v4}, Lcom/google/glass/net/HttpRequestDispatcher;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 635
    :cond_3
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 623
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isFlushConditionMet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 626
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queue:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 630
    iget-object v6, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 632
    invoke-direct {p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->clearQueue()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 635
    :cond_5
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 639
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 640
    invoke-virtual {p0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher;->service(Ljava/util/List;)V

    .line 643
    iget-object v4, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->isServicing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_6
    move v4, v5

    .line 630
    goto :goto_3
.end method

.method service(Ljava/util/List;)V
    .locals 30
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher$Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->ensureDispatcherId()V

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->requestPriorityComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 685
    const/16 v24, 0x0

    .local v24, requestIndex:I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_2

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 691
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->shouldExit:Z

    if-eqz v3, :cond_3

    .line 692
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_1

    .line 693
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    invoke-virtual {v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 699
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 833
    :cond_2
    return-void

    .line 699
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 703
    const/4 v4, 0x0

    .line 704
    .local v4, logNumRequests:I
    const/4 v5, 0x0

    .line 707
    .local v5, logNumBytes:I
    new-instance v16, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;

    invoke-direct/range {v16 .. v16}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;-><init>()V

    .line 708
    .local v16, batchRequest:Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v19, batchedRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v25, requestWrappers:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;>;"
    const/4 v14, 0x0

    .line 712
    .local v14, batchBytes:I
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 713
    .local v23, request:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    add-int/lit8 v24, v24, 0x1

    .line 716
    move-object/from16 v0, v23

    iget-boolean v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->logMetrics:Z

    if-eqz v3, :cond_5

    .line 717
    add-int/lit8 v4, v4, 0x1

    .line 718
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestProto:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v3

    add-int/2addr v5, v3

    .line 722
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    new-instance v27, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    invoke-direct/range {v27 .. v27}, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;-><init>()V

    .line 724
    .local v27, wrapper:Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->path:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->path:Ljava/lang/String;

    .line 725
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestProto:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;->data:[B

    .line 726
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestProto:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v3

    add-int/2addr v14, v3

    .line 732
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_6

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    iget-object v3, v3, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->requestProto:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v3

    add-int/2addr v3, v14

    const/high16 v28, 0x2

    move/from16 v0, v28

    if-lt v3, v0, :cond_4

    .line 736
    :cond_6
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->request:[Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;

    .line 739
    new-instance v15, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-direct {v15}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;-><init>()V

    .line 740
    .local v15, batchHeader:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatcherId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v15, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    if-eqz v3, :cond_7

    .line 742
    new-instance v3, Lcom/google/glass/auth/AuthUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v3, v0}, Lcom/google/glass/auth/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/glass/auth/AuthUtils;->createBatchAuthToken()Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    move-result-object v13

    .line 743
    .local v13, authToken:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    if-eqz v13, :cond_7

    .line 744
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    const/16 v28, 0x0

    aput-object v13, v3, v28

    iput-object v3, v15, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 747
    .end local v13           #authToken:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :cond_7
    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;->header:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 753
    .local v7, beforeHttpTime:J
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v21

    .line 754
    .local v21, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    if-eqz v3, :cond_8

    .line 755
    new-instance v3, Lcom/google/glass/auth/AuthUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v3, v0}, Lcom/google/glass/auth/AuthUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/google/glass/auth/AuthUtils;->createAuthHeaders()Ljava/util/Map;

    move-result-object v12

    .line 756
    .local v12, authHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v12, :cond_8

    .line 757
    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 760
    .end local v12           #authHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string v3, "Content-Type"

    const-string v28, "application/protobuf"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->httpDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getBatchUrl()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v16 .. v16}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    move-object/from16 v2, v29

    invoke-interface {v3, v0, v1, v2}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v26

    .line 765
    .local v26, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 768
    .local v9, afterHttpTime:J
    const/4 v11, 0x0

    .line 771
    .local v11, logError:Z
    if-nez v26, :cond_9

    .line 774
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v28, "Batch request failed due to network error."

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v3, v0, v1}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 776
    .local v18, batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    const/4 v11, 0x1

    .line 777
    const/4 v3, 0x5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(I)V

    goto :goto_2

    .line 699
    .end local v4           #logNumRequests:I
    .end local v5           #logNumBytes:I
    .end local v7           #beforeHttpTime:J
    .end local v9           #afterHttpTime:J
    .end local v11           #logError:Z
    .end local v14           #batchBytes:I
    .end local v15           #batchHeader:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .end local v16           #batchRequest:Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .end local v18           #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    .end local v19           #batchedRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request;>;"
    .end local v21           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #request:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    .end local v25           #requestWrappers:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;>;"
    .end local v26           #response:Lcom/google/glass/net/SimplifiedHttpResponse;
    .end local v27           #wrapper:Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 779
    .restart local v4       #logNumRequests:I
    .restart local v5       #logNumBytes:I
    .restart local v7       #beforeHttpTime:J
    .restart local v9       #afterHttpTime:J
    .restart local v11       #logError:Z
    .restart local v14       #batchBytes:I
    .restart local v15       #batchHeader:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .restart local v16       #batchRequest:Lcom/google/googlex/glass/common/proto/BatchNano$BatchRequest;
    .restart local v19       #batchedRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/net/ProtoRequestDispatcher$Request;>;"
    .restart local v21       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23       #request:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    .restart local v25       #requestWrappers:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;>;"
    .restart local v26       #response:Lcom/google/glass/net/SimplifiedHttpResponse;
    .restart local v27       #wrapper:Lcom/google/googlex/glass/common/proto/BatchNano$RequestWrapper;
    :cond_9
    move-object/from16 v0, v26

    iget v3, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v28, 0xc8

    move/from16 v0, v28

    if-eq v3, v0, :cond_a

    .line 782
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v28, "Batch request failed due to internal server error."

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v3, v0, v1}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 783
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 784
    .restart local v18       #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    const/4 v11, 0x1

    .line 785
    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(I)V

    goto :goto_3

    .line 789
    .end local v18           #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_a
    :try_start_1
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;

    move-result-object v17

    .line 790
    .local v17, batchResponse:Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;->response:[Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    array-length v3, v3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-eq v3, v0, :cond_b

    .line 793
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v28, "Batch request failed due to batch size mismatch."

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v3, v0, v1}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 795
    .restart local v18       #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    const/4 v11, 0x1

    .line 796
    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(I)V
    :try_end_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 805
    .end local v17           #batchResponse:Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    .end local v18           #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    .end local v22           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v20

    .line 808
    .local v20, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v3, Lcom/google/glass/net/ProtoRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v28, "Batch request failed due to batch protocol fault."

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v3, v0, v1}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/glass/net/ProtoRequestDispatcher$Request;

    .line 810
    .restart local v18       #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    const/4 v11, 0x1

    .line 811
    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/google/glass/net/ProtoRequestDispatcher$Request;->onError(I)V

    goto :goto_5

    .line 801
    .end local v18           #batchedRequest:Lcom/google/glass/net/ProtoRequestDispatcher$Request;
    .end local v20           #e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .end local v22           #i$:Ljava/util/Iterator;
    .restart local v17       #batchResponse:Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/glass/net/ProtoRequestDispatcher;->parseResponses(Ljava/util/List;Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;)Z
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_c

    .line 802
    const/4 v11, 0x1

    .line 821
    .end local v17           #batchResponse:Lcom/google/googlex/glass/common/proto/BatchNano$BatchResponse;
    :cond_c
    if-lez v4, :cond_0

    .line 824
    const/4 v6, 0x0

    .line 825
    .local v6, numBytesResponse:I
    if-eqz v26, :cond_d

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v3, :cond_d

    .line 826
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v6, v3

    :cond_d
    move-object/from16 v3, p0

    .line 829
    invoke-virtual/range {v3 .. v11}, Lcom/google/glass/net/ProtoRequestDispatcher;->logBatchMetrics(IIIJJZ)V

    goto/16 :goto_0
.end method

.method unlockQueueForTest()V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher;->queueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 941
    return-void
.end method
