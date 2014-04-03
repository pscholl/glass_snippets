.class public final Lcom/google/glass/maps/MapHelper;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Landroid/content/ComponentName;

.field private static c:Lcom/google/glass/maps/MapHelper;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Lcom/google/glass/maps/MapHelper$ConnectionState;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/Queue;

.field private final i:Ljava/util/Map;

.field private final j:Ljava/util/Map;

.field private k:Landroid/os/Messenger;

.field private final l:Landroid/os/Handler;

.field private final m:Landroid/os/Messenger;

.field private final n:Landroid/content/ServiceConnection;

.field private final o:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.maps"

    const-string v2, "com.google.glass.maps.service.MapRenderingService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/maps/MapHelper;->b:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->f:Lcom/google/glass/maps/MapHelper$ConnectionState;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->g:Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/Lists;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->h:Ljava/util/Queue;

    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->i:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->j:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->k:Landroid/os/Messenger;

    new-instance v0, Lcom/google/glass/maps/k;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/k;-><init>(Lcom/google/glass/maps/MapHelper;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->l:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->l:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->m:Landroid/os/Messenger;

    new-instance v0, Lcom/google/glass/maps/l;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/l;-><init>(Lcom/google/glass/maps/MapHelper;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->n:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/google/glass/maps/m;

    const/high16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/m;-><init>(Lcom/google/glass/maps/MapHelper;I)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->o:Landroid/util/LruCache;

    iput-object p1, p0, Lcom/google/glass/maps/MapHelper;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    sget-object v0, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v1, "Connected to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->k:Landroid/os/Messenger;

    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->f:Lcom/google/glass/maps/MapHelper$ConnectionState;

    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->e()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    sget-object v0, Lcom/google/glass/maps/MapHelper;->c:Lcom/google/glass/maps/MapHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/maps/MapHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/maps/MapHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/maps/MapHelper;->c:Lcom/google/glass/maps/MapHelper;

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->g:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->i:Ljava/util/Map;

    iget-object v1, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/s;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->j:Ljava/util/Map;

    iget-object v4, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    iget-object v3, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    invoke-static {v3}, Lcom/google/glass/util/a;->a([B)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    sget-object v4, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v5, "Rendering succeeded: %s, %d bytes"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    aput-object v2, v6, v7

    array-length v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->o:Landroid/util/LruCache;

    monitor-enter v2

    :try_start_2
    iget-object v4, p0, Lcom/google/glass/maps/MapHelper;->o:Landroid/util/LruCache;

    invoke-virtual {v4, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/glass/maps/s;->a([B)Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v2, "Invalid incoming message!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    sget-object v1, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v2, "Corresponding request not found!"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v3, "Rendering failed: %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    aput-object v2, v4, v7

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/glass/maps/MapHelper$MapRendererException;

    invoke-direct {v1}, Lcom/google/glass/maps/MapHelper$MapRendererException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/s;->a(Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/glass/maps/MapHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->d()V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/MapHelper;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/MapHelper;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/MapHelper;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v1, "Cancelling request: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    iput-object p1, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->h:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 2

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

.method private a(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B
    .locals 2

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->o:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->o:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/m;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;->a(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v2, "Returning map from cache"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/e;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->g()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v2, "Adding RENDER_MAP request: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/nano/b;->toByteArray(Lcom/google/protobuf/nano/b;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iput-object v1, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    iput v5, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    new-instance v0, Lcom/google/glass/maps/s;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/s;-><init>(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->g:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/google/glass/maps/MapHelper;->h:Ljava/util/Queue;

    invoke-interface {v4, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->i:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->j:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->f()V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v2, "unable to parse map render request proto."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/MapHelper;->c:Lcom/google/glass/maps/MapHelper;

    invoke-direct {v0}, Lcom/google/glass/maps/MapHelper;->c()V

    sget-object v0, Lcom/google/glass/maps/MapHelper;->c:Lcom/google/glass/maps/MapHelper;

    return-object v0
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->f:Lcom/google/glass/maps/MapHelper$ConnectionState;

    sget-object v1, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v1, "Opening connection to MapRenderingService from: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/google/glass/maps/MapHelper;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTING:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->f:Lcom/google/glass/maps/MapHelper$ConnectionState;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v1, "bindService() failed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/glass/maps/MapHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->b()V

    return-void
.end method

.method private c(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/m;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;->b(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/n;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/n;-><init>(Lcom/google/glass/maps/MapHelper;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/e;->a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/b;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->l:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/maps/q;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/q;-><init>(Lcom/google/glass/maps/MapHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/google/glass/maps/MapHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->e()V

    return-void
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->f:Lcom/google/glass/maps/MapHelper$ConnectionState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->k:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/s;

    new-instance v3, Lcom/google/glass/maps/MapHelper$MapRendererException;

    invoke-direct {v3}, Lcom/google/glass/maps/MapHelper$MapRendererException;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/s;->a(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v1, "Disconnected from MapRenderingService!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private e()V
    .locals 6

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->k:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v2, "Sending %s requests"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->h:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "payload"

    invoke-static {v0}, Lcom/google/protobuf/nano/b;->toByteArray(Lcom/google/protobuf/nano/b;)[B

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->m:Landroid/os/Messenger;

    iput-object v0, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->k:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->d()V

    sget-object v2, Lcom/google/glass/maps/MapHelper;->a:Lcom/google/glass/logging/i;

    const-string v3, "RemoteException"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->l:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/maps/r;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/r;-><init>(Lcom/google/glass/maps/MapHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->d:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Lcom/google/glass/maps/t;)Lcom/google/common/util/concurrent/m;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;->c(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/p;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/glass/maps/p;-><init>(Lcom/google/glass/maps/MapHelper;Lcom/google/glass/maps/t;Lcom/google/common/util/concurrent/m;)V

    invoke-static {}, Lcom/google/common/util/concurrent/p;->a()Lcom/google/common/util/concurrent/o;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/m;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
