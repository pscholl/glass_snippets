.class public Lcom/google/glass/util/HandlerWrapper;
.super Ljava/lang/Object;
.source "HandlerWrapper.java"


# static fields
.field private static volatile handlerWrapperForTesting:Lcom/google/glass/util/HandlerWrapper;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/HandlerWrapper;->handler:Landroid/os/Handler;

    .line 15
    return-void
.end method

.method public static createHandlerWrapper()Lcom/google/glass/util/HandlerWrapper;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/util/HandlerWrapper;->handlerWrapperForTesting:Lcom/google/glass/util/HandlerWrapper;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/google/glass/util/HandlerWrapper;->handlerWrapperForTesting:Lcom/google/glass/util/HandlerWrapper;

    .line 21
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/util/HandlerWrapper;

    invoke-direct {v0}, Lcom/google/glass/util/HandlerWrapper;-><init>()V

    goto :goto_0
.end method

.method public static setHandlerWrapperForTest(Lcom/google/glass/util/HandlerWrapper;)V
    .locals 0
    .parameter "wrapper"

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 26
    sput-object p0, Lcom/google/glass/util/HandlerWrapper;->handlerWrapperForTesting:Lcom/google/glass/util/HandlerWrapper;

    .line 27
    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/util/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/util/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/util/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/util/HandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 39
    return-void
.end method
