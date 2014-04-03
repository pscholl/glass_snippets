.class public final Lcom/google/android/maps/driveabout/nav/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/b;
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/nav/b;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/b;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/googlenav/common/io/b/a;
    .locals 3

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/h;->q:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/maps/driveabout/nav/b;

    iget v2, p1, Lcom/google/android/maps/driveabout/nav/b;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/google/android/maps/driveabout/nav/b;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
