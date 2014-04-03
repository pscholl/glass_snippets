.class public final Lcom/google/android/maps/driveabout/e/az;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/DataInput;)I
    .locals 4

    const/16 v3, 0x80

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    if-ge v0, v3, :cond_1

    :cond_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    if-lt v1, v3, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v0, v2

    if-lt v1, v3, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v0, v2

    if-lt v1, v3, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v0, v2

    if-lt v1, v3, :cond_0

    :goto_0
    if-lt v1, v3, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    goto :goto_0
.end method

.method public static a(Ljava/io/DataOutput;I)V
    .locals 6

    const-wide/16 v4, 0x80

    if-gez p1, :cond_0

    const-wide v0, 0x100000000L

    int-to-long v2, p1

    add-long/2addr v0, v2

    or-long v2, v0, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    const/4 v2, 0x7

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    const/16 v2, 0xe

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    const/16 v2, 0x15

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    const/16 v2, 0x1c

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x4000

    if-ge p1, v0, :cond_2

    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x7

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x20

    if-ge p1, v0, :cond_3

    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0xe

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x1000

    if-ge p1, v0, :cond_4

    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x15

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    :cond_4
    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    shr-int/lit8 v0, p1, 0x1c

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0
.end method

.method public static b(Ljava/io/DataInput;)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method
