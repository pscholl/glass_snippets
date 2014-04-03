.class public final Lcom/google/protobuf/nano/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/protobuf/nano/a;->g:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/protobuf/nano/a;->i:I

    const/high16 v0, 0x400

    iput v0, p0, Lcom/google/protobuf/nano/a;->j:I

    iput-object p1, p0, Lcom/google/protobuf/nano/a;->a:[B

    iput p2, p0, Lcom/google/protobuf/nano/a;->b:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/protobuf/nano/a;->c:I

    iput p2, p0, Lcom/google/protobuf/nano/a;->e:I

    return-void
.end method

.method public static a([BII)Lcom/google/protobuf/nano/a;
    .locals 1

    new-instance v0, Lcom/google/protobuf/nano/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/nano/a;-><init>([BII)V

    return-object v0
.end method

.method private d(I)I
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/a;->e:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/a;->g:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/google/protobuf/nano/a;->g:I

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->t()V

    return v1
.end method

.method private e(I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/nano/a;->g:I

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->t()V

    return-void
.end method

.method private f(I)[B
    .locals 4

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/a;->e:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/a;->g:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/protobuf/nano/a;->g:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/a;->g(I)V

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/a;->c:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/google/protobuf/nano/a;->a:[B

    iget v2, p0, Lcom/google/protobuf/nano/a;->e:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/protobuf/nano/a;->e:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/nano/a;->e:I

    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method private g(I)V
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/a;->e:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/nano/a;->g:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/protobuf/nano/a;->g:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/a;->g(I)V

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/a;->c:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/google/protobuf/nano/a;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/a;->e:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method private o()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method private p()I
    .locals 3

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v1

    if-ltz v1, :cond_4

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method private q()J
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method

.method private r()I
    .locals 4

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v0

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v1

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v2

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private s()J
    .locals 13

    const-wide/16 v11, 0xff

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v0

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v1

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v2

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v3

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v4

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v5

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v6

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->v()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v11

    int-to-long v0, v1

    and-long/2addr v0, v11

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v11

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v11

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v11

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v11

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v11

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v11

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private t()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/a;->c:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/a;->c:I

    iget v0, p0, Lcom/google/protobuf/nano/a;->c:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->g:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/protobuf/nano/a;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/a;->d:I

    iget v0, p0, Lcom/google/protobuf/nano/a;->c:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/nano/a;->c:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/nano/a;->d:I

    goto :goto_0
.end method

.method private u()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/a;->e:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()B
    .locals 3

    iget v0, p0, Lcom/google/protobuf/nano/a;->e:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->c:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/a;->a:[B

    iget v1, p0, Lcom/google/protobuf/nano/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/nano/a;->e:I

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/protobuf/nano/a;->f:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->p()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/a;->f:I

    iget v0, p0, Lcom/google/protobuf/nano/a;->f:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/a;->f:I

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/nano/a;->f:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->p()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/nano/a;->h:I

    iget v2, p0, Lcom/google/protobuf/nano/a;->i:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/a;->d(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/nano/a;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/nano/a;->h:I

    invoke-virtual {p1, p0}, Lcom/google/protobuf/nano/b;->mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/a;->a(I)V

    iget v1, p0, Lcom/google/protobuf/nano/a;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/protobuf/nano/a;->h:I

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/a;->e(I)V

    return-void
.end method

.method public final b()D
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/protobuf/nano/d;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->f()I

    :goto_0
    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->s()J

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->p()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/nano/a;->g(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->o()V

    invoke-static {p1}, Lcom/google/protobuf/nano/d;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/d;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/a;->a(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->r()I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final c()F
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 4

    iget v0, p0, Lcom/google/protobuf/nano/a;->e:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/nano/a;->e:I

    iget v3, p0, Lcom/google/protobuf/nano/a;->b:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/nano/a;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/nano/a;->e:I

    return-void
.end method

.method public final d()J
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->p()I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->r()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->p()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->p()I

    move-result v1

    iget v0, p0, Lcom/google/protobuf/nano/a;->c:I

    iget v2, p0, Lcom/google/protobuf/nano/a;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/nano/a;->a:[B

    iget v3, p0, Lcom/google/protobuf/nano/a;->e:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/google/protobuf/nano/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/nano/a;->e:I

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/protobuf/nano/a;->f(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public final k()[B
    .locals 5

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->p()I

    move-result v1

    iget v0, p0, Lcom/google/protobuf/nano/a;->c:I

    iget v2, p0, Lcom/google/protobuf/nano/a;->e:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/google/protobuf/nano/a;->a:[B

    iget v3, p0, Lcom/google/protobuf/nano/a;->e:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/protobuf/nano/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/nano/a;->e:I

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/protobuf/nano/a;->f(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/a;->p()I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/a;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/a;->e:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->g:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public final n()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/nano/a;->e:I

    iget v1, p0, Lcom/google/protobuf/nano/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
