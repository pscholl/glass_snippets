.class public Lcom/google/glass/async/AsyncThreadExecutorManager;
.super Ljava/lang/Object;
.source "AsyncThreadExecutorManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static serialInstance:Ljava/util/concurrent/Executor;

.field private static serialInstanceThread:Ljava/lang/Thread;

.field private static threadPoolInstance:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/google/glass/async/AsyncThreadExecutorManager$1;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/async/AsyncThreadExecutorManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$1;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstance:Ljava/util/concurrent/Executor;

    .line 36
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->threadPoolInstance:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstanceThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-object p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstanceThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public static getSerialExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstance:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static getThreadPoolExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->threadPoolInstance:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static isOnSerialInstanceThread()Z
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstanceThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSerialExecutorForTest(Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter "executor"

    .prologue
    .line 72
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 73
    invoke-static {p0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sput-object p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstance:Ljava/util/concurrent/Executor;

    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager;->serialInstanceThread:Ljava/lang/Thread;

    .line 76
    return-void
.end method

.method public static setThreadPoolExecutorForTest(Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter "executor"

    .prologue
    .line 83
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 84
    invoke-static {p0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sput-object p0, Lcom/google/glass/async/AsyncThreadExecutorManager;->threadPoolInstance:Ljava/util/concurrent/Executor;

    .line 86
    return-void
.end method
