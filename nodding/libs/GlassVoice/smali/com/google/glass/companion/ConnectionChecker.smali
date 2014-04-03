.class public Lcom/google/glass/companion/ConnectionChecker;
.super Ljava/lang/Object;
.source "ConnectionChecker.java"

# interfaces
.implements Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;


# static fields
.field private static final CHECK_INTERVAL:J = 0xc350L

.field private static final JELLY_BEAN_MR1_VERSION_CODE:I = 0x11

.field private static final MAX_CONTINUAL_TETHERING_ERROR:I = 0x5

.field private static final REPORT_INTERVAL:J = 0xc350L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private companionService:Lcom/google/glass/companion/IRemoteCompanionService;

.field private final context:Landroid/content/Context;

.field private volatile isConnected:Z

.field private lastCheckTime:J

.field private lastReportErrorTime:J

.field private messenger:Landroid/os/Messenger;

.field private tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 2
    .parameter "context"
    .parameter "userEventHelper"

    .prologue
    const-wide/16 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J

    .line 45
    iput-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/companion/ConnectionChecker$1;

    invoke-direct {v1, p0}, Lcom/google/glass/companion/ConnectionChecker$1;-><init>(Lcom/google/glass/companion/ConnectionChecker;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->messenger:Landroid/os/Messenger;

    .line 102
    iput-object p1, p0, Lcom/google/glass/companion/ConnectionChecker;->context:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/google/glass/companion/ConnectionChecker;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 104
    invoke-static {p0}, Lcom/google/glass/net/NetworkUtil;->setNetworkChecker(Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;)V

    .line 105
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/companion/ConnectionChecker;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/companion/ConnectionChecker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/companion/ConnectionChecker;->sendTetheringErrorMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/companion/ConnectionChecker;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method private sendTetheringErrorMessage()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 187
    sget-object v4, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "xxxxSend tethering error message to glass."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v3, Lcom/google/glass/companion/Proto$Error;

    invoke-direct {v3}, Lcom/google/glass/companion/Proto$Error;-><init>()V

    .line 189
    .local v3, error:Lcom/google/glass/companion/Proto$Error;
    iput v7, v3, Lcom/google/glass/companion/Proto$Error;->type:I

    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 193
    :try_start_1
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    .line 194
    .local v2, envelope:Lcom/google/glass/companion/Proto$Envelope;
    iput-object v3, v2, Lcom/google/glass/companion/Proto$Envelope;->error:Lcom/google/glass/companion/Proto$Error;

    .line 195
    iget-object v4, p0, Lcom/google/glass/companion/ConnectionChecker;->messenger:Landroid/os/Messenger;

    invoke-static {v2, v4}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    .line 196
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-interface {v4, v0}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #envelope:Lcom/google/glass/companion/Proto$Envelope;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 202
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error sending envelope to companion service."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method


# virtual methods
.method public check()V
    .locals 7

    .prologue
    const-wide/32 v5, 0xc350

    .line 119
    iget-wide v1, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J

    add-long/2addr v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v1, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J

    add-long/2addr v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v1, :cond_3

    .line 127
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 129
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :try_start_2
    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-interface {v1}, Lcom/google/glass/companion/IRemoteCompanionService;->ping()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error occurs while pinging."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public isTetheringErrorDetected()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportError()V
    .locals 12

    .prologue
    const-wide/32 v10, 0xc350

    .line 141
    iget-wide v6, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    add-long/2addr v6, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    iget-boolean v6, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v6, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    monitor-enter p0

    .line 147
    :try_start_0
    iget-wide v6, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    add-long/2addr v6, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    iget-boolean v6, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/glass/companion/ConnectionChecker;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/glass/net/NetworkUtil;->hasTetheredConnectivity(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v6, :cond_3

    .line 152
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 154
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    .line 156
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->getNextUniqueId()J

    move-result-wide v3

    .line 157
    .local v3, id:J
    new-instance v5, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v5}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    .line 158
    .local v5, request:Lcom/google/glass/companion/Proto$CompanionInfo;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    .line 159
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    .line 160
    sget-object v6, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "xxxxx Requesting companion info, id = %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    .line 163
    .local v2, envelope:Lcom/google/glass/companion/Proto$Envelope;
    iput-object v5, v2, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 164
    iget-object v6, p0, Lcom/google/glass/companion/ConnectionChecker;->messenger:Landroid/os/Messenger;

    invoke-static {v2, v6}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 166
    .local v0, bundle:Landroid/os/Bundle;
    :try_start_2
    iget-object v6, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-interface {v6, v0}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 170
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Landroid/os/RemoteException;
    sget-object v6, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error sending envelope to companion service."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v1, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public reportOK()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 176
    return-void
.end method

.method public declared-synchronized setCompanionService(Lcom/google/glass/companion/IRemoteCompanionService;)V
    .locals 1
    .parameter "companionService"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConnectState(Z)V
    .locals 2
    .parameter "isConnected"

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    .line 113
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
