.class final Lcom/google/glass/voice/menu/l;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/glass/widget/TypophileTextView;

.field final synthetic c:Lcom/google/glass/voice/menu/VoiceMenu;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;Lcom/google/glass/widget/TypophileTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/menu/l;->c:Lcom/google/glass/voice/menu/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/voice/menu/l;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/glass/voice/menu/l;->b:Lcom/google/glass/widget/TypophileTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/menu/l;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/menu/l;->c:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/l;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/l;->b:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
