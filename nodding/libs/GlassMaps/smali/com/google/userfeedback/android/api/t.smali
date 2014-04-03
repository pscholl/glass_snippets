.class final Lcom/google/userfeedback/android/api/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/t;->b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/t;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/google/userfeedback/android/api/t;->b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->d(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/userfeedback/android/api/t;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/t;->b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/userfeedback/android/api/t;->b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/userfeedback/android/api/t;->b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->c(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/userfeedback/android/api/m;->a(Landroid/app/Activity;ZZLjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/t;->b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->d(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/userfeedback/android/api/t;->b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/userfeedback/android/api/t;->b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/userfeedback/android/api/t;->b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->c(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/m;->a(ZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/t;->b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/t;->b:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
