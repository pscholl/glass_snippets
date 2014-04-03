.class final Lcom/google/userfeedback/android/api/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/google/userfeedback/android/api/m;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/m;ZZLjava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/p;->e:Lcom/google/userfeedback/android/api/m;

    iput-boolean p2, p0, Lcom/google/userfeedback/android/api/p;->a:Z

    iput-boolean p3, p0, Lcom/google/userfeedback/android/api/p;->b:Z

    iput-object p4, p0, Lcom/google/userfeedback/android/api/p;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/userfeedback/android/api/p;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/userfeedback/android/api/p;->e:Lcom/google/userfeedback/android/api/m;

    iget-boolean v1, p0, Lcom/google/userfeedback/android/api/p;->a:Z

    iget-boolean v2, p0, Lcom/google/userfeedback/android/api/p;->b:Z

    iget-object v3, p0, Lcom/google/userfeedback/android/api/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/m;->a(ZZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/p;->d:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/google/userfeedback/android/api/p;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
