.class public final Lcom/google/glass/widget/ai;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/glass/widget/ai;


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/glass/widget/ai;
    .locals 1

    sget-object v0, Lcom/google/glass/widget/ai;->a:Lcom/google/glass/widget/ai;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/widget/ai;

    invoke-direct {v0}, Lcom/google/glass/widget/ai;-><init>()V

    sput-object v0, Lcom/google/glass/widget/ai;->a:Lcom/google/glass/widget/ai;

    :cond_0
    sget-object v0, Lcom/google/glass/widget/ai;->a:Lcom/google/glass/widget/ai;

    return-object v0
.end method

.method private static b(Landroid/view/View;FF)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;FF)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/glass/widget/ai;->b(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/google/glass/widget/ah;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/glass/widget/ah;

    invoke-interface {p1, p2, p3}, Lcom/google/glass/widget/ah;->a(FF)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    sub-float v5, p2, v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    sub-float v6, p3, v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/glass/widget/ai;->a(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
