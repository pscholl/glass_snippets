.class public final Lcom/google/android/maps/driveabout/a/o;
.super Lcom/google/android/maps/driveabout/a/m;


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/a/m;


# direct methods
.method public constructor <init>([Lcom/google/android/maps/driveabout/a/m;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/m;-><init>(Lcom/google/android/maps/driveabout/a/n;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/o;->a:[Lcom/google/android/maps/driveabout/a/m;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/o;->a:[Lcom/google/android/maps/driveabout/a/m;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/a/m;->a()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/o;->a:[Lcom/google/android/maps/driveabout/a/m;

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final b()[Lcom/google/android/maps/driveabout/a/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/o;->a:[Lcom/google/android/maps/driveabout/a/m;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/o;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/a/o;

    iget-object v0, p1, Lcom/google/android/maps/driveabout/a/o;->a:[Lcom/google/android/maps/driveabout/a/m;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/o;->a:[Lcom/google/android/maps/driveabout/a/m;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/o;->a:[Lcom/google/android/maps/driveabout/a/m;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/o;->a:[Lcom/google/android/maps/driveabout/a/m;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/o;->a:[Lcom/google/android/maps/driveabout/a/m;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
