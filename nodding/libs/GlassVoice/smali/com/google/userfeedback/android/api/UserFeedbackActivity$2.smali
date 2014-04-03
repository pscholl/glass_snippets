.class Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;
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

.field final synthetic val$thisActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->val$thisActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "currentView"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    #getter for: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;
    invoke-static {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v1

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->val$thisActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    #calls: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->shouldIncludeScreenshot()Z
    invoke-static {v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$000(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    #calls: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->shouldIncludeSystemLogs()Z
    invoke-static {v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$100(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    #getter for: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mFeedbackText:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$200(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/userfeedback/android/api/UserFeedback;->createDialog(Landroid/app/Activity;ZZLjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 212
    .local v0, dialog:Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    #getter for: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mUserfeedback:Lcom/google/userfeedback/android/api/UserFeedback;
    invoke-static {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v1

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    #calls: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->shouldIncludeScreenshot()Z
    invoke-static {v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$000(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    #calls: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->shouldIncludeSystemLogs()Z
    invoke-static {v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$100(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    #getter for: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mFeedbackText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$200(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/userfeedback/android/api/UserFeedback;->submitFeedback(ZZLjava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    .line 216
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$2;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finish()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
