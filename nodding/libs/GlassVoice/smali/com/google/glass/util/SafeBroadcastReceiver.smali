.class public abstract Lcom/google/glass/util/SafeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SafeBroadcastReceiver.java"


# instance fields
.field private final isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private registerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private declared-synchronized checkThread()V
    .locals 3

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 198
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    .line 200
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register/unregister not invoked from consistent thread. First thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->registerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method protected getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 167
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction;)V
    .locals 1
    .parameter "context"
    .parameter "action"

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 180
    return-void
.end method

.method protected logUserEvent(Landroid/content/Context;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/google/glass/util/SafeBroadcastReceiver;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received %s even though we are not registered."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Ignoring %s because unregister is pending."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public abstract onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .parameter "context"
    .parameter "intentFilter"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public register(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;
    .locals 12
    .parameter "context"
    .parameter "intentFilter"
    .parameter "permission"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 56
    iget-object v5, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Not registering receiver, because it is already registered."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :goto_0
    return-object v4

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->checkThread()V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 67
    .local v2, before:J
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 72
    .local v4, stickyIntent:Landroid/content/Intent;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 73
    .local v0, after:J
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Registered receiver, time: %sms, UI thread: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    sub-long v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {}, Lcom/google/glass/predicates/Assert;->isUiThread()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    .end local v0           #after:J
    .end local v4           #stickyIntent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1, p0, p2, p3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v4

    .restart local v4       #stickyIntent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public varargs register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "actions"

    .prologue
    .line 44
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v3, intentFilter:Landroid/content/IntentFilter;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 46
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    return-object v5
.end method

.method public registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "executor"
    .parameter "context"
    .parameter "intentFilter"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 1
    .parameter "executor"
    .parameter "context"
    .parameter "intentFilter"
    .parameter "permission"

    .prologue
    .line 92
    new-instance v0, Lcom/google/glass/util/SafeBroadcastReceiver$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/glass/util/SafeBroadcastReceiver$1;-><init>(Lcom/google/glass/util/SafeBroadcastReceiver;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public varargs registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .parameter "executor"
    .parameter "context"
    .parameter "actions"

    .prologue
    .line 79
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v3, intentFilter:Landroid/content/IntentFilter;
    move-object v1, p3

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 81
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 101
    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->checkThread()V

    .line 102
    iget-object v5, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Not unregistering receiver, because it is not registered."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 112
    .local v2, before:J
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    iget-object v5, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 121
    .local v0, after:J
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Unregistered receiver, time: %sms, UI thread: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    sub-long v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {}, Lcom/google/glass/predicates/Assert;->isUiThread()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    .end local v0           #after:J
    :catch_0
    move-exception v4

    .line 114
    .local v4, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Receiver could not be unregistered.  It was probably forcibly unregistered by android.  See above logs."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    iget-object v5, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v5
.end method

.method public unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 2
    .parameter "executor"
    .parameter "context"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/util/SafeBroadcastReceiver;->isUnregisterPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    new-instance v0, Lcom/google/glass/util/SafeBroadcastReceiver$2;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver$2;-><init>(Lcom/google/glass/util/SafeBroadcastReceiver;Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method
