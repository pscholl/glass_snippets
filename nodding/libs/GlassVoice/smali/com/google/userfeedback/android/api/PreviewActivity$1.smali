.class Lcom/google/userfeedback/android/api/PreviewActivity$1;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/PreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/PreviewActivity;

.field final synthetic val$thisActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/PreviewActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/userfeedback/android/api/PreviewActivity$1;->this$0:Lcom/google/userfeedback/android/api/PreviewActivity;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/PreviewActivity$1;->val$thisActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "currentView"

    .prologue
    .line 56
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v2

    .line 57
    .local v2, uf:Lcom/google/userfeedback/android/api/UserFeedback;
    iget-object v3, p0, Lcom/google/userfeedback/android/api/PreviewActivity$1;->val$thisActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->shouldIncludeScreenshot()Z

    move-result v4

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->shouldIncludeSystemLogs()Z

    move-result v5

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->getFeedbackText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/userfeedback/android/api/UserFeedback;->createDialog(Landroid/app/Activity;ZZLjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 59
    .local v0, dialog:Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 60
    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->shouldIncludeScreenshot()Z

    move-result v3

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->shouldIncludeSystemLogs()Z

    move-result v4

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->getFeedbackText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/userfeedback/android/api/UserFeedback;->submitFeedback(ZZLjava/lang/String;)V

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/userfeedback/android/api/PreviewActivity$1;->this$0:Lcom/google/userfeedback/android/api/PreviewActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/google/userfeedback/android/api/PreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 64
    iget-object v3, p0, Lcom/google/userfeedback/android/api/PreviewActivity$1;->this$0:Lcom/google/userfeedback/android/api/PreviewActivity;

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    .line 68
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
