.class Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;
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
    .line 195
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "currentView"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    #calls: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->shouldIncludeScreenshot()Z
    invoke-static {v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$000(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    #calls: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->shouldIncludeSystemLogs()Z
    invoke-static {v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$100(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    #getter for: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->mFeedbackText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$200(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/userfeedback/android/api/UserFeedbackActivity;->handleClick(ZZLjava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$300(Lcom/google/userfeedback/android/api/UserFeedbackActivity;ZZLjava/lang/String;)V

    .line 200
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/userfeedback/android/api/PreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    return-void
.end method
