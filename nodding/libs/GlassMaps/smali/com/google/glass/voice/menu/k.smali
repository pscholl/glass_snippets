.class final Lcom/google/glass/voice/menu/k;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/menu/VoiceMenu;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/menu/k;->a:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/menu/k;->a:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->b(Lcom/google/glass/voice/menu/VoiceMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/k;->a:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->e(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/k;->a:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->c(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/google/glass/voice/menu/k;->a:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->f(Lcom/google/glass/voice/menu/VoiceMenu;)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/k;->a:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->c(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    goto :goto_0
.end method
