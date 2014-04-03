.class Lcom/google/userfeedback/android/api/UserFeedbackActivity$4;
.super Ljava/lang/Object;
.source "UserFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/UserFeedbackActivity;->configureActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$4;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 247
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$4;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$4;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    sget v3, Lcom/google/userfeedback/android/api/R$string;->gf_privacy_policy:I

    invoke-virtual {v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$4;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    sget v3, Lcom/google/userfeedback/android/api/R$string;->gf_privacy_text:I

    invoke-virtual {v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 251
    .local v0, privacyMessage:Landroid/app/AlertDialog;
    const-string v1, "OK"

    new-instance v2, Lcom/google/userfeedback/android/api/UserFeedbackActivity$4$1;

    invoke-direct {v2, p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$4$1;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 258
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 259
    return-void
.end method
