.class final Lcom/google/userfeedback/android/api/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/v;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/v;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/userfeedback/android/api/v;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    sget v2, Lcom/google/userfeedback/android/api/i;->gf_privacy_policy:I

    invoke-virtual {v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/userfeedback/android/api/v;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    sget v2, Lcom/google/userfeedback/android/api/i;->gf_privacy_text:I

    invoke-virtual {v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/google/userfeedback/android/api/w;

    invoke-direct {v2, p0}, Lcom/google/userfeedback/android/api/w;-><init>(Lcom/google/userfeedback/android/api/v;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
