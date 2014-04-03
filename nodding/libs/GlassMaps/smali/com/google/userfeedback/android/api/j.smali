.class final Lcom/google/userfeedback/android/api/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/userfeedback/android/api/ab;

.field final synthetic b:Landroid/app/Service;

.field final synthetic c:Lcom/google/userfeedback/android/api/SendUserFeedbackService;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/SendUserFeedbackService;Lcom/google/userfeedback/android/api/ab;Landroid/app/Service;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/j;->c:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/j;->a:Lcom/google/userfeedback/android/api/ab;

    iput-object p3, p0, Lcom/google/userfeedback/android/api/j;->b:Landroid/app/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/j;->c:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/j;->c:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    invoke-static {v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a(Lcom/google/userfeedback/android/api/SendUserFeedbackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a(I)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/userfeedback/android/api/j;->b:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/google/userfeedback/android/api/af;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/j;->c:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iget-object v1, v1, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/af;-><init>(Lcom/google/userfeedback/android/api/aj;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/userfeedback/android/api/j;->a:Lcom/google/userfeedback/android/api/ab;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/userfeedback/android/api/ab;->a(Z)V

    iget-object v2, p0, Lcom/google/userfeedback/android/api/j;->a:Lcom/google/userfeedback/android/api/ab;

    invoke-virtual {v0, v2}, Lcom/google/userfeedback/android/api/af;->a(Lcom/google/userfeedback/android/api/ab;)Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/userfeedback/android/api/j;->c:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    invoke-virtual {v2, v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a(Ljava/io/File;)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/j;->c:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    sget v2, Lcom/google/userfeedback/android/api/i;->gf_report_being_sent:I

    invoke-static {v0, v2}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->a(Lcom/google/userfeedback/android/api/SendUserFeedbackService;I)I

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/j;->a(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/j;->a(Ljava/io/File;)V

    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "GFEEDBACK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/j;->a(Ljava/io/File;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/j;->a(Ljava/io/File;)V

    throw v0
.end method
