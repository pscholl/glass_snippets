.class public Lcom/google/glass/util/BinaryExponentialBackoff;
.super Ljava/lang/Object;
.source "BinaryExponentialBackoff.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BinaryExponentialBackoff$SimpleCallbacks;,
        Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final callbacks:Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;

.field private final delayMillis:I

.field private final handler:Landroid/os/Handler;

.field private hasSubmittedRunnable:Z

.field private isFinished:Z

.field private final maxRetryCount:I

.field private retryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/google/glass/util/BinaryExponentialBackoff;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/glass/util/BinaryExponentialBackoff;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IILcom/google/glass/util/BinaryExponentialBackoff$Callbacks;)V
    .locals 2
    .parameter "delayMillis"
    .parameter "maxRetryCount"
    .parameter "callbacks"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->handler:Landroid/os/Handler;

    .line 48
    iput-object p3, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->callbacks:Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;

    .line 49
    iput p1, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->delayMillis:I

    .line 50
    iput p2, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->maxRetryCount:I

    .line 51
    iput v1, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->retryCount:I

    .line 52
    iput-boolean v1, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->isFinished:Z

    .line 53
    iput-boolean v1, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->hasSubmittedRunnable:Z

    .line 55
    iget v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->retryCount:I

    invoke-interface {p3, p0, v0}, Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;->onTry(Lcom/google/glass/util/BinaryExponentialBackoff;I)V

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/util/BinaryExponentialBackoff;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->hasSubmittedRunnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/util/BinaryExponentialBackoff;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->retryCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/util/BinaryExponentialBackoff;)Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->callbacks:Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->isFinished:Z

    .line 102
    return-void
.end method

.method public retry()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 63
    sget-boolean v2, Lcom/google/glass/util/BinaryExponentialBackoff;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->isFinished:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 64
    :cond_0
    sget-boolean v2, Lcom/google/glass/util/BinaryExponentialBackoff;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->hasSubmittedRunnable:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 66
    :cond_1
    iget v2, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->retryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->retryCount:I

    .line 67
    iget v2, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->retryCount:I

    iget v3, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->maxRetryCount:I

    if-le v2, v3, :cond_2

    .line 68
    iput-boolean v6, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->isFinished:Z

    .line 69
    iget-object v2, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->callbacks:Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;

    invoke-interface {v2, p0}, Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;->onFailure(Lcom/google/glass/util/BinaryExponentialBackoff;)V

    .line 84
    :goto_0
    return-void

    .line 73
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->retryCount:I

    shl-int v4, v6, v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 74
    .local v0, delayFactor:I
    iget v2, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->delayMillis:I

    mul-int v1, v2, v0

    .line 76
    .local v1, delayTimeInMillis:I
    iput-boolean v6, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->hasSubmittedRunnable:Z

    .line 77
    iget-object v2, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/glass/util/BinaryExponentialBackoff$1;

    invoke-direct {v3, p0}, Lcom/google/glass/util/BinaryExponentialBackoff$1;-><init>(Lcom/google/glass/util/BinaryExponentialBackoff;)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public success()V
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/google/glass/util/BinaryExponentialBackoff;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->isFinished:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_0
    sget-boolean v0, Lcom/google/glass/util/BinaryExponentialBackoff;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->hasSubmittedRunnable:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->isFinished:Z

    .line 95
    iget-object v0, p0, Lcom/google/glass/util/BinaryExponentialBackoff;->callbacks:Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;

    invoke-interface {v0, p0}, Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;->onSuccess(Lcom/google/glass/util/BinaryExponentialBackoff;)V

    .line 96
    return-void
.end method
