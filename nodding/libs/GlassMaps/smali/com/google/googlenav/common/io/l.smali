.class public final Lcom/google/googlenav/common/io/l;
.super Ljava/io/OutputStream;


# instance fields
.field private a:[B

.field private b:[I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, Lcom/google/googlenav/common/io/l;->d:I

    iput v0, p0, Lcom/google/googlenav/common/io/l;->e:I

    invoke-direct {p0}, Lcom/google/googlenav/common/io/l;->d()V

    return-void
.end method

.method private static a(IIII)I
    .locals 3

    sub-int v0, p1, p2

    :goto_0
    if-ge v0, p0, :cond_1

    shr-int v0, p1, p3

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] and rightShiftAmount ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/2addr p1, v0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_1
    return p1
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/common/io/l;->d:I

    iput v0, p0, Lcom/google/googlenav/common/io/l;->e:I

    iput v0, p0, Lcom/google/googlenav/common/io/l;->c:I

    return-void
.end method

.method private c(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->b:[I

    array-length v0, v0

    iget v1, p0, Lcom/google/googlenav/common/io/l;->e:I

    invoke-static {p1, v0, v1, v3}, Lcom/google/googlenav/common/io/l;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/common/io/l;->b:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/googlenav/common/io/l;->b:[I

    iget v2, p0, Lcom/google/googlenav/common/io/l;->e:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/googlenav/common/io/l;->b:[I

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/common/io/l;->c()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/googlenav/common/io/l;->a:[B

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/googlenav/common/io/l;->b:[I

    return-void
.end method

.method private d(I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->a:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    iget v2, p0, Lcom/google/googlenav/common/io/l;->d:I

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/google/googlenav/common/io/l;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/common/io/l;->c:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/googlenav/common/io/l;->c:I

    const/16 v2, 0x40

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/googlenav/common/io/l;->c:I

    const/16 v3, 0x80

    if-lt v2, v3, :cond_2

    const/4 v0, 0x2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/googlenav/common/io/l;->a:[B

    array-length v2, v2

    iget v3, p0, Lcom/google/googlenav/common/io/l;->d:I

    invoke-static {p1, v2, v3, v0}, Lcom/google/googlenav/common/io/l;->a(IIII)I

    move-result v0

    iget-object v2, p0, Lcom/google/googlenav/common/io/l;->a:[B

    array-length v2, v2

    if-le v0, v2, :cond_0

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/google/googlenav/common/io/l;->a:[B

    iget v3, p0, Lcom/google/googlenav/common/io/l;->d:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/googlenav/common/io/l;->a:[B

    iput v1, p0, Lcom/google/googlenav/common/io/l;->c:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/common/io/l;->e:I

    return v0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->b:[I

    aput p2, v0, p1

    return-void
.end method

.method public final a(Ljava/io/OutputStream;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->a:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/common/io/l;->d:I

    return v0
.end method

.method public final b(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/l;->c(I)V

    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->b:[I

    iget v1, p0, Lcom/google/googlenav/common/io/l;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/googlenav/common/io/l;->e:I

    aput p1, v0, v1

    return-void
.end method

.method public final write(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/l;->d(I)V

    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->a:[B

    iget v1, p0, Lcom/google/googlenav/common/io/l;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/googlenav/common/io/l;->d:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public final write([B)V
    .locals 4

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/l;->d(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/common/io/l;->a:[B

    iget v2, p0, Lcom/google/googlenav/common/io/l;->d:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/googlenav/common/io/l;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/common/io/l;->d:I

    return-void
.end method

.method public final write([BII)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/googlenav/common/io/l;->d(I)V

    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->a:[B

    iget v1, p0, Lcom/google/googlenav/common/io/l;->d:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/googlenav/common/io/l;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/googlenav/common/io/l;->d:I

    return-void
.end method
