.class final Lcom/google/glass/maps/bw;
.super Lcom/google/glass/maps/b;


# instance fields
.field final synthetic b:Lcom/google/glass/maps/StepCardsView;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/StepCardsView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/bw;->b:Lcom/google/glass/maps/StepCardsView;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b;-><init>(Lcom/google/glass/maps/CardsView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/StepCardsView;Lcom/google/glass/maps/bv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/bw;-><init>(Lcom/google/glass/maps/StepCardsView;)V

    return-void
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/bw;->b:Lcom/google/glass/maps/StepCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/StepCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/nav/DataType;->a()Lcom/google/android/maps/driveabout/nav/DataType$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/DataType$Type;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/bw;->b:Lcom/google/glass/maps/StepCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/StepCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/nav/DataType;->a()Lcom/google/android/maps/driveabout/nav/DataType$Type;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/nav/DataType$Type;->TRIP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/google/glass/maps/directions/TripCardView;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/google/glass/maps/directions/TripCardView;

    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/bw;->b:Lcom/google/glass/maps/StepCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/StepCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/glass/maps/directions/i;

    invoke-virtual {p2, v0}, Lcom/google/glass/maps/directions/TripCardView;->setTrip(Lcom/google/glass/maps/directions/i;)V

    :goto_2
    sget v0, Lcom/google/glass/maps/bm;->tag_horizontal_scroll_item:I

    iget-object v1, p0, Lcom/google/glass/maps/bw;->b:Lcom/google/glass/maps/StepCardsView;

    iget-object v1, v1, Lcom/google/glass/maps/StepCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v1, v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget v0, Lcom/google/glass/maps/bm;->tag_horizontal_scroll_item_view_recycler:I

    invoke-virtual {p2, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/glass/maps/directions/TripCardView;

    iget-object v0, p0, Lcom/google/glass/maps/bw;->b:Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/glass/maps/directions/TripCardView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    instance-of v0, p2, Lcom/google/glass/maps/directions/StepCardView;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/google/glass/maps/directions/StepCardView;

    :goto_3
    iget-object v0, p0, Lcom/google/glass/maps/bw;->b:Lcom/google/glass/maps/StepCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/StepCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/glass/maps/directions/b;

    iget-object v1, p0, Lcom/google/glass/maps/bw;->b:Lcom/google/glass/maps/StepCardsView;

    invoke-static {v1}, Lcom/google/glass/maps/StepCardsView;->a(Lcom/google/glass/maps/StepCardsView;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/directions/StepCardView;->setStep(Lcom/google/glass/maps/directions/b;I)V

    goto :goto_2

    :cond_3
    new-instance p2, Lcom/google/glass/maps/directions/StepCardView;

    iget-object v0, p0, Lcom/google/glass/maps/bw;->b:Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/glass/maps/directions/StepCardView;-><init>(Landroid/content/Context;)V

    goto :goto_3
.end method
