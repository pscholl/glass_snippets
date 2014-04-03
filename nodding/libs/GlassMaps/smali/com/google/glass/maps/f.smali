.class final Lcom/google/glass/maps/f;
.super Lcom/google/glass/maps/b;


# instance fields
.field final synthetic b:Lcom/google/glass/maps/DestinationCardsView;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/DestinationCardsView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/f;->b:Lcom/google/glass/maps/DestinationCardsView;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b;-><init>(Lcom/google/glass/maps/CardsView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/DestinationCardsView;Lcom/google/glass/maps/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/f;-><init>(Lcom/google/glass/maps/DestinationCardsView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/google/glass/maps/PlaceCardView;

    invoke-virtual {p1}, Lcom/google/glass/maps/PlaceCardView;->g()V

    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/glass/maps/PlaceCardView;

    iget-object v0, p0, Lcom/google/glass/maps/f;->b:Lcom/google/glass/maps/DestinationCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/DestinationCardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/glass/maps/PlaceCardView;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/f;->b:Lcom/google/glass/maps/DestinationCardsView;

    iget-boolean v0, v0, Lcom/google/glass/maps/DestinationCardsView;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/f;->b:Lcom/google/glass/maps/DestinationCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/DestinationCardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bs;->operation_directions_to:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/glass/maps/PlaceCardView;->a(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/f;->b:Lcom/google/glass/maps/DestinationCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/DestinationCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/glass/maps/PlaceCardView;->b(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ap;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/glass/maps/PlaceCardView;->c(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/glass/maps/PlaceCardView;->a(Lcom/google/android/maps/driveabout/e/m;)V

    :goto_4
    sget v1, Lcom/google/glass/maps/bm;->tag_horizontal_scroll_item:I

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/maps/PlaceCardView;->setTag(ILjava/lang/Object;)V

    sget v0, Lcom/google/glass/maps/bm;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v0, p0}, Lcom/google/glass/maps/PlaceCardView;->setTag(ILjava/lang/Object;)V

    return-object p2

    :cond_0
    check-cast p2, Lcom/google/glass/maps/PlaceCardView;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/maps/PlaceCardView;->d()V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/google/glass/maps/PlaceCardView;->e()V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/google/glass/maps/PlaceCardView;->f()V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lcom/google/glass/maps/PlaceCardView;->g()V

    goto :goto_4
.end method
