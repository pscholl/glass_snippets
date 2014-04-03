.class final Lcom/google/glass/util/ab;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/glass/util/z;


# direct methods
.method constructor <init>(Lcom/google/glass/util/z;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/ab;->c:Lcom/google/glass/util/z;

    iput-object p2, p0, Lcom/google/glass/util/ab;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/glass/util/ab;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/util/ab;->c:Lcom/google/glass/util/z;

    iget-object v1, p0, Lcom/google/glass/util/ab;->a:Landroid/view/View;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/glass/util/ab;->b:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/z;->a(Landroid/view/View;ZZ)V

    return-void
.end method
