.class public Lcom/google/glass/maps/service/MapRenderingService;
.super Landroid/app/Service;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/HashMap;

.field private final d:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/service/MapRenderingService;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->c:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/maps/service/e;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/service/e;-><init>(Lcom/google/glass/maps/service/MapRenderingService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->d:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/glass/maps/service/MapRenderingService;->c(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_1

    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->a:Lcom/google/glass/logging/i;

    const-string v1, "Message did not have replyTo."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/maps/service/MapRenderingService;->a:Lcom/google/glass/logging/i;

    const-string v2, "Invalid incoming message!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    iget v2, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    new-instance v3, Lcom/google/glass/maps/service/g;

    invoke-direct {v3}, Lcom/google/glass/maps/service/g;-><init>()V

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/glass/maps/service/g;->a(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    move-result-object v0

    iput-object v1, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    iput v2, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    invoke-static {v0}, Lcom/google/glass/maps/service/MapRenderingService;->b(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/glass/maps/service/MapRenderingService;->a:Lcom/google/glass/logging/i;

    const-string v2, "Invalid request: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v7}, Lcom/google/glass/maps/service/MapRenderingService;->a(Landroid/os/Messenger;Ljava/lang/String;[B)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    sget-object v2, Lcom/google/glass/maps/service/MapRenderingService;->a:Lcom/google/glass/logging/i;

    const-string v3, "Error parsing URI"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v7}, Lcom/google/glass/maps/service/MapRenderingService;->a(Landroid/os/Messenger;Ljava/lang/String;[B)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/glass/maps/service/MapRenderingService;->a:Lcom/google/glass/logging/i;

    const-string v2, "Received request %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/glass/maps/service/MapRenderingService;->c(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/google/glass/maps/service/f;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/glass/maps/service/f;-><init>(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Messenger;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/glass/maps/service/MapRenderingService;->c:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/glass/maps/service/MapRenderingService;->b:Ljava/util/concurrent/ExecutorService;

    new-array v3, v6, [Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/maps/service/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/google/glass/maps/service/MapRenderingService;->c:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/service/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Lcom/google/glass/maps/service/f;->cancel(Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/os/Messenger;Ljava/lang/String;[B)V
    .locals 4

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;-><init>()V

    iput-object p2, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    if-eqz p3, :cond_0

    iput-object p3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "payload"

    invoke-static {v0}, Lcom/google/protobuf/nano/b;->toByteArray(Lcom/google/protobuf/nano/b;)[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/maps/service/MapRenderingService;->a:Lcom/google/glass/logging/i;

    const-string v2, "Unable to deliver response"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/service/MapRenderingService;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Messenger;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/service/MapRenderingService;->a(Landroid/os/Messenger;Ljava/lang/String;[B)V

    return-void
.end method

.method private static b(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x280

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x168

    if-gt v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static c(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v1, v1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v2, v2, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spans:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->a:Lcom/google/glass/logging/i;

    const-string v1, "onBind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->d:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->a:Lcom/google/glass/logging/i;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/google/glass/maps/service/MapRenderingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/ao;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/google/glass/maps/service/MapRenderingService;->a:Lcom/google/glass/logging/i;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
