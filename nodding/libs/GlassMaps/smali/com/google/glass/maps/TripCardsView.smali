.class public Lcom/google/glass/maps/TripCardsView;
.super Lcom/google/glass/maps/CardsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/CardsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setTrips([Lcom/google/glass/maps/directions/i;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/TripCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/glass/maps/TripCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    new-instance v0, Lcom/google/glass/maps/bz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/bz;-><init>(Lcom/google/glass/maps/TripCardsView;Lcom/google/glass/maps/by;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/TripCardsView;->a(Lcom/google/glass/maps/b;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/TripCardsView;->setSelection(I)V

    return-void
.end method
