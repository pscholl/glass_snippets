.class final Lcom/google/userfeedback/android/api/o;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/google/userfeedback/android/api/m;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/o;->a:Lcom/google/userfeedback/android/api/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/o;->a:Lcom/google/userfeedback/android/api/m;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/o;->a:Lcom/google/userfeedback/android/api/m;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->h()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/google/userfeedback/android/api/o;->a:Lcom/google/userfeedback/android/api/m;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/m;->a(Lcom/google/userfeedback/android/api/m;)Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/o;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/o;->a(Ljava/lang/Void;)V

    return-void
.end method
