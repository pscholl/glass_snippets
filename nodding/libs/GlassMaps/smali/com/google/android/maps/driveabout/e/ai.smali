.class public final Lcom/google/android/maps/driveabout/e/ai;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/google/android/maps/driveabout/e/aj;

.field private b:I

.field private c:Lcom/google/android/maps/driveabout/e/af;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/af;)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/ai;->c:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v2

    add-int/lit8 v1, v2, 0x8

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ai;->b:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ai;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/e/ai;->b:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ai;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ai;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/maps/driveabout/e/aj;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/ai;->a:[Lcom/google/android/maps/driveabout/e/aj;

    new-instance v3, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ai;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ai;->a(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    move v7, v0

    move v0, v1

    move v1, v7

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1, v3}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    if-lez v1, :cond_1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/ai;->a:[Lcom/google/android/maps/driveabout/e/aj;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lcom/google/android/maps/driveabout/e/aj;->a(Lcom/google/android/maps/driveabout/e/ab;)V

    :cond_1
    and-int/lit8 v4, v1, 0x7

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/ai;->a:[Lcom/google/android/maps/driveabout/e/aj;

    add-int/lit8 v0, v0, 0x1

    new-instance v5, Lcom/google/android/maps/driveabout/e/aj;

    invoke-direct {v5, v3}, Lcom/google/android/maps/driveabout/e/aj;-><init>(Lcom/google/android/maps/driveabout/e/ab;)V

    aput-object v5, v4, v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ai;->b:I

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    invoke-static {v1}, Lcom/google/android/maps/driveabout/e/ai;->a(I)I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/ai;->a(I)I

    move-result v2

    :goto_3
    if-ge v0, v2, :cond_4

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ai;->b(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/e/ai;->d(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/ai;->a:[Lcom/google/android/maps/driveabout/e/aj;

    new-instance v4, Lcom/google/android/maps/driveabout/e/aj;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/e/ai;->a:[Lcom/google/android/maps/driveabout/e/aj;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ai;->b(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Lcom/google/android/maps/driveabout/e/aj;-><init>(Lcom/google/android/maps/driveabout/e/aj;)V

    aput-object v4, v3, v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ai;->c(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/e/ai;->d(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/ai;->a:[Lcom/google/android/maps/driveabout/e/aj;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/ai;->a:[Lcom/google/android/maps/driveabout/e/aj;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ai;->c(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/e/aj;->a(Lcom/google/android/maps/driveabout/e/aj;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private static a(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/al;ILjava/util/ArrayList;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/e/ai;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ai;->a:[Lcom/google/android/maps/driveabout/e/aj;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/e/aj;->a(Lcom/google/android/maps/driveabout/e/al;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/e/ai;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/e/ai;->f(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ai;->c:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ai;->c:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v0

    :cond_0
    new-instance v2, Lcom/google/android/maps/driveabout/e/ar;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/ai;->c:Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/maps/driveabout/e/ar;-><init>(Lcom/google/android/maps/driveabout/e/af;II)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p2}, Lcom/google/android/maps/driveabout/e/ai;->b(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/maps/driveabout/e/ai;->a(Lcom/google/android/maps/driveabout/e/al;ILjava/util/ArrayList;)V

    invoke-static {p2}, Lcom/google/android/maps/driveabout/e/ai;->c(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/maps/driveabout/e/ai;->a(Lcom/google/android/maps/driveabout/e/al;ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static b(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static c(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private d(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ai;->a:[Lcom/google/android/maps/driveabout/e/aj;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ai;->a:[Lcom/google/android/maps/driveabout/e/aj;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)Z
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ai;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ai;->a(I)I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ai;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ai;->a(I)I

    move-result v0

    sub-int v0, p1, v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/al;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/maps/driveabout/e/ai;->a(Lcom/google/android/maps/driveabout/e/al;ILjava/util/ArrayList;)V

    return-object v0
.end method
