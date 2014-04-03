.class public abstract Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:[Lcom/google/glass/widget/TypophileTextView;

.field private b:[Ljava/lang/String;

.field private c:[F

.field private d:[F

.field private e:F

.field private f:I

.field private final g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

.field private h:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 7

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-array v0, v5, [Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b:[Ljava/lang/String;

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->c:[F

    new-array v0, v5, [F

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->d:[F

    iput v6, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->e:F

    iput v4, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->f:I

    iput-object p4, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->addView(Landroid/view/View;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    sget v0, Lcom/google/glass/d/h;->fast_scroll_label:I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v0, v0, v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->c:[F

    const/high16 v3, -0x4080

    aput v3, v0, v1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;)V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(I)V

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 5

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-ge p1, v2, :cond_2

    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b:[Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v3, v3, p1

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 3

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b:[Ljava/lang/String;

    aput-object p2, v0, p1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->c:[F

    const/high16 v1, -0x4080

    aput v1, v0, p1

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(I)V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(I)V

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j()F

    move-result v1

    invoke-static {p1}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_fade_out_on_scroll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    const/high16 v2, 0x3f80

    sub-float v3, v2, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/j;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/widget/horizontalscroll/j;-><init>(Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(I)F
    .locals 3

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->c:[F

    aget v0, v0, p1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->c:[F

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    aput v1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->c:[F

    aget v0, v0, p1

    return v0
.end method

.method private b()V
    .locals 13

    const v12, 0x3ea8f5c3

    const/4 v11, 0x5

    const/4 v1, 0x0

    const/high16 v10, -0x3de0

    const v9, 0x435d3334

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->e:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->e()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v4, v2, -0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    mul-float v5, v0, v9

    move v0, v1

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, -0x3

    int-to-float v2, v2

    mul-float/2addr v2, v9

    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->d:[F

    const/high16 v6, 0x4120

    add-float/2addr v2, v6

    sub-float/2addr v2, v5

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    :goto_1
    if-ge v3, v11, :cond_6

    add-int/lit8 v0, v3, -0x3

    int-to-float v0, v0

    mul-float/2addr v0, v9

    const/high16 v2, 0x4120

    add-float/2addr v2, v0

    sub-float v6, v2, v5

    const/high16 v2, 0x4270

    add-float/2addr v0, v2

    sub-float/2addr v0, v9

    sub-float/2addr v0, v5

    invoke-direct {p0, v3}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b(I)F

    move-result v2

    add-float/2addr v0, v2

    cmpg-float v2, v0, v10

    if-gez v2, :cond_3

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_3
    move v2, v3

    :goto_2
    const/4 v7, 0x2

    if-lt v2, v7, :cond_4

    add-int v7, v4, v2

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    iget-object v7, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    if-ge v2, v3, :cond_5

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-int v2, v3, v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    sub-float/2addr v0, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_5
    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->d:[F

    aput v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->i()F

    move-result v2

    cmpl-float v0, v2, v12

    if-lez v0, :cond_7

    move v0, v1

    :goto_3
    if-ge v0, v11, :cond_7

    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->d:[F

    const/high16 v4, -0x3c60

    div-float v5, v2, v12

    iget-object v6, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->d:[F

    aget v6, v6, v0

    const/high16 v7, 0x43a0

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->invalidate()V

    move v0, v1

    :goto_4
    if-ge v0, v11, :cond_0

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a:[Lcom/google/glass/widget/TypophileTextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->d:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setTranslationX(F)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->e()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(ILjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 13

    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a()I

    move-result v4

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->e()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/lit8 v6, v5, -0x2

    new-array v7, v12, [Z

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(I)Landroid/view/View;

    move-result-object v8

    sget v0, Lcom/google/glass/d/f;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v8, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int v0, v9, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v10, 0x2

    if-le v0, v10, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    if-ne v9, v4, :cond_2

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->d()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_2
    sub-int v10, v9, v6

    invoke-direct {p0, v10, v0, v2}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(ILjava/lang/String;Z)V

    sub-int v0, v9, v6

    aput-boolean v11, v7, v0

    invoke-direct {p0, v8}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    if-lt v9, v11, :cond_1

    if-ge v9, v3, :cond_1

    invoke-static {v8}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->c(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, v8, v9}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-le v9, v11, :cond_1

    if-le v9, v6, :cond_4

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b:[Ljava/lang/String;

    sub-int v10, v9, v6

    add-int/lit8 v10, v10, -0x1

    aget-object v0, v0, v10

    :cond_4
    new-instance v10, Lcom/google/glass/widget/horizontalscroll/k;

    invoke-direct {v10, p0, v8}, Lcom/google/glass/widget/horizontalscroll/k;-><init>(Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;Landroid/view/View;)V

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_3
    if-ge v0, v12, :cond_7

    aget-boolean v1, v7, v0

    if-nez v1, :cond_6

    const-string v1, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(ILjava/lang/String;Z)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a()V

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b()V

    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;I)Ljava/lang/String;
.end method

.method public final a(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->f:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->f:I

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b()V

    goto :goto_0
.end method

.method public final b(F)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->j()F

    move-result v2

    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->e:F

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->e:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->c()V

    :cond_1
    iput v2, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->e:F

    cmpl-float v0, v2, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->b()V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v3}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->g:Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

    invoke-virtual {v3, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->a(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f80

    sub-float/2addr v1, v2

    iget-object v3, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/glass/widget/horizontalscroll/FastScrollOverlay;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1
.end method
