.class public final Lcom/google/android/maps/driveabout/e/aa;
.super Lcom/google/android/maps/driveabout/e/bd;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:J


# virtual methods
.method public final a(I)Lcom/google/android/maps/driveabout/e/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/aa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/j;

    return-object v0
.end method

.method public final a(Lcom/google/googlenav/common/a;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/e/aa;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/e/aa;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/e/aa;->b:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/aa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
