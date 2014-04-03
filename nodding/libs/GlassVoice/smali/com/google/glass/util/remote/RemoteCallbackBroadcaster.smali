.class public abstract Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
.super Ljava/lang/Object;
.source "RemoteCallbackBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$1;,
        Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Callback::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<TCallback;>;"
        }
    .end annotation
.end field

.field private final registrationCount:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->registrationCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 104
    return-void
.end method

.method private broadcastToAll(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/remote/RemoteCallbackOperation",
            "<TCallback;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, operation:Lcom/google/glass/util/remote/RemoteCallbackOperation;,"Lcom/google/glass/util/remote/RemoteCallbackOperation<TCallback;>;"
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->beginBroadcast()I

    move-result v1

    .line 164
    .local v1, callbackCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 166
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    .line 167
    .local v0, callback:Landroid/os/IInterface;,"TCallback;"
    invoke-interface {p1, v0}, Lcom/google/glass/util/remote/RemoteCallbackOperation;->doOperation(Landroid/os/IInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0           #callback:Landroid/os/IInterface;,"TCallback;"
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Remote callback exception"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 172
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->finishBroadcast()V

    .line 173
    return-void
.end method

.method private broadcastToTopOfStack(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/remote/RemoteCallbackOperation",
            "<TCallback;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, operation:Lcom/google/glass/util/remote/RemoteCallbackOperation;,"Lcom/google/glass/util/remote/RemoteCallbackOperation<TCallback;>;"
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->beginBroadcast()I

    move-result v0

    .line 140
    .local v0, callbackCount:I
    if-lez v0, :cond_2

    .line 143
    const-wide/high16 v3, -0x8000

    .line 144
    .local v3, maxId:J
    const/4 v7, 0x0

    .line 145
    .local v7, top:Landroid/os/IInterface;,"TCallback;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 146
    :try_start_0
    iget-object v8, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 147
    .local v5, registrationId:J
    cmp-long v8, v5, v3

    if-lez v8, :cond_0

    .line 148
    move-wide v3, v5

    .line 149
    iget-object v8, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v5           #registrationId:J
    :cond_1
    invoke-interface {p1, v7}, Lcom/google/glass/util/remote/RemoteCallbackOperation;->doOperation(Landroid/os/IInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v2           #i:I
    .end local v3           #maxId:J
    .end local v7           #top:Landroid/os/IInterface;,"TCallback;"
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->finishBroadcast()V

    .line 160
    return-void

    .line 155
    .restart local v2       #i:I
    .restart local v3       #maxId:J
    .restart local v7       #top:Landroid/os/IInterface;,"TCallback;"
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Landroid/os/RemoteException;
    sget-object v8, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Remote callback exception"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v1, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected final beginBroadcast()I
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    iget-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 101
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    iget-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 102
    return-void
.end method

.method public final declared-synchronized doOperation(Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    .locals 3
    .parameter "audience"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;",
            "Lcom/google/glass/util/remote/RemoteCallbackOperation",
            "<TCallback;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p2, operation:Lcom/google/glass/util/remote/RemoteCallbackOperation;,"Lcom/google/glass/util/remote/RemoteCallbackOperation<TCallback;>;"
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$1;->$SwitchMap$com$google$glass$util$remote$RemoteCallbackBroadcaster$BroadcastTo:[I

    invoke-virtual {p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected audience: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->broadcastToAll(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :pswitch_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->broadcastToTopOfStack(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/remote/RemoteCallbackOperation",
            "<TCallback;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, operation:Lcom/google/glass/util/remote/RemoteCallbackOperation;,"Lcom/google/glass/util/remote/RemoteCallbackOperation<TCallback;>;"
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->ALL:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finishBroadcast()V
    .locals 1

    .prologue
    .line 93
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    iget-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 94
    return-void
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method protected onRegister(Landroid/os/IInterface;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, callback:Landroid/os/IInterface;,"TCallback;"
    return-void
.end method

.method protected onUnregister(Landroid/os/IInterface;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, callback:Landroid/os/IInterface;,"TCallback;"
    return-void
.end method

.method public final register(Landroid/os/IInterface;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, callback:Landroid/os/IInterface;,"TCallback;"
    const/4 v4, 0x0

    .line 39
    iget-object v1, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    iget-object v2, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->registrationCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    .line 40
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 41
    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Registered callback"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->onRegister(Landroid/os/IInterface;)V

    .line 46
    :goto_0
    return v0

    .line 44
    :cond_0
    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to register callback"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final unregister(Landroid/os/IInterface;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;,"Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, callback:Landroid/os/IInterface;,"TCallback;"
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 64
    .local v0, success:Z
    if-eqz v0, :cond_0

    .line 65
    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unregistered callback"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->onUnregister(Landroid/os/IInterface;)V

    .line 70
    :goto_0
    return v0

    .line 68
    :cond_0
    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to unregister callback"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
