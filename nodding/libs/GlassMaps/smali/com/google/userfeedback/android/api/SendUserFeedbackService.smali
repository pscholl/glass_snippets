.class public Lcom/google/userfeedback/android/api/SendUserFeedbackService;
.super Landroid/app/Service;


# static fields
.field private static e:Z


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/google/userfeedback/android/api/aj;

.field private final c:Landroid/os/IBinder;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/userfeedback/android/api/k;

    invoke-direct {v0, p0}, Lcom/google/userfeedback/android/api/k;-><init>(Lcom/google/userfeedback/android/api/SendUserFeedbackService;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->c:Landroid/os/IBinder;

    sget v0, Lcom/google/userfeedback/android/api/i;->gf_report_sent_failure:I

    iput v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/userfeedback/android/api/SendUserFeedbackService;)I
    .locals 1

    iget v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->d:I

    return v0
.end method

.method static synthetic a(Lcom/google/userfeedback/android/api/SendUserFeedbackService;I)I
    .locals 0

    iput p1, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->d:I

    return p1
.end method

.method private a()Ljava/lang/String;
    .locals 4

    sget v0, Lcom/google/userfeedback/android/api/i;->gf_receiver_transport_scheme:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "http"

    :cond_0
    sget v1, Lcom/google/userfeedback/android/api/i;->gf_receiver_port:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/google/userfeedback/android/api/i;->gf_receiver_host:I

    invoke-virtual {p0, v2}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_receiver_path:I

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->e:Z

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->f()Lcom/google/userfeedback/android/api/ab;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->stopSelf()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->f()Lcom/google/userfeedback/android/api/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:Ljava/lang/String;

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->b:Lcom/google/userfeedback/android/api/aj;

    :try_start_0
    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->c()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->c()V

    goto :goto_0

    :cond_2
    :try_start_1
    sget v0, Lcom/google/userfeedback/android/api/i;->gf_report_queued:I

    iput v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->d:I

    iget v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->d:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a(I)V

    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->stopSelf()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->stopSelf()V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->f()Lcom/google/userfeedback/android/api/ab;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/userfeedback/android/api/j;

    invoke-direct {v2, p0, v0, p0}, Lcom/google/userfeedback/android/api/j;-><init>(Lcom/google/userfeedback/android/api/SendUserFeedbackService;Lcom/google/userfeedback/android/api/ab;Landroid/app/Service;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/File;)I
    .locals 6

    const/16 v5, 0x4e20

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/entity/FileEntity;

    const-string v2, "application/x-protobuf"

    invoke-direct {v1, p1, v2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v1, Lcom/x/google/common/io/a/f;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/aj;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "AndroidGoogleUIF/1.0"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/x/google/common/io/a/f;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/x/google/common/io/a/f;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/x/google/common/io/a/f;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v1}, Lcom/x/google/common/io/a/f;->a()V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http response status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/x/google/common/io/a/f;->a()V

    throw v0
.end method

.method protected final a(I)V
    .locals 2

    sget-boolean v0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->j()V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->e:Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->b()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->b()V

    const/4 v0, 0x2

    return v0
.end method
