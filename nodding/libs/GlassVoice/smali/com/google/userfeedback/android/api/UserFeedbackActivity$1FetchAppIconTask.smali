.class Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;
.super Landroid/os/AsyncTask;
.source "UserFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/UserFeedbackActivity;->updateAppIcon(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchAppIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mAppIcon:Landroid/widget/ImageView;

.field mAppIconRes:I

.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

.field final synthetic val$thisActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->val$thisActivity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "args"

    .prologue
    .line 304
    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->val$thisActivity:Landroid/app/Activity;

    sget v5, Lcom/google/userfeedback/android/api/R$id;->gf_app_icon:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->mAppIcon:Landroid/widget/ImageView;

    .line 305
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 306
    .local v1, cx:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 308
    .local v3, pm:Landroid/content/pm/PackageManager;
    sget v4, Lcom/google/userfeedback/android/api/R$drawable;->gf_icon:I

    iput v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->mAppIconRes:I

    .line 310
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 311
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->mAppIconRes:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 312
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 298
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->mAppIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1FetchAppIconTask;->mAppIconRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    return-void
.end method
