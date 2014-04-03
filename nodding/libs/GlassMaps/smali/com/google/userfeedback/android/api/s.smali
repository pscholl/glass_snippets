.class final Lcom/google/userfeedback/android/api/s;
.super Landroid/os/AsyncTask;


# instance fields
.field a:I

.field b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/s;->d:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/s;->c:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/google/userfeedback/android/api/s;->c:Landroid/app/Activity;

    sget v1, Lcom/google/userfeedback/android/api/g;->gf_app_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/s;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget v2, Lcom/google/userfeedback/android/api/f;->gf_icon:I

    iput v2, p0, Lcom/google/userfeedback/android/api/s;->a:I

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/google/userfeedback/android/api/s;->a:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/google/userfeedback/android/api/s;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/userfeedback/android/api/s;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/s;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/s;->a(Ljava/lang/Void;)V

    return-void
.end method
