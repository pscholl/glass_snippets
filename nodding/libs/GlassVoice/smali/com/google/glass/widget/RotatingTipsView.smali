.class public Lcom/google/glass/widget/RotatingTipsView;
.super Lcom/google/glass/widget/TipsView;
.source "RotatingTipsView.java"


# static fields
.field private static final DEFAULT_MESSAGE_DURATION_MS:J = 0xfa0L

.field private static final INITIAL_DELAY_MS:J = 0x3e8L

.field private static final MESSAGE_DURATION_MS:J = 0xbb8L

.field private static final MSG_SHOW_DEFAULT_MESSAGE:I = 0x0

.field private static final MSG_SHOW_INITIAL_MESSAGE:I = 0x2

.field private static final MSG_SHOW_NEXT_MESSAGE:I = 0x1

.field private static final SWAP_TEXT_ANIMATION_DURATION_MS:J = 0xc8L


# instance fields
.field private final animateOutListener:Landroid/animation/Animator$AnimatorListener;

.field private final handler:Landroid/os/Handler;

.field private index:I

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nextMessage:Ljava/lang/String;

.field private nextMessageSize:F

.field private nextMessageTypeface:Landroid/graphics/Typeface;

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/RotatingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/RotatingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "style"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/TipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lcom/google/glass/widget/RotatingTipsView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/RotatingTipsView$1;-><init>(Lcom/google/glass/widget/RotatingTipsView;)V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/google/glass/widget/RotatingTipsView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/RotatingTipsView$2;-><init>(Lcom/google/glass/widget/RotatingTipsView;)V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->animateOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->messages:Ljava/util/List;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->animateToDefaultMessage()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->animateToNextMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/widget/RotatingTipsView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->nextMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/widget/RotatingTipsView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/google/glass/widget/RotatingTipsView;->nextMessageSize:F

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/widget/RotatingTipsView;)Landroid/graphics/Typeface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->nextMessageTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->animateIn()V

    return-void
.end method

.method private animateIn()V
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 213
    return-void
.end method

.method private animateOut()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/RotatingTipsView;->animateOutListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 204
    return-void
.end method

.method private animateToDefaultMessage()V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getTip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getTipTextSize()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getTipTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/RotatingTipsView;->animateToText(Ljava/lang/String;FLandroid/graphics/Typeface;)V

    .line 180
    return-void
.end method

.method private animateToNextMessage()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->messages:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/widget/RotatingTipsView;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getMessageTextSize()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getMessageTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/RotatingTipsView;->animateToText(Ljava/lang/String;FLandroid/graphics/Typeface;)V

    .line 184
    iget v0, p0, Lcom/google/glass/widget/RotatingTipsView;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/widget/RotatingTipsView;->index:I

    .line 185
    iget v0, p0, Lcom/google/glass/widget/RotatingTipsView;->index:I

    iget-object v1, p0, Lcom/google/glass/widget/RotatingTipsView;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/RotatingTipsView;->index:I

    .line 188
    :cond_0
    return-void
.end method

.method private animateToText(Ljava/lang/String;FLandroid/graphics/Typeface;)V
    .locals 0
    .parameter "text"
    .parameter "textSize"
    .parameter "typeface"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/glass/widget/RotatingTipsView;->nextMessage:Ljava/lang/String;

    .line 192
    iput p2, p0, Lcom/google/glass/widget/RotatingTipsView;->nextMessageSize:F

    .line 193
    iput-object p3, p0, Lcom/google/glass/widget/RotatingTipsView;->nextMessageTypeface:Landroid/graphics/Typeface;

    .line 194
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->animateOut()V

    .line 195
    return-void
.end method

.method private clearHandlerMessages()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    iput-boolean v2, p0, Lcom/google/glass/widget/RotatingTipsView;->started:Z

    .line 220
    return-void
.end method

.method private startIfReady()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->started:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/RotatingTipsView;->started:Z

    .line 167
    :cond_0
    return-void
.end method

.method private stopIfDone()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearHandlerMessages()V

    .line 173
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearAnimation()V

    .line 174
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->showTip()V

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public addMessage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->addMessage(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public addMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->startIfReady()V

    .line 122
    :cond_0
    return-void
.end method

.method protected getMessageTextSize()F
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->small_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected getMessageTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/glass/widget/RobotoTypefaces;->getTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method protected isTipShown()Z
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getTip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public removeMessage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->removeMessage(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public removeMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->stopIfDone()V

    .line 133
    return-void
.end method

.method protected showTip()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getTip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getTipTextSize()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/RotatingTipsView;->setTextSize(IF)V

    .line 139
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->getTipTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    return-void
.end method

.method public startRotating()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->isActivated()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->setActivated(Z)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/widget/RotatingTipsView;->index:I

    .line 99
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->showTip()V

    .line 100
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->startIfReady()V

    .line 101
    return-void
.end method

.method public stopRotating()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->isActivated()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/RotatingTipsView;->setActivated(Z)V

    .line 107
    invoke-direct {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearHandlerMessages()V

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/widget/RotatingTipsView;->clearAnimation()V

    .line 109
    return-void
.end method
