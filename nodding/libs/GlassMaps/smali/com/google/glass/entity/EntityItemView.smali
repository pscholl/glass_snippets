.class public abstract Lcom/google/glass/entity/EntityItemView;
.super Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/google/glass/widget/MosaicView;

.field private e:Landroid/widget/TextView;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/google/glass/entity/EntityItemView;->a:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/google/glass/entity/EntityItemView;->b:I

    return-void
.end method

.method private a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->d()Lcom/google/glass/userevent/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/userevent/a;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method private e()Landroid/widget/AdapterView;
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/entity/EntityItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Landroid/widget/AdapterView;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/glass/entity/EntityItemView;->e()Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    const-string v1, "pos"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "pre"

    aput-object v0, v3, v5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/google/glass/entity/EntityItemView;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/a;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->TOUCH_MENU_ENTITY_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/glass/entity/EntityItemView;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :cond_0
    return v5

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/entity/EntityItemView;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;->onFinishInflate()V

    sget v0, Lcom/google/glass/d/f;->image:I

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/MosaicView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->d:Lcom/google/glass/widget/MosaicView;

    sget v0, Lcom/google/glass/d/f;->label:I

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/EntityItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/entity/EntityItemView;->e:Landroid/widget/TextView;

    return-void
.end method

.method public setIsPrepend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/entity/EntityItemView;->f:Z

    return-void
.end method
