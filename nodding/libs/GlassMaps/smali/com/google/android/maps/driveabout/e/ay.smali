.class public final Lcom/google/android/maps/driveabout/e/ay;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private final b:[I


# direct methods
.method private constructor <init>([I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/ay;->b:[I

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/ay;
    .locals 4

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v1

    rem-int/lit8 v0, v1, 0x3

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed TriangleList, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vertices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p0, p1, v2, v0}, Lcom/google/android/maps/driveabout/e/ab;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/e/ay;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/e/ay;-><init>([I[I)V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;I)Lcom/google/android/maps/driveabout/e/ay;
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v2

    rem-int/lit8 v0, v2, 0x3

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed TriangleList, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vertices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    mul-int/lit8 v0, v2, 0x3

    new-array v3, v0, [I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-static {p0, p1, v3, v0}, Lcom/google/android/maps/driveabout/e/ab;->b(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/16 v2, 0x9

    if-ne p2, v2, :cond_2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v2

    new-array v0, v2, [I

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/maps/driveabout/e/ay;

    invoke-direct {v1, v3, v0}, Lcom/google/android/maps/driveabout/e/ay;-><init>([I[I)V

    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public final a(ILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 3

    mul-int/lit8 v0, p1, 0x9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    iget v1, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v0, v2

    iput v0, p3, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v0, v2

    iput v0, p4, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v0, v1

    iput v0, p4, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v0, v2

    iput v0, p4, Lcom/google/android/maps/driveabout/e/ab;->c:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    iget v1, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v0, v1

    iput v0, p5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v2

    iget v2, p2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v0, v2

    iput v0, p5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    aget v0, v0, v1

    iget v1, p2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v0, v1

    iput v0, p5, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/maps/driveabout/e/ay;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/e/ay;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ay;->b:[I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/ay;->b:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ay;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ay;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
