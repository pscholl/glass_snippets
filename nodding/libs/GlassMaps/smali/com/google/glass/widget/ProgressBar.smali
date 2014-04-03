.class public Lcom/google/glass/widget/ProgressBar;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/google/glass/widget/ProgressBar;->b:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/glass/widget/ProgressBar;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->d:Z

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method private a()I
    .locals 2

    iget v0, p0, Lcom/google/glass/widget/ProgressBar;->b:I

    mul-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/google/glass/widget/ProgressBar;->c:I

    div-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public setIndeterminate(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/glass/widget/ProgressBar;->a:Z

    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    sget v1, Lcom/google/glass/d/e;->slider_indeterminate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ProgressBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/d/e;->progress_bar_determinate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ProgressBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/google/glass/widget/ProgressBar;->c:I

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/glass/widget/ProgressBar;->a:Z

    invoke-static {v0}, Ljunit/framework/Assert;->assertFalse(Z)V

    iget v0, p0, Lcom/google/glass/widget/ProgressBar;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/ProgressBar;->b:I

    invoke-virtual {p0}, Lcom/google/glass/widget/ProgressBar;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/widget/ProgressBar;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method
