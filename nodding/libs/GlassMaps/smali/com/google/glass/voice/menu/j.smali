.class final Lcom/google/glass/voice/menu/j;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/menu/i;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/menu/j;->a:Lcom/google/glass/voice/menu/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/menu/j;->a:Lcom/google/glass/voice/menu/i;

    iget-object v0, v0, Lcom/google/glass/voice/menu/i;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/menu/j;->a:Lcom/google/glass/voice/menu/i;

    iget-object v0, v0, Lcom/google/glass/voice/menu/i;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/j;->a:Lcom/google/glass/voice/menu/i;

    iget-object v1, v1, Lcom/google/glass/voice/menu/i;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/j;->a:Lcom/google/glass/voice/menu/i;

    iget-object v0, v0, Lcom/google/glass/voice/menu/i;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->c(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
