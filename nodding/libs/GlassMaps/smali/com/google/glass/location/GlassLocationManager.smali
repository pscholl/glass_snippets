.class public Lcom/google/glass/location/GlassLocationManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static b:Lcom/google/glass/location/GlassLocationManager;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/location/LocationManager;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/HashMap;

.field private g:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

.field private h:Landroid/os/Messenger;

.field private final i:Landroid/os/Messenger;

.field private final j:Landroid/content/ServiceConnection;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/GlassLocationManager;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->f:Ljava/util/HashMap;

    sget-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->g:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->h:Landroid/os/Messenger;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/location/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/location/a;-><init>(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->i:Landroid/os/Messenger;

    new-instance v0, Lcom/google/glass/location/b;

    invoke-direct {v0, p0}, Lcom/google/glass/location/b;-><init>(Lcom/google/glass/location/GlassLocationManager;)V

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->j:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/location/GlassLocationManager;->k:I

    iput-object p1, p0, Lcom/google/glass/location/GlassLocationManager;->c:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->d:Landroid/location/LocationManager;

    return-void
.end method

.method public static a()Lcom/google/glass/location/GlassLocationManager;
    .locals 3

    const-class v1, Lcom/google/glass/location/GlassLocationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->b:Lcom/google/glass/location/GlassLocationManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v2, "GlassLocationManager was not initialised."

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->b:Lcom/google/glass/location/GlassLocationManager;

    invoke-direct {v0}, Lcom/google/glass/location/GlassLocationManager;->b()V

    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->b:Lcom/google/glass/location/GlassLocationManager;

    return-object v0
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/glass/location/GlassLocationManager;->b(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/f/a;->c()V

    sget-object v1, Lcom/google/glass/location/GlassLocationManager;->a:Lcom/google/glass/logging/i;

    const-string v2, "Connected to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->h:Landroid/os/Messenger;

    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->g:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/location/GlassLocationManager;->i:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "name"

    iget-object v4, p0, Lcom/google/glass/location/GlassLocationManager;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/google/glass/location/GlassLocationManager;->b(Landroid/os/Message;)V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/c;

    iget-object v0, v0, Lcom/google/glass/location/c;->a:Lcom/google/glass/location/i;

    invoke-virtual {v0}, Lcom/google/glass/location/i;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/glass/location/GlassLocationManager;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->b:Lcom/google/glass/location/GlassLocationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/location/GlassLocationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/location/GlassLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/location/GlassLocationManager;->b:Lcom/google/glass/location/GlassLocationManager;

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 7

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->a:Lcom/google/glass/logging/i;

    const-string v2, "Unhandled message type: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->d()[Lcom/google/glass/location/c;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    iget-object v6, v5, Lcom/google/glass/location/c;->a:Lcom/google/glass/location/i;

    invoke-virtual {v6}, Lcom/google/glass/location/i;->a()I

    move-result v6

    if-ne v6, v2, :cond_1

    iget-object v5, v5, Lcom/google/glass/location/c;->b:Landroid/location/LocationListener;

    invoke-interface {v5, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/glass/location/GlassLocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->c()V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/location/GlassLocationManager;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/location/GlassLocationManager;->a(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/location/GlassLocationManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/location/GlassLocationManager;->a(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->g:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->a:Lcom/google/glass/logging/i;

    const-string v1, "Opening connection to LocationService from: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/location/GlassLocationManager;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/google/glass/location/d;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/location/GlassLocationManager;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTING:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->g:Lcom/google/glass/location/GlassLocationManager$ConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->a:Lcom/google/glass/logging/i;

    const-string v1, "bindService() failed. Remaining disconnected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->g:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->a:Lcom/google/glass/logging/i;

    const-string v1, "Dropping message: %s, state: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/google/glass/location/d;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/glass/location/GlassLocationManager;->g:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->b()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->a:Lcom/google/glass/logging/i;

    const-string v1, "Sending message: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/google/glass/location/d;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->h:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->a:Lcom/google/glass/logging/i;

    const-string v1, "RemoteException sending message: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/google/glass/location/d;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->c()V

    invoke-direct {p0}, Lcom/google/glass/location/GlassLocationManager;->b()V

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/f/a;->c()V

    sget-object v0, Lcom/google/glass/location/GlassLocationManager;->a:Lcom/google/glass/logging/i;

    const-string v1, "Disconnected from LocationService!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->g:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->h:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()[Lcom/google/glass/location/c;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/glass/location/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/location/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Landroid/location/Location;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/google/glass/location/GlassLocationManager;->d:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/location/LocationListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/c;

    iget-object v0, v0, Lcom/google/glass/location/c;->b:Landroid/location/LocationListener;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/c;

    const/4 v2, 0x3

    iget-object v0, v0, Lcom/google/glass/location/c;->a:Lcom/google/glass/location/i;

    invoke-virtual {v0}, Lcom/google/glass/location/i;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/google/glass/location/GlassLocationManager;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v7, Lcom/google/glass/location/c;

    new-instance v0, Lcom/google/glass/location/i;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget v2, p0, Lcom/google/glass/location/GlassLocationManager;->k:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/glass/location/GlassLocationManager;->k:I

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/location/i;-><init>(IILjava/lang/String;JF)V

    invoke-direct {v7, v0, p5}, Lcom/google/glass/location/c;-><init>(Lcom/google/glass/location/i;Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/google/glass/location/GlassLocationManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    iget-object v1, v7, Lcom/google/glass/location/c;->a:Lcom/google/glass/location/i;

    invoke-virtual {v1}, Lcom/google/glass/location/i;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/location/GlassLocationManager;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
