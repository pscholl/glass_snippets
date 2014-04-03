.class public Lcom/google/glass/maps/StepCardsView;
.super Lcom/google/glass/maps/CardsView;


# instance fields
.field private c:I


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

.method static synthetic a(Lcom/google/glass/maps/StepCardsView;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/StepCardsView;->c:I

    return v0
.end method


# virtual methods
.method public final b()Lcom/google/glass/maps/directions/b;
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/StepCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    invoke-virtual {p0}, Lcom/google/glass/maps/StepCardsView;->a()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/nav/DataType;->a()Lcom/google/android/maps/driveabout/nav/DataType$Type;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/nav/DataType$Type;->STEP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/google/glass/maps/directions/b;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTrip(Lcom/google/glass/maps/directions/i;I)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/nav/DataType;

    iput-object v1, p0, Lcom/google/glass/maps/StepCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    iget-object v1, p0, Lcom/google/glass/maps/StepCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    aput-object p1, v1, v0

    const/4 v1, 0x1

    iget-object v3, p1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    iget-object v6, p0, Lcom/google/glass/maps/StepCardsView;->a:[Lcom/google/android/maps/driveabout/nav/DataType;

    add-int/lit8 v2, v1, 0x1

    aput-object v5, v6, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/maps/directions/i;->b()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/StepCardsView;->c:I

    new-instance v0, Lcom/google/glass/maps/bw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/bw;-><init>(Lcom/google/glass/maps/StepCardsView;Lcom/google/glass/maps/bv;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/StepCardsView;->a(Lcom/google/glass/maps/b;)V

    invoke-virtual {p0, p2}, Lcom/google/glass/maps/StepCardsView;->setSelection(I)V

    return-void
.end method
