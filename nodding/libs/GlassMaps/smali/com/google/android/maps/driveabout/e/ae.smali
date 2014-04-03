.class public final Lcom/google/android/maps/driveabout/e/ae;
.super Lcom/google/android/maps/driveabout/e/am;


# instance fields
.field private a:[Lcom/google/android/maps/driveabout/e/ab;

.field private volatile b:Lcom/google/android/maps/driveabout/e/al;


# direct methods
.method public constructor <init>([Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/am;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/ae;->a:[Lcom/google/android/maps/driveabout/e/ab;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ae;->a:[Lcom/google/android/maps/driveabout/e/ab;

    array-length v0, v0

    return v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ae;->a:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/ab;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ae;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ae;->a:[Lcom/google/android/maps/driveabout/e/ab;

    array-length v6, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ae;->a:[Lcom/google/android/maps/driveabout/e/ab;

    add-int/lit8 v3, v6, -0x1

    aget-object v0, v0, v3

    move v3, v2

    move-object v4, v0

    move v0, v2

    :goto_1
    if-ge v3, v6, :cond_2

    iget-object v5, p0, Lcom/google/android/maps/driveabout/e/ae;->a:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v5, v5, v3

    invoke-static {v4, v5, p1}, Lcom/google/android/maps/driveabout/e/ad;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v4, v5

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public final c()Lcom/google/android/maps/driveabout/e/al;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ae;->b:Lcom/google/android/maps/driveabout/e/al;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ae;->a:[Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/al;->a([Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/ae;->b:Lcom/google/android/maps/driveabout/e/al;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ae;->b:Lcom/google/android/maps/driveabout/e/al;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/e/ae;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/maps/driveabout/e/ae;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ae;->a:[Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/ae;->a:[Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ae;->a:[Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
