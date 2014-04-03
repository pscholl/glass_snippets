.class public interface abstract Lcom/x/google/common/async/AsyncRequest;
.super Ljava/lang/Object;


# static fields
.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_NOTIFY_OPEN:I = 0x2

.field public static final FLAG_NOTIFY_RUNNING_PROGRESS:I = 0x1

.field public static final STATE_CLOSED:I = 0x4

.field public static final STATE_COMPLETED:I = 0x2

.field public static final STATE_EXCEPTION:I = 0x3

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_RUNNING:I = 0x1


# virtual methods
.method public abstract close()V
.end method

.method public abstract getException()Ljava/lang/Exception;
.end method

.method public abstract getState()I
.end method

.method public abstract hasException()Z
.end method

.method public abstract isCompletedOrException()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract reset()V
.end method

.method public abstract submit(Lcom/x/google/common/task/AbstractTask;)V
.end method
