.class public abstract Lcom/google/android/maps/driveabout/e/am;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/e/am;)Z
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/am;->a()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/am;->a()I

    move-result v9

    if-eqz v8, :cond_0

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/am;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/am;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    move v5, v0

    move-object v6, v1

    :goto_1
    if-ge v5, v8, :cond_0

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v7

    move v1, v0

    move-object v2, v3

    :goto_2
    if-ge v1, v9, :cond_3

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    invoke-static {v6, v7, v2, v4}, Lcom/google/android/maps/driveabout/e/ad;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object v2, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v6, v7

    goto :goto_1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)Lcom/google/android/maps/driveabout/e/ab;
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/e/ab;)Z
.end method

.method public a(Lcom/google/android/maps/driveabout/e/am;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/am;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/am;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/e/al;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/am;->a()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/e/am;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/e/am;->c(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/am;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/e/am;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/am;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/am;->c()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/e/al;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/e/am;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/e/am;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/e/am;->c(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public c()Lcom/google/android/maps/driveabout/e/al;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v1

    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/am;->a()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/am;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/e/al;

    new-instance v5, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v5, v4, v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v2, v3, v1}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    invoke-direct {v0, v5, v2}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v0
.end method
