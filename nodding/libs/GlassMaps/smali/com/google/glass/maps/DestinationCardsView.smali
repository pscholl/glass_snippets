.class public Lcom/google/glass/maps/DestinationCardsView;
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
.method public setDestinations([Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 2

    iput-object p1, p0, Lcom/google/glass/maps/DestinationCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    new-instance v0, Lcom/google/glass/maps/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/f;-><init>(Lcom/google/glass/maps/DestinationCardsView;Lcom/google/glass/maps/e;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/DestinationCardsView;->a(Lcom/google/glass/maps/b;)V

    return-void
.end method
