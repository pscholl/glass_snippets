.class final Lcom/google/userfeedback/android/api/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/userfeedback/android/api/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/PreviewActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/a;->b:Lcom/google/userfeedback/android/api/PreviewActivity;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/userfeedback/android/api/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->c()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->d()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/userfeedback/android/api/m;->a(Landroid/app/Activity;ZZLjava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->c()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->d()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/m;->a(ZZLjava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/userfeedback/android/api/a;->b:Lcom/google/userfeedback/android/api/PreviewActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/a;->b:Lcom/google/userfeedback/android/api/PreviewActivity;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
