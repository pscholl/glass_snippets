.class public Lcom/google/glass/widget/PointFocusableHelper;
.super Ljava/lang/Object;
.source "PointFocusableHelper.java"


# static fields
.field private static instance:Lcom/google/glass/widget/PointFocusableHelper;


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private containsPoint(Landroid/view/View;FF)Z
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/google/glass/widget/PointFocusableHelper;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/widget/PointFocusableHelper;->instance:Lcom/google/glass/widget/PointFocusableHelper;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/google/glass/widget/PointFocusableHelper;

    invoke-direct {v0}, Lcom/google/glass/widget/PointFocusableHelper;-><init>()V

    sput-object v0, Lcom/google/glass/widget/PointFocusableHelper;->instance:Lcom/google/glass/widget/PointFocusableHelper;

    .line 26
    :cond_0
    sget-object v0, Lcom/google/glass/widget/PointFocusableHelper;->instance:Lcom/google/glass/widget/PointFocusableHelper;

    return-object v0
.end method


# virtual methods
.method public dispatchRequestPointFocus(Landroid/view/View;FF)Z
    .locals 7
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    if-nez p1, :cond_1

    .line 66
    .end local p1
    :cond_0
    :goto_0
    return v3

    .line 44
    .restart local p1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/PointFocusableHelper;->containsPoint(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    instance-of v5, p1, Lcom/google/glass/widget/PointFocusable;

    if-eqz v5, :cond_2

    .line 49
    check-cast p1, Lcom/google/glass/widget/PointFocusable;

    .end local p1
    invoke-interface {p1, p2, p3}, Lcom/google/glass/widget/PointFocusable;->requestFocus(FF)Z

    move-result v3

    goto :goto_0

    .line 52
    .restart local p1
    :cond_2
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    move-object v1, p1

    .line 53
    check-cast v1, Landroid/view/ViewGroup;

    .line 54
    .local v1, currentViewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_4

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, child:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, p2, v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    sub-float v6, p3, v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/google/glass/widget/PointFocusableHelper;->dispatchRequestPointFocus(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 58
    goto :goto_0

    .line 54
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 63
    .end local v0           #child:Landroid/view/View;
    .end local v1           #currentViewGroup:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 64
    goto :goto_0
.end method
