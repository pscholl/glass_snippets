.class public Lcom/google/glass/widget/ProgressBar;
.super Landroid/widget/ImageView;
.source "ProgressBar.java"


# static fields
.field private static final DRAWABLE_MAX_LEVEL:I = 0x2710


# instance fields
.field private indeterminate:Z

.field private isShowing:Z

.field private maxProgress:I

.field private progress:I

.field private progressAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v1, p0, Lcom/google/glass/widget/ProgressBar;->progress:I

    .line 29
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/glass/widget/ProgressBar;->maxProgress:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->isShowing:Z

    .line 35
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ProgressBar;->setIndeterminate(Z)V

    .line 36
    return-void
.end method

.method private calculateDrawableLevel()I
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/google/glass/widget/ProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/google/glass/widget/ProgressBar;->maxProgress:I

    div-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public hide(Z)V
    .locals 4
    .parameter "animate"

    .prologue
    .line 70
    iget-boolean v1, p0, Lcom/google/glass/widget/ProgressBar;->isShowing:Z

    if-nez v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$dimen;->slider_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 76
    .local v0, height:I
    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 82
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/widget/ProgressBar;->isShowing:Z

    goto :goto_0

    .line 80
    :cond_1
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ProgressBar;->setTranslationY(F)V

    goto :goto_1
.end method

.method public setIndeterminate(Z)V
    .locals 3
    .parameter "indeterminate"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/glass/widget/ProgressBar;->indeterminate:Z

    .line 41
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 43
    sget v1, Lcom/google/glass/common/R$drawable;->slider_indeterminate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ProgressBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$drawable;->progress_bar_determinate:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ProgressBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 87
    iput p1, p0, Lcom/google/glass/widget/ProgressBar;->maxProgress:I

    .line 88
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->indeterminate:Z

    invoke-static {v0}, Ljunit/framework/Assert;->assertFalse(Z)V

    .line 103
    iget v0, p0, Lcom/google/glass/widget/ProgressBar;->maxProgress:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/ProgressBar;->progress:I

    .line 104
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/widget/ProgressBar;->calculateDrawableLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 105
    return-void
.end method

.method public show(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->isShowing:Z

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_0
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$integer;->slider_in_out_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 65
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->isShowing:Z

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ProgressBar;->setTranslationY(F)V

    goto :goto_1
.end method

.method public startIndeterminate()V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->indeterminate:Z

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 111
    return-void
.end method

.method public startProgress(J)V
    .locals 1
    .parameter "animationDuration"

    .prologue
    .line 127
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/widget/ProgressBar;->startProgress(JLandroid/animation/TimeInterpolator;)V

    .line 128
    return-void
.end method

.method public startProgress(JLandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "animationDuration"
    .parameter "listener"

    .prologue
    .line 132
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/glass/widget/ProgressBar;->startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    return-void
.end method

.method public startProgress(JLandroid/animation/TimeInterpolator;)V
    .locals 1
    .parameter "animationDuration"
    .parameter "interpolator"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/ProgressBar;->startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    return-void
.end method

.method public startProgress(JLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .parameter "animationDuration"
    .parameter "interpolator"
    .parameter "animatorListener"

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ProgressBar;->setIndeterminate(Z)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ProgressBar;->show(Z)V

    .line 151
    const-string v0, "progress"

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    .line 152
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 153
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    if-eqz p4, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 158
    return-void

    .line 151
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data
.end method

.method public stopIndeterminate()V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->indeterminate:Z

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 117
    return-void
.end method

.method public stopProgress()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/glass/widget/ProgressBar;->progressAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 168
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ProgressBar;->hide(Z)V

    .line 169
    return-void
.end method
