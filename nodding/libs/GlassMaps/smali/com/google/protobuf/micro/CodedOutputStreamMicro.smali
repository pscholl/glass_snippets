.class public final Lcom/google/protobuf/micro/CodedOutputStreamMicro;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a:[B

    iput p2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b:I

    return-void
.end method

.method public static a(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(J)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->h(I)I

    move-result v1

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([BII)Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .locals 1

    new-instance v0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;-><init>([BII)V

    return-object v0
.end method

.method private a(B)V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a:[B

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method private a(D)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(J)V

    return-void
.end method

.method private a(F)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->i(I)V

    return-void
.end method

.method private a(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(J)V

    goto :goto_0
.end method

.method private a(Lcom/google/protobuf/micro/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/protobuf/micro/a;->b()[B

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(I)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a([B)V

    return-void
.end method

.method private a(Lcom/google/protobuf/micro/c;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/c;->a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b([BII)V

    return-void
.end method

.method private static b(D)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method private static b(F)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static b(ID)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IF)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/protobuf/micro/a;)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(Lcom/google/protobuf/micro/a;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static b(Lcom/google/protobuf/micro/a;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/micro/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->h(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/micro/a;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static b(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/micro/CodedOutputStreamMicro$OutOfSpaceException;

    invoke-direct {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro$OutOfSpaceException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a:[B

    iget v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    return-void
.end method

.method private b(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(I)V

    return-void
.end method

.method private b(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(J)V

    return-void
.end method

.method private b(Lcom/google/protobuf/micro/c;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/protobuf/micro/c;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(I)V

    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/c;->a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(I)V

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a([B)V

    return-void
.end method

.method private b([BII)V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a:[B

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a:[B

    iget v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p2, v0

    sub-int v0, p3, v0

    iget v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b:I

    iput v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b()V

    iget v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b:I

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private c()I
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(I)I
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->h(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static c(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(ILcom/google/protobuf/micro/c;)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(Lcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static c(Lcom/google/protobuf/micro/c;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/micro/c;->b()I

    move-result v0

    return v0
.end method

.method private c(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(J)V

    return-void
.end method

.method private static d(I)I
    .locals 1

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->h(I)I

    move-result v0

    return v0
.end method

.method public static d(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(IJ)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(ILcom/google/protobuf/micro/c;)I
    .locals 2

    invoke-static {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(Lcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static d(J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->f(J)I

    move-result v0

    return v0
.end method

.method private static d(Lcom/google/protobuf/micro/c;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/micro/c;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->h(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private e(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(B)V

    return-void
.end method

.method private e(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/protobuf/micro/d;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->g(I)V

    return-void
.end method

.method private e(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method private static f(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/micro/d;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->h(I)I

    move-result v0

    return v0
.end method

.method private static f(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private g(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method private g(J)V
    .locals 2

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    return-void
.end method

.method private static h(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private i(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final a(ID)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(D)V

    return-void
.end method

.method public final a(IF)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    invoke-direct {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(F)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    invoke-direct {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(J)V

    return-void
.end method

.method public final a(ILcom/google/protobuf/micro/a;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    invoke-direct {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Lcom/google/protobuf/micro/a;)V

    return-void
.end method

.method public final a(ILcom/google/protobuf/micro/c;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    invoke-direct {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Lcom/google/protobuf/micro/c;)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    invoke-direct {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    invoke-direct {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Z)V

    return-void
.end method

.method public final b(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    invoke-direct {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(I)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(J)V

    return-void
.end method

.method public final b(ILcom/google/protobuf/micro/c;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->e(II)V

    invoke-direct {p0, p2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(Lcom/google/protobuf/micro/c;)V

    return-void
.end method
