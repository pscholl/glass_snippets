.class final Lcom/google/glass/maps/service/f;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/service/MapRenderingService;

.field private final b:Landroid/os/Messenger;

.field private final c:Ljava/lang/String;

.field private final d:J


# direct methods
.method constructor <init>(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/glass/maps/service/f;->a:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/google/glass/maps/service/f;->b:Landroid/os/Messenger;

    iput-object p3, p0, Lcom/google/glass/maps/service/f;->c:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/service/f;->d:J

    return-void
.end method

.method private a([B)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/service/f;->a:Lcom/google/glass/maps/service/MapRenderingService;

    iget-object v1, p0, Lcom/google/glass/maps/service/f;->b:Landroid/os/Messenger;

    iget-object v2, p0, Lcom/google/glass/maps/service/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/google/glass/maps/service/MapRenderingService;->a(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Messenger;Ljava/lang/String;[B)V

    return-void
.end method

.method private varargs a([Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B
    .locals 11

    const/4 v0, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/glass/maps/service/f;->d:J

    sub-long v2, v1, v3

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v4, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/maps/service/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->a()Lcom/google/glass/logging/i;

    move-result-object v2

    const-string v3, "Expected id %s but got %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/maps/service/f;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v1, v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->id:Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/google/glass/maps/service/f;->b:Landroid/os/Messenger;

    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->a()Lcom/google/glass/logging/i;

    move-result-object v2

    const-string v3, "Skipping due to requester death: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Lcom/google/glass/maps/service/MapRenderingService;->a(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->a()Lcom/google/glass/logging/i;

    move-result-object v2

    const-string v3, "Exception while rendering"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->a()Lcom/google/glass/logging/i;

    move-result-object v4

    const-string v5, "Executing request: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Lcom/google/glass/maps/service/MapRenderingService;->a(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/glass/maps/service/a;

    iget-object v5, p0, Lcom/google/glass/maps/service/f;->a:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-direct {v4, v5}, Lcom/google/glass/maps/service/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/google/glass/maps/service/a;->a(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/maps/service/f;->d:J

    sub-long/2addr v4, v6

    sub-long/2addr v4, v2

    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->a()Lcom/google/glass/logging/i;

    move-result-object v6

    const-string v7, "Rendering finished: %sms queued, %sms render"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->a()Lcom/google/glass/logging/i;

    move-result-object v1

    const-string v2, "Rendering failed: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/maps/service/f;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/service/f;->a([Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-direct {p0, p1}, Lcom/google/glass/maps/service/f;->a([B)V

    return-void
.end method
