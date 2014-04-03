.class final Lcom/google/glass/maps/bz;
.super Lcom/google/glass/maps/b;


# instance fields
.field final synthetic b:Lcom/google/glass/maps/TripCardsView;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/TripCardsView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/bz;->b:Lcom/google/glass/maps/TripCardsView;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b;-><init>(Lcom/google/glass/maps/CardsView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/TripCardsView;Lcom/google/glass/maps/by;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/bz;-><init>(Lcom/google/glass/maps/TripCardsView;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/glass/maps/directions/TripCardView;

    iget-object v0, p0, Lcom/google/glass/maps/bz;->b:Lcom/google/glass/maps/TripCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/TripCardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/glass/maps/directions/TripCardView;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/bz;->b:Lcom/google/glass/maps/TripCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/TripCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/glass/maps/directions/i;

    invoke-virtual {p2, v0}, Lcom/google/glass/maps/directions/TripCardView;->setTrip(Lcom/google/glass/maps/directions/i;)V

    sget v1, Lcom/google/glass/maps/bm;->tag_horizontal_scroll_item:I

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/maps/directions/TripCardView;->setTag(ILjava/lang/Object;)V

    sget v0, Lcom/google/glass/maps/bm;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v0, p0}, Lcom/google/glass/maps/directions/TripCardView;->setTag(ILjava/lang/Object;)V

    return-object p2

    :cond_0
    check-cast p2, Lcom/google/glass/maps/directions/TripCardView;

    goto :goto_0
.end method
