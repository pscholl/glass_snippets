.class public Lcom/google/glass/widget/HeadScrollView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/google/glass/input/n;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/HeadScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->a:I

    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->b:I

    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->c:I

    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/HeadScrollView;->e:Z

    return-void
.end method

.method private a()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {}, Lcom/google/glass/widget/ai;->a()Lcom/google/glass/widget/ai;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/glass/widget/HeadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/glass/widget/ai;->a(Landroid/view/View;FF)Z

    goto :goto_0
.end method

.method private a(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->c:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/glass/widget/HeadScrollView;->c:I

    move p1, v0

    :cond_0
    :goto_0
    cmpg-float v1, p2, v0

    if-gez v1, :cond_3

    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->d:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/glass/widget/HeadScrollView;->d:I

    move p2, v0

    :cond_1
    :goto_1
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/HeadScrollView;->scrollTo(II)V

    return-void

    :cond_2
    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->a:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/glass/widget/HeadScrollView;->a:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/glass/widget/HeadScrollView;->c:I

    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->a:I

    int-to-float p1, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->b:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->b:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->d:I

    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->b:I

    int-to-float p2, v0

    goto :goto_1
.end method

.method private a(IIZ)V
    .locals 0

    iput p1, p0, Lcom/google/glass/widget/HeadScrollView;->c:I

    iput p2, p0, Lcom/google/glass/widget/HeadScrollView;->d:I

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/widget/HeadScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(FFFJ)V
    .locals 3

    const/high16 v2, 0x41c8

    iget-boolean v0, p0, Lcom/google/glass/widget/HeadScrollView;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    mul-float v0, p1, v2

    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->c:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    mul-float v1, p2, v2

    iget v2, p0, Lcom/google/glass/widget/HeadScrollView;->d:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/widget/HeadScrollView;->a(FF)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HeadScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/HeadScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/widget/HeadScrollView;->b:I

    sub-int v0, p8, p6

    sub-int v1, p9, p7

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    if-gt v2, v0, :cond_0

    if-le v3, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/glass/widget/HeadScrollView;->a:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/glass/widget/HeadScrollView;->b:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/HeadScrollView;->a(IIZ)V

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    invoke-direct {p0}, Lcom/google/glass/widget/HeadScrollView;->a()V

    return-void
.end method

.method public setAllowScrolling(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/glass/widget/HeadScrollView;->e:Z

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/widget/HeadScrollView;->getScrollY()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/HeadScrollView;->a(IIZ)V

    return-void
.end method
