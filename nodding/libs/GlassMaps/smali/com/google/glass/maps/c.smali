.class final Lcom/google/glass/maps/c;
.super Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/CardsView;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/CardsView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/google/glass/maps/c;->a:Lcom/google/glass/maps/CardsView;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/DataType;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/glass/maps/c;->a:Lcom/google/glass/maps/CardsView;

    iget-object v1, v1, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/maps/c;->a:Lcom/google/glass/maps/CardsView;

    iget-object v1, v1, Lcom/google/glass/maps/CardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v1, v1, v0

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

    check-cast p1, Lcom/google/android/maps/driveabout/nav/DataType;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/c;->a(Lcom/google/android/maps/driveabout/nav/DataType;)I

    move-result v0

    return v0
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/maps/c;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final setAdapter(Landroid/widget/Adapter;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/glass/widget/horizontalscroll/BaseHorizontalScrollView;->setAdapter(Landroid/widget/Adapter;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/c;->a(Z)V

    return-void
.end method
