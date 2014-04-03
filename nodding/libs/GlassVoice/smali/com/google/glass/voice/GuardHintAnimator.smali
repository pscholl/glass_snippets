.class public Lcom/google/glass/voice/GuardHintAnimator;
.super Ljava/lang/Object;
.source "GuardHintAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/GuardHintAnimator$AnimationState;
    }
.end annotation


# static fields
.field private static final GUARD_ANIMATION_DURATION_MS:J = 0x1f4L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final gradientView:Landroid/widget/ImageView;

.field private gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

.field private final guardPhraseView:Lcom/google/glass/widget/TypophileTextView;

.field private guardViewAnimator:Landroid/view/ViewPropertyAnimator;

.field private state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/google/glass/widget/TypophileTextView;Landroid/content/Context;)V
    .locals 1
    .parameter "gradientView"
    .parameter "guardPhraseView"
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    .line 51
    iput-object p3, p0, Lcom/google/glass/voice/GuardHintAnimator;->context:Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    .line 53
    iput-object p2, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Lcom/google/glass/widget/TypophileTextView;

    .line 54
    const-string v0, "Gradient view is null"

    invoke-static {v0, p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "Guard phrase view is null"

    invoke-static {v0, p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/GuardHintAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/voice/GuardHintAnimator;->nullifyAnimators()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/GuardHintAnimator;Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/voice/GuardHintAnimator;->setState(Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/GuardHintAnimator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/voice/GuardHintAnimator;->setGuardPhraseAndGradientVisibility(Z)V

    return-void
.end method

.method private cancelAnimations()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardViewAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardViewAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 177
    :cond_1
    return-void
.end method

.method private nullifyAnimators()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 166
    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 167
    return-void
.end method

.method private setGuardPhraseAndGradientVisibility(Z)V
    .locals 5
    .parameter "shouldShow"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 63
    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

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

    invoke-interface {v1, v0, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    if-eqz p1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    :goto_1
    return-void

    .line 63
    :cond_0
    const-string v0, "GONE"

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setState(Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    .line 181
    return-void
.end method


# virtual methods
.method public animateIn()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 79
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isUiThread()Z

    .line 82
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Canceling an ongoing animate-out animation."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0}, Lcom/google/glass/voice/GuardHintAnimator;->cancelAnimations()V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_1
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Guard phrase is already visible or animate-in is already in progress"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :goto_0
    return-void

    .line 91
    :cond_2
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/GuardHintAnimator;->setState(Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    .line 92
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Animating in guard phrase."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p0, Lcom/google/glass/voice/GuardHintAnimator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setTranslationY(F)V

    .line 95
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/GuardHintAnimator;->setGuardPhraseAndGradientVisibility(Z)V

    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 100
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/GuardHintAnimator$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/GuardHintAnimator$1;-><init>(Lcom/google/glass/voice/GuardHintAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public animateOut()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 122
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isUiThread()Z

    .line 123
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Canceling an ongoing animate-in animation."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0}, Lcom/google/glass/voice/GuardHintAnimator;->cancelAnimations()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    :cond_1
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Guard phrase is already gone or animate-out is already in progress."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :goto_0
    return-void

    .line 132
    :cond_2
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-direct {p0, v3}, Lcom/google/glass/voice/GuardHintAnimator;->setGuardPhraseAndGradientVisibility(Z)V

    goto :goto_0

    .line 136
    :cond_3
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    .line 137
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Animating out guard phrase."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/TypophileTextView;->setTranslationY(F)V

    .line 140
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 141
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/GuardHintAnimator;->context:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 144
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/GuardHintAnimator$2;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/GuardHintAnimator$2;-><init>(Lcom/google/glass/voice/GuardHintAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
