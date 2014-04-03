.class public Lcom/google/glass/ongoing/OngoingActivityManager;
.super Ljava/lang/Object;
.source "OngoingActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;,
        Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;,
        Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;
    }
.end annotation


# static fields
.field static final MSG_REGISTER:I = 0x1

.field static final MSG_UPDATE:I = 0x2

.field static final ONGOING_ACTIVITY_SERVICE:Landroid/content/ComponentName;

.field private static instance:Lcom/google/glass/ongoing/OngoingActivityManager;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final connectionLock:Ljava/lang/Object;

.field private connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

.field private final context:Landroid/content/Context;

.field private final incoming:Landroid/os/Messenger;

.field private final messengerFactory:Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;

.field private final ongoingActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;",
            "Lcom/google/glass/ongoing/OngoingActivityMessage;",
            ">;"
        }
    .end annotation
.end field

.field private outgoing:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 50
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.home"

    const-string v2, "com.google.glass.ongoing.OngoingActivityService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->ONGOING_ACTIVITY_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)V
    .locals 2
    .parameter "context"
    .parameter "messengerFactory"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    .line 102
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->incoming:Landroid/os/Messenger;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityManager$2;

    invoke-direct {v0, p0}, Lcom/google/glass/ongoing/OngoingActivityManager$2;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager;)V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connection:Landroid/content/ServiceConnection;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    .line 123
    iput-object p1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->context:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->messengerFactory:Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/ongoing/OngoingActivityManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->handleDisconnection()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/ongoing/OngoingActivityManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/glass/ongoing/OngoingActivityManager;->handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method private connectIfNecessary()V
    .locals 7

    .prologue
    .line 171
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    sget-object v3, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    if-ne v1, v3, :cond_0

    .line 173
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Opening connection to OngoingActivityService from: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->ONGOING_ACTIVITY_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTING:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 183
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 184
    return-void

    .line 180
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "bindService() failed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static createForTest(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)Lcom/google/glass/ongoing/OngoingActivityManager;
    .locals 1
    .parameter "context"
    .parameter "factory"

    .prologue
    .line 87
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 88
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/ongoing/OngoingActivityManager;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/glass/ongoing/OngoingActivityManager;
    .locals 4
    .parameter "context"

    .prologue
    .line 70
    const-class v2, Lcom/google/glass/ongoing/OngoingActivityManager;

    monitor-enter v2

    .line 71
    :try_start_0
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    .local v0, appContext:Landroid/content/Context;
    new-instance v1, Lcom/google/glass/ongoing/OngoingActivityManager;

    new-instance v3, Lcom/google/glass/ongoing/OngoingActivityManager$1;

    invoke-direct {v3}, Lcom/google/glass/ongoing/OngoingActivityManager$1;-><init>()V

    invoke-direct {v1, v0, v3}, Lcom/google/glass/ongoing/OngoingActivityManager;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;)V

    sput-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    .line 80
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    invoke-direct {v1}, Lcom/google/glass/ongoing/OngoingActivityManager;->connectIfNecessary()V

    .line 82
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->instance:Lcom/google/glass/ongoing/OngoingActivityManager;

    return-object v1

    .line 80
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 188
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Connected to %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v5, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v5

    .line 190
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->messengerFactory:Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;

    invoke-interface {v4, p2}, Lcom/google/glass/ongoing/OngoingActivityManager$MessengerFactory;->create(Landroid/os/IBinder;)Landroid/os/Messenger;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    .line 191
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 193
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 194
    .local v3, registration:Landroid/os/Message;
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->incoming:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Sending registration request"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0, v3}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessage(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    iget-object v5, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    monitor-enter v5

    .line 205
    :try_start_3
    iget-object v4, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/ongoing/OngoingActivityMessage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 207
    .local v2, message:Lcom/google/glass/ongoing/OngoingActivityMessage;
    :try_start_4
    invoke-direct {p0, v2}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendOngoingActivityMessage(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 212
    .end local v2           #message:Lcom/google/glass/ongoing/OngoingActivityMessage;
    :cond_0
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 213
    return-void

    .line 198
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 199
    .local v0, e:Landroid/os/RemoteException;
    :try_start_6
    sget-object v4, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "RemoteException"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #registration:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 212
    .restart local v3       #registration:Landroid/os/Message;
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4
.end method

.method private handleDisconnection()V
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    .line 220
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Disconnected from OngoingActivityService!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    return-void

    .line 220
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p1, Landroid/os/Message;->arg1:I

    .line 243
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->outgoing:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->handleDisconnection()V

    .line 246
    throw v0
.end method

.method private sendMessageOrConnect(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->connectionState:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;

    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;->CONNECTED:Lcom/google/glass/ongoing/OngoingActivityManager$ConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 159
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendOngoingActivityMessage(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 167
    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/ongoing/OngoingActivityManager;->connectIfNecessary()V

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendOngoingActivityMessage(Lcom/google/glass/ongoing/OngoingActivityMessage;)V
    .locals 5
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 226
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityMessage;->getActivityType()Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Sending message: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 234
    .local v0, androidMessage:Landroid/os/Message;
    invoke-virtual {p1}, Lcom/google/glass/ongoing/OngoingActivityMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 235
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessage(Landroid/os/Message;)V

    .line 236
    return-void

    .line 230
    .end local v0           #androidMessage:Landroid/os/Message;
    :cond_0
    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Sending message: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public hideOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 147
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityMessage;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->HIDE:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/ongoing/OngoingActivityMessage;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;Landroid/os/Bundle;)V

    .line 148
    .local v0, message:Lcom/google/glass/ongoing/OngoingActivityMessage;
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    monitor-enter v2

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessageOrConnect(Lcom/google/glass/ongoing/OngoingActivityMessage;)V

    .line 152
    return-void

    .line 150
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public showOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V
    .locals 3
    .parameter "activity"
    .parameter "params"

    .prologue
    .line 134
    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityMessage;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->SHOW:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/glass/ongoing/OngoingActivityMessage;-><init>(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;Landroid/os/Bundle;)V

    .line 135
    .local v0, message:Lcom/google/glass/ongoing/OngoingActivityMessage;
    iget-object v2, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/ongoing/OngoingActivityManager;->ongoingActivities:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-direct {p0, v0}, Lcom/google/glass/ongoing/OngoingActivityManager;->sendMessageOrConnect(Lcom/google/glass/ongoing/OngoingActivityMessage;)V

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
