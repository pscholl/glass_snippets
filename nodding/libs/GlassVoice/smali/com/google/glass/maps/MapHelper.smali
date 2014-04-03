.class public Lcom/google/glass/maps/MapHelper;
.super Ljava/lang/Object;
.source "MapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/maps/MapHelper$ConnectionState;,
        Lcom/google/glass/maps/MapHelper$MapRendererFuture;,
        Lcom/google/glass/maps/MapHelper$MapRendererException;,
        Lcom/google/glass/maps/MapHelper$SimpleOnMapRenderedListener;,
        Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "map"

.field public static final KEY_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final MAP_CACHE_MAX_BYTES:I = 0x400000

.field private static final MAP_RENDERING_SERVICE:Landroid/content/ComponentName; = null

.field private static final SCHEME:Ljava/lang/String; = "glass"

.field private static instance:Lcom/google/glass/maps/MapHelper;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

.field private final context:Landroid/content/Context;

.field private final futures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/maps/MapHelper$MapRendererFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final incoming:Landroid/os/Messenger;

.field private final mapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;",
            "[B>;"
        }
    .end annotation
.end field

.field private outgoing:Landroid/os/Messenger;

.field private final outstandingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final requestStateLock:Ljava/lang/Object;

.field private final serialNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 101
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.maps"

    const-string v2, "com.google.glass.maps.service.MapRenderingService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/maps/MapHelper;->MAP_RENDERING_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->serialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    .line 139
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    .line 140
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    .line 143
    new-instance v0, Lcom/google/glass/maps/MapHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/MapHelper$1;-><init>(Lcom/google/glass/maps/MapHelper;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->handler:Landroid/os/Handler;

    .line 149
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->incoming:Landroid/os/Messenger;

    .line 150
    new-instance v0, Lcom/google/glass/maps/MapHelper$2;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/MapHelper$2;-><init>(Lcom/google/glass/maps/MapHelper;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connection:Landroid/content/ServiceConnection;

    .line 162
    new-instance v0, Lcom/google/glass/maps/MapHelper$3;

    const/high16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/MapHelper$3;-><init>(Lcom/google/glass/maps/MapHelper;I)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    .line 177
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;->cancelMapRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/maps/MapHelper;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/maps/MapHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->handleDisconnection()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/maps/MapHelper;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/MapHelper;->handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/maps/MapHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->connectIfNecessary()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/maps/MapHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->flushQueue()V

    return-void
.end method

.method private cancelMapRequest(Ljava/lang/String;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 291
    sget-object v1, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cancelling request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    .line 293
    .local v0, request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    iput-object p1, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    .line 294
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    .line 295
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    monitor-exit v2

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private connectIfNecessary()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 304
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 306
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    sget-object v2, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    if-ne v1, v2, :cond_0

    .line 307
    sget-object v1, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Opening connection to MapRenderingService from: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 309
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/google/glass/maps/MapHelper;->MAP_RENDERING_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    sget-object v1, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTING:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 316
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 313
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    sget-object v1, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "bindService() failed."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private flushQueue()V
    .locals 9

    .prologue
    .line 391
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 393
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 394
    iget-object v4, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 395
    :try_start_0
    sget-object v3, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Sending %s requests"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :goto_0
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 398
    .local v2, request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 399
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "payload"

    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 400
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->incoming:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 408
    :try_start_2
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 410
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 403
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    :catch_0
    move-exception v0

    .line 404
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->handleDisconnection()V

    .line 405
    sget-object v3, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "RemoteException"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    :cond_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 412
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    sget-object v0, Lcom/google/glass/maps/MapHelper;->instance:Lcom/google/glass/maps/MapHelper;

    invoke-direct {v0}, Lcom/google/glass/maps/MapHelper;->postConnectIfNecessary()V

    .line 121
    sget-object v0, Lcom/google/glass/maps/MapHelper;->instance:Lcom/google/glass/maps/MapHelper;

    return-object v0
.end method

.method private getNextId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->serialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 365
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 366
    sget-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Connected to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    .line 368
    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 369
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->flushQueue()V

    .line 370
    return-void
.end method

.method private handleDisconnection()V
    .locals 5

    .prologue
    .line 374
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 375
    sget-object v2, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v2, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 376
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    .line 378
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 380
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/MapHelper$MapRendererFuture;

    .line 381
    .local v0, future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    new-instance v2, Lcom/google/glass/maps/MapHelper$MapRendererException;

    invoke-direct {v2}, Lcom/google/glass/maps/MapHelper$MapRendererException;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 385
    .end local v0           #future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 383
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 384
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 385
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    sget-object v2, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Disconnected from MapRenderingService!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 332
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "payload"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 340
    .local v4, response:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    iget-object v6, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 341
    :try_start_1
    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    iget-object v7, v4, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/maps/MapHelper$MapRendererFuture;

    .line 342
    .local v2, future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    iget-object v7, v4, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 343
    .local v3, request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    if-eqz v2, :cond_0

    .line 345
    iget-object v5, v4, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    invoke-static {v5}, Lcom/google/glass/util/ArrayUtils;->isEmpty([B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 346
    iget-object v0, v4, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    .line 347
    .local v0, data:[B
    sget-object v5, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Rendering succeeded: %s, %d bytes"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    aput-object v8, v7, v9

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    if-eqz v3, :cond_1

    .line 349
    iget-object v6, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    monitor-enter v6

    .line 350
    :try_start_2
    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    invoke-virtual {v5, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->set([B)Z

    .line 361
    .end local v0           #data:[B
    .end local v2           #future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    .end local v3           #request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .end local v4           #response:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    :cond_0
    :goto_1
    return-void

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v5, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Invalid incoming message!"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 343
    .end local v1           #e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .restart local v4       #response:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 351
    .restart local v0       #data:[B
    .restart local v2       #future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    .restart local v3       #request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 353
    :cond_1
    sget-object v5, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Corresponding request not found!"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    .end local v0           #data:[B
    :cond_2
    sget-object v5, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Rendering failed: %s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    new-instance v5, Lcom/google/glass/maps/MapHelper$MapRendererException;

    invoke-direct {v5}, Lcom/google/glass/maps/MapHelper$MapRendererException;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 112
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 113
    sget-object v0, Lcom/google/glass/maps/MapHelper;->instance:Lcom/google/glass/maps/MapHelper;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/google/glass/maps/MapHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/maps/MapHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/maps/MapHelper;->instance:Lcom/google/glass/maps/MapHelper;

    .line 116
    :cond_0
    return-void
.end method

.method public static isGlassMapUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "glass"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "map"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postConnectIfNecessary()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/maps/MapHelper$6;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/MapHelper$6;-><init>(Lcom/google/glass/maps/MapHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method private postFlushQueue()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/maps/MapHelper$7;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/MapHelper$7;-><init>(Lcom/google/glass/maps/MapHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
.end method


# virtual methods
.method public getCachedMapPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B
    .locals 2
    .parameter "request"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renderMap(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper;->renderMapToPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/MapHelper$4;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/MapHelper$4;-><init>(Lcom/google/glass/maps/MapHelper;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public renderMap(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .parameter "request"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;",
            "Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper;->renderMap(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 271
    .local v0, future:Lcom/google/common/util/concurrent/ListenableFuture;,"Lcom/google/common/util/concurrent/ListenableFuture<Landroid/graphics/Bitmap;>;"
    new-instance v1, Lcom/google/glass/maps/MapHelper$5;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/glass/maps/MapHelper$5;-><init>(Lcom/google/glass/maps/MapHelper;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 286
    return-object v0
.end method

.method public renderMapToPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 198
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper;->getCachedMapPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B

    move-result-object v0

    .line 199
    .local v0, cachedData:[B
    if-eqz v0, :cond_0

    .line 200
    sget-object v5, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Returning map from cache"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 227
    :goto_0
    return-object v2

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->getNextId()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, id:Ljava/lang/String;
    sget-object v5, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Adding RENDER_MAP request: %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    const/4 v4, 0x0

    .line 211
    .local v4, serviceRequest:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 217
    iput-object v3, v4, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    .line 218
    iput v9, v4, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    .line 220
    new-instance v2, Lcom/google/glass/maps/MapHelper$MapRendererFuture;

    invoke-direct {v2, p0, v3}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;-><init>(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V

    .line 221
    .local v2, future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    iget-object v6, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 222
    :try_start_1
    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->postFlushQueue()V

    goto :goto_0

    .line 212
    .end local v2           #future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v5, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "unable to parse map render request proto."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    const/4 v2, 0x0

    goto :goto_0

    .line 225
    .end local v1           #e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .restart local v2       #future:Lcom/google/glass/maps/MapHelper$MapRendererFuture;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
