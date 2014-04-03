.class public final Lcom/google/glass/voice/GuardHintAnimator;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/glass/widget/TypophileTextView;

.field private final d:Landroid/widget/ImageView;

.field private e:Landroid/view/ViewPropertyAnimator;

.field private f:Landroid/view/ViewPropertyAnimator;

.field private g:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/GuardHintAnimator;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->g:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    iput-object p3, p0, Lcom/google/glass/voice/GuardHintAnimator;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/glass/voice/GuardHintAnimator;->d:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/google/glass/voice/GuardHintAnimator;->c:Lcom/google/glass/widget/TypophileTextView;

    const-string v0, "Gradient view is null"

    invoke-static {v0, p1}, Lcom/google/glass/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Guard phrase view is null"

    invoke-static {v0, p2}, Lcom/google/glass/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/GuardHintAnimator;->g:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/GuardHintAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/GuardHintAnimator;->c()V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/GuardHintAnimator;Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/GuardHintAnimator;->a(Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/GuardHintAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/GuardHintAnimator;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator;->a:Lcom/google/glass/logging/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting guard phrase visibility to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "VISIBLE"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->c:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "GONE"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->c:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->f:Landroid/view/ViewPropertyAnimator;

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->e:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->f:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->f:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->e:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->e:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->e()Z

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->g:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->a:Lcom/google/glass/logging/i;

    const-string v1, "Canceling an ongoing animate-out animation."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/glass/voice/GuardHintAnimator;->d()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->c:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->g:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->a:Lcom/google/glass/logging/i;

    const-string v1, "Guard phrase is already visible or animate-in is already in progress"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/GuardHintAnimator;->a(Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->a:Lcom/google/glass/logging/i;

    const-string v1, "Animating in guard phrase."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->c:Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p0, Lcom/google/glass/voice/GuardHintAnimator;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/GuardHintAnimator;->a(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->c:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->f:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/k;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/k;-><init>(Lcom/google/glass/voice/GuardHintAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->e:Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->e()Z

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->g:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->a:Lcom/google/glass/logging/i;

    const-string v1, "Canceling an ongoing animate-in animation."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/glass/voice/GuardHintAnimator;->d()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->c:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->g:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->a:Lcom/google/glass/logging/i;

    const-string v1, "Guard phrase is already gone or animate-out is already in progress."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/google/glass/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Lcom/google/glass/voice/GuardHintAnimator;->a(Z)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->g:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->a:Lcom/google/glass/logging/i;

    const-string v1, "Animating out guard phrase."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->c:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/TypophileTextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->d:Landroid/widget/ImageView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->c:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/GuardHintAnimator;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->f:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/l;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/l;-><init>(Lcom/google/glass/voice/GuardHintAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->e:Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
