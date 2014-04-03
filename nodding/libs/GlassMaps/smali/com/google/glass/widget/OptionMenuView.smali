.class public Lcom/google/glass/widget/OptionMenuView;
.super Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;

# interfaces
.implements Lcom/google/glass/widget/aa;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Lcom/google/glass/widget/ag;

.field private b:Lcom/google/glass/widget/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method private a(Lcom/google/glass/widget/y;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuView;->b:Lcom/google/glass/widget/x;

    invoke-virtual {v1}, Lcom/google/glass/widget/x;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/widget/OptionMenuView;->b:Lcom/google/glass/widget/x;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/x;->a(I)Lcom/google/glass/widget/y;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/glass/widget/y;

    invoke-direct {p0, p1}, Lcom/google/glass/widget/OptionMenuView;->a(Lcom/google/glass/widget/y;)I

    move-result v0

    return v0
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/google/glass/widget/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuView;->a:Lcom/google/glass/widget/ag;

    return-void
.end method

.method public setOptionMenu(Lcom/google/glass/widget/x;)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->b:Lcom/google/glass/widget/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuView;->b:Lcom/google/glass/widget/x;

    invoke-virtual {v0}, Lcom/google/glass/widget/x;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/y;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/y;->a(Lcom/google/glass/widget/aa;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuView;->b:Lcom/google/glass/widget/x;

    new-instance v0, Lcom/google/glass/widget/ab;

    invoke-virtual {p0}, Lcom/google/glass/widget/OptionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/OptionMenuView;->a:Lcom/google/glass/widget/ag;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/glass/widget/ab;-><init>(Landroid/content/Context;Lcom/google/glass/widget/x;Lcom/google/glass/widget/ag;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuView;->setAdapter(Landroid/widget/Adapter;)V

    invoke-virtual {p1}, Lcom/google/glass/widget/x;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/y;

    invoke-virtual {v0, p0}, Lcom/google/glass/widget/y;->a(Lcom/google/glass/widget/aa;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/OptionMenuView;->a(Z)V

    return-void
.end method
