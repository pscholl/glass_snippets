.class public abstract Lcom/google/glass/util/SafeServiceConnection;
.super Ljava/lang/Object;
.source "SafeServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private volatile bindThread:Ljava/lang/Thread;

.field private final component:Landroid/content/ComponentName;

.field private final isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/SafeServiceConnection;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method private declared-synchronized checkThread()V
    .locals 6

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 186
    .local v0, currentThread:Ljava/lang/Thread;
    iget-object v2, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    if-nez v2, :cond_1

    .line 187
    iput-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    if-eq v0, v2, :cond_0

    .line 190
    const-string v2, "Bind/unbind not invoked from consistent thread. First thread: %s, current thread: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, message:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    .end local v0           #currentThread:Ljava/lang/Thread;
    .end local v1           #message:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 196
    .restart local v0       #currentThread:Ljava/lang/Thread;
    .restart local v1       #message:Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v8, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 80
    iget-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/google/glass/util/SafeServiceConnection;->checkThread()V

    .line 86
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 87
    .local v4, intent:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 88
    .local v5, successful:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 89
    .local v2, before:J
    invoke-virtual {p1, v4, p0, v12}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 91
    .local v0, after:J
    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Binding to service, time: %sms, UI thread: %s"

    new-array v8, v8, [Ljava/lang/Object;

    sub-long v9, v0, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {}, Lcom/google/glass/predicates/Assert;->isUiThread()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .end local v0           #after:J
    .end local v2           #before:J
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #successful:Z
    :goto_0
    return-object p0

    .line 95
    .restart local v0       #after:J
    .restart local v2       #before:J
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #successful:Z
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Binding to service failed, time: %sms, UI thread: %s"

    new-array v8, v8, [Ljava/lang/Object;

    sub-long v9, v0, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {}, Lcom/google/glass/predicates/Assert;->isUiThread()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    .line 101
    iget-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 104
    .end local v0           #after:J
    .end local v2           #before:J
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #successful:Z
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "We have already requested binding to this service."

    new-array v8, v11, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 1
    .parameter "executor"
    .parameter "context"

    .prologue
    .line 112
    new-instance v0, Lcom/google/glass/util/SafeServiceConnection$1;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/util/SafeServiceConnection$1;-><init>(Lcom/google/glass/util/SafeServiceConnection;Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method protected abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method public isBindCalled()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Connected to service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 47
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/SafeServiceConnection;->onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 50
    :cond_1
    return-void
.end method

.method public abstract onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 54
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 57
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/SafeServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;Z)V

    .line 58
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;Z)V
    .locals 4
    .parameter "name"
    .parameter "isError"

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from service"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/SafeServiceConnection;->onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V

    .line 71
    :cond_1
    return-void
.end method

.method public abstract onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
.end method

.method public setStateForTest(ZZ)V
    .locals 1
    .parameter "isBindCalled"
    .parameter "isConnected"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 205
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 206
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 207
    iget-object v0, p0, Lcom/google/glass/util/SafeServiceConnection;->isConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 208
    return-void
.end method

.method public unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 125
    invoke-direct {p0}, Lcom/google/glass/util/SafeServiceConnection;->checkThread()V

    .line 129
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->bindThread:Ljava/lang/Thread;

    .line 132
    iget-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Unbinding from service."

    new-array v8, v12, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 136
    .local v2, before:J
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 138
    .local v0, after:J
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Unbound from service, time: %sms, UI thread: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sub-long v10, v0, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/google/glass/predicates/Assert;->isUiThread()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0           #after:J
    .end local v2           #before:J
    :goto_0
    const/4 v5, 0x0

    .line 146
    .local v5, isError:Z
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isUiThread()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    iget-object v6, p0, Lcom/google/glass/util/SafeServiceConnection;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v12}, Lcom/google/glass/util/SafeServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;Z)V

    .line 160
    .end local v5           #isError:Z
    :goto_1
    return-object p0

    .line 140
    :catch_0
    move-exception v4

    .line 141
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Was already unbound."

    new-array v8, v12, [Ljava/lang/Object;

    invoke-interface {v6, v4, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .restart local v5       #isError:Z
    :cond_0
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/google/glass/util/SafeServiceConnection$2;

    invoke-direct {v7, p0}, Lcom/google/glass/util/SafeServiceConnection$2;-><init>(Lcom/google/glass/util/SafeServiceConnection;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 157
    .end local v5           #isError:Z
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/util/SafeServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "We have already requested unbind from this service."

    new-array v8, v12, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public unbindAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 1
    .parameter "executor"
    .parameter "context"

    .prologue
    .line 165
    new-instance v0, Lcom/google/glass/util/SafeServiceConnection$3;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/util/SafeServiceConnection$3;-><init>(Lcom/google/glass/util/SafeServiceConnection;Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method
