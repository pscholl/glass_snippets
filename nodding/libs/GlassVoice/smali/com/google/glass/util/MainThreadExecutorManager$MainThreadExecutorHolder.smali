.class Lcom/google/glass/util/MainThreadExecutorManager$MainThreadExecutorHolder;
.super Ljava/lang/Object;
.source "MainThreadExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/MainThreadExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadExecutorHolder"
.end annotation


# static fields
.field private static instance:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/glass/util/MainThreadExecutorManager$MainThreadExecutorHolder$1;

    invoke-direct {v0}, Lcom/google/glass/util/MainThreadExecutorManager$MainThreadExecutorHolder$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/MainThreadExecutorManager$MainThreadExecutorHolder;->instance:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/util/MainThreadExecutorManager$MainThreadExecutorHolder;->instance:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput-object p0, Lcom/google/glass/util/MainThreadExecutorManager$MainThreadExecutorHolder;->instance:Ljava/util/concurrent/Executor;

    return-object p0
.end method
