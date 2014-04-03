.class final Lcom/google/userfeedback/android/api/ag;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/google/userfeedback/android/api/ab;

.field final synthetic b:Lcom/google/userfeedback/android/api/ah;

.field final synthetic c:Lcom/google/userfeedback/android/api/af;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;Lcom/google/userfeedback/android/api/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/ag;->c:Lcom/google/userfeedback/android/api/af;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/ag;->a:Lcom/google/userfeedback/android/api/ab;

    iput-object p3, p0, Lcom/google/userfeedback/android/api/ag;->b:Lcom/google/userfeedback/android/api/ah;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ag;->c:Lcom/google/userfeedback/android/api/af;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/ag;->a:Lcom/google/userfeedback/android/api/ab;

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/af;->a(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ag;->c:Lcom/google/userfeedback/android/api/af;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/ag;->a:Lcom/google/userfeedback/android/api/ab;

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/af;->b(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ag;->c:Lcom/google/userfeedback/android/api/af;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/ag;->a:Lcom/google/userfeedback/android/api/ab;

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/af;->c(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ag;->c:Lcom/google/userfeedback/android/api/af;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/ag;->a:Lcom/google/userfeedback/android/api/ab;

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/af;->d(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ag;->c:Lcom/google/userfeedback/android/api/af;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/ag;->a:Lcom/google/userfeedback/android/api/ab;

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/af;->e(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ag;->c:Lcom/google/userfeedback/android/api/af;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/ag;->a:Lcom/google/userfeedback/android/api/ab;

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/af;->f(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ag;->c:Lcom/google/userfeedback/android/api/af;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/ag;->a:Lcom/google/userfeedback/android/api/ab;

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/af;->g(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ag;->b:Lcom/google/userfeedback/android/api/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ag;->b:Lcom/google/userfeedback/android/api/ah;

    invoke-interface {v0}, Lcom/google/userfeedback/android/api/ah;->a()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/ag;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
