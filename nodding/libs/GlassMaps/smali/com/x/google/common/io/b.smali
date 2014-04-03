.class public final Lcom/x/google/common/io/b;
.super Ljava/io/OutputStream;


# instance fields
.field private a:[B

.field private b:[I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, Lcom/x/google/common/io/b;->c:I

    iput v0, p0, Lcom/x/google/common/io/b;->d:I

    invoke-direct {p0}, Lcom/x/google/common/io/b;->d()V

    return-void
.end method

.method private static a(III)I
    .locals 1

    sub-int v0, p1, p2

    :goto_0
    if-ge v0, p0, :cond_0

    add-int/2addr v0, p1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/common/io/b;->c:I

    iput v0, p0, Lcom/x/google/common/io/b;->d:I

    return-void
.end method

.method private c(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/common/io/b;->b:[I

    array-length v0, v0

    iget v1, p0, Lcom/x/google/common/io/b;->d:I

    invoke-static {p1, v0, v1}, Lcom/x/google/common/io/b;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/x/google/common/io/b;->b:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/x/google/common/io/b;->b:[I

    iget v2, p0, Lcom/x/google/common/io/b;->d:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/x/google/common/io/b;->b:[I

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    invoke-direct {p0}, Lcom/x/google/common/io/b;->c()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/x/google/common/io/b;->a:[B

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/x/google/common/io/b;->b:[I

    return-void
.end method

.method private d(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/common/io/b;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/x/google/common/io/b;->c:I

    invoke-static {p1, v0, v1}, Lcom/x/google/common/io/b;->a(III)I

    move-result v0

    iget-object v1, p0, Lcom/x/google/common/io/b;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/x/google/common/io/b;->a:[B

    iget v2, p0, Lcom/x/google/common/io/b;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/x/google/common/io/b;->a:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/x/google/common/io/b;->d:I

    return v0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/b;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/b;->b:[I

    aput p2, v0, p1

    return-void
.end method

.method public final a(Ljava/io/OutputStream;II)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/b;->a:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/x/google/common/io/b;->c:I

    return v0
.end method

.method public final b(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/x/google/common/io/b;->c(I)V

    iget-object v0, p0, Lcom/x/google/common/io/b;->b:[I

    iget v1, p0, Lcom/x/google/common/io/b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/io/b;->d:I

    aput p1, v0, v1

    return-void
.end method

.method public final write(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/x/google/common/io/b;->d(I)V

    iget-object v0, p0, Lcom/x/google/common/io/b;->a:[B

    iget v1, p0, Lcom/x/google/common/io/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/x/google/common/io/b;->c:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public final write([B)V
    .locals 4

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/x/google/common/io/b;->d(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/x/google/common/io/b;->a:[B

    iget v2, p0, Lcom/x/google/common/io/b;->c:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/x/google/common/io/b;->c:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/x/google/common/io/b;->c:I

    return-void
.end method

.method public final write([BII)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/x/google/common/io/b;->d(I)V

    iget-object v0, p0, Lcom/x/google/common/io/b;->a:[B

    iget v1, p0, Lcom/x/google/common/io/b;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/x/google/common/io/b;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/x/google/common/io/b;->c:I

    return-void
.end method
