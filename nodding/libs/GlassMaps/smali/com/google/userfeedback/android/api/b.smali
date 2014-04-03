.class final Lcom/google/userfeedback/android/api/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/userfeedback/android/api/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/PreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/b;->a:Lcom/google/userfeedback/android/api/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/userfeedback/android/api/b;->a:Lcom/google/userfeedback/android/api/PreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/PreviewActivity;->setResult(I)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/b;->a:Lcom/google/userfeedback/android/api/PreviewActivity;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    return-void
.end method
