.class final Lcom/google/glass/voice/menu/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/widget/TypophileTextView;

.field final synthetic b:Lcom/google/glass/voice/menu/OverscrollView;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/google/glass/voice/menu/VoiceMenu;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/voice/menu/OverscrollView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/menu/i;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/voice/menu/i;->a:Lcom/google/glass/widget/TypophileTextView;

    iput-object p3, p0, Lcom/google/glass/voice/menu/i;->b:Lcom/google/glass/voice/menu/OverscrollView;

    iput-object p4, p0, Lcom/google/glass/voice/menu/i;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/glass/voice/menu/i;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->c(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/i;->a:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/i;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/i;->a:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/i;->b:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v2}, Lcom/google/glass/voice/menu/OverscrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/glass/voice/menu/i;->b:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Lcom/google/glass/voice/menu/VoiceMenu;F)F

    iget-object v0, p0, Lcom/google/glass/voice/menu/i;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->c(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/i;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v1}, Lcom/google/glass/voice/menu/VoiceMenu;->d(Lcom/google/glass/voice/menu/VoiceMenu;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/i;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->c(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/i;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->e(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/menu/i;->d:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->c(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/menu/j;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/menu/j;-><init>(Lcom/google/glass/voice/menu/i;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
