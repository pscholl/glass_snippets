.class final Lcom/google/glass/widget/an;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/RotatingTipsView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/an;->a:Lcom/google/glass/widget/RotatingTipsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/widget/an;->a:Lcom/google/glass/widget/RotatingTipsView;

    iget-object v1, p0, Lcom/google/glass/widget/an;->a:Lcom/google/glass/widget/RotatingTipsView;

    invoke-static {v1}, Lcom/google/glass/widget/RotatingTipsView;->c(Lcom/google/glass/widget/RotatingTipsView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/RotatingTipsView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/widget/an;->a:Lcom/google/glass/widget/RotatingTipsView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/widget/an;->a:Lcom/google/glass/widget/RotatingTipsView;

    invoke-static {v2}, Lcom/google/glass/widget/RotatingTipsView;->d(Lcom/google/glass/widget/RotatingTipsView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/RotatingTipsView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/google/glass/widget/an;->a:Lcom/google/glass/widget/RotatingTipsView;

    iget-object v1, p0, Lcom/google/glass/widget/an;->a:Lcom/google/glass/widget/RotatingTipsView;

    invoke-static {v1}, Lcom/google/glass/widget/RotatingTipsView;->e(Lcom/google/glass/widget/RotatingTipsView;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/RotatingTipsView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/google/glass/widget/an;->a:Lcom/google/glass/widget/RotatingTipsView;

    invoke-static {v0}, Lcom/google/glass/widget/RotatingTipsView;->f(Lcom/google/glass/widget/RotatingTipsView;)V

    return-void
.end method
