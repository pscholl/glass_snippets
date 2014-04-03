.class public final Lcom/google/android/maps/driveabout/e/l;
.super Lcom/google/android/maps/driveabout/e/am;


# instance fields
.field private a:[Lcom/google/android/maps/driveabout/e/ab;

.field private b:Lcom/google/android/maps/driveabout/e/al;


# direct methods
.method protected constructor <init>([Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/e/am;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/al;->a([Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/l;->b:Lcom/google/android/maps/driveabout/e/al;

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/l;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    new-instance v1, Lcom/google/android/maps/driveabout/e/l;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/e/l;-><init>([Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/ab;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v3, v3, v1

    invoke-static {v0, v3, p1}, Lcom/google/android/maps/driveabout/e/ad;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v4, v4, v5

    invoke-static {v3, v4, p1}, Lcom/google/android/maps/driveabout/e/ad;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v4, v4, v6

    invoke-static {v3, v4, p1}, Lcom/google/android/maps/driveabout/e/ad;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v4, v4, v2

    invoke-static {v3, v4, p1}, Lcom/google/android/maps/driveabout/e/ad;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ne v0, v1, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/am;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/l;->c()Lcom/google/android/maps/driveabout/e/al;

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

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/e/l;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/ab;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/e/al;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/l;->b:Lcom/google/android/maps/driveabout/e/al;

    return-object v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/e/ab;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final e()Lcom/google/android/maps/driveabout/e/ab;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/e/l;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/maps/driveabout/e/l;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/android/maps/driveabout/e/ab;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/e/ab;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/l;->a:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
