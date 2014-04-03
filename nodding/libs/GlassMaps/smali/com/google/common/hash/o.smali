.class final Lcom/google/common/hash/o;
.super Lcom/google/common/hash/d;


# instance fields
.field private a:J

.field private b:J

.field private c:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/common/hash/d;-><init>(I)V

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/o;->a:J

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/o;->b:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/hash/o;->c:I

    return-void
.end method

.method private a(JJ)V
    .locals 6

    const-wide/16 v4, 0x5

    iget-wide v0, p0, Lcom/google/common/hash/o;->a:J

    invoke-static {p1, p2}, Lcom/google/common/hash/o;->d(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->a:J

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v2, p0, Lcom/google/common/hash/o;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->a:J

    mul-long/2addr v0, v4

    const-wide/32 v2, 0x52dce729

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->b:J

    invoke-static {p3, p4}, Lcom/google/common/hash/o;->e(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->b:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->b:J

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/o;->b:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->b:J

    iget-wide v2, p0, Lcom/google/common/hash/o;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->b:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->b:J

    mul-long/2addr v0, v4

    const-wide/32 v2, 0x38495ab5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->b:J

    return-void
.end method

.method private static c(J)J
    .locals 5

    const/16 v4, 0x21

    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    const-wide v2, -0xae502812aa7333L

    mul-long/2addr v0, v2

    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    const-wide v2, -0x3b314601e57a13adL

    mul-long/2addr v0, v2

    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static d(J)J
    .locals 4

    const-wide v0, -0x783c846eeebdac2bL

    mul-long/2addr v0, p0

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    const-wide v2, 0x4cf5ad432745937fL

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static e(J)J
    .locals 4

    const-wide v0, 0x4cf5ad432745937fL

    mul-long/2addr v0, p0

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    const-wide v2, -0x783c846eeebdac2bL

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/hash/o;->a(JJ)V

    iget v0, p0, Lcom/google/common/hash/o;->c:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/hash/o;->c:I

    return-void
.end method

.method public final b()Lcom/google/common/hash/i;
    .locals 4

    iget-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget v2, p0, Lcom/google/common/hash/o;->c:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->b:J

    iget v2, p0, Lcom/google/common/hash/o;->c:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->b:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v2, p0, Lcom/google/common/hash/o;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->b:J

    iget-wide v2, p0, Lcom/google/common/hash/o;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->b:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->a:J

    invoke-static {v0, v1}, Lcom/google/common/hash/o;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->b:J

    invoke-static {v0, v1}, Lcom/google/common/hash/o;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/o;->b:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v2, p0, Lcom/google/common/hash/o;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v0, p0, Lcom/google/common/hash/o;->b:J

    iget-wide v2, p0, Lcom/google/common/hash/o;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->b:J

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/o;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/o;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCodes;->a([B)Lcom/google/common/hash/i;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 12

    const/16 v11, 0x28

    const/16 v10, 0x20

    const/16 v9, 0x18

    const/16 v8, 0x10

    const/16 v7, 0x8

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    iget v4, p0, Lcom/google/common/hash/o;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/common/hash/o;->c:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should never get here."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/16 v4, 0xe

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    :pswitch_1
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v11

    xor-long/2addr v0, v4

    :pswitch_2
    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    :pswitch_3
    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v9

    xor-long/2addr v0, v4

    :pswitch_4
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v8

    xor-long/2addr v0, v4

    :pswitch_5
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v7

    xor-long/2addr v0, v4

    :pswitch_6
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v0, v4

    :pswitch_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    xor-long/2addr v2, v4

    :goto_0
    iget-wide v4, p0, Lcom/google/common/hash/o;->a:J

    invoke-static {v2, v3}, Lcom/google/common/hash/o;->d(J)J

    move-result-wide v2

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/o;->a:J

    iget-wide v2, p0, Lcom/google/common/hash/o;->b:J

    invoke-static {v0, v1}, Lcom/google/common/hash/o;->e(J)J

    move-result-wide v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/o;->b:J

    return-void

    :pswitch_8
    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    :pswitch_9
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v11

    xor-long/2addr v2, v4

    :pswitch_a
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v10

    xor-long/2addr v2, v4

    :pswitch_b
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v9

    xor-long/2addr v2, v4

    :pswitch_c
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v8

    xor-long/2addr v2, v4

    :pswitch_d
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v7

    xor-long/2addr v2, v4

    :pswitch_e
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v2, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
