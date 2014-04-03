.class final Lcom/google/common/hash/p;
.super Lcom/google/common/hash/d;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/hash/d;-><init>(I)V

    iput p1, p0, Lcom/google/common/hash/p;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/hash/p;->b:I

    return-void
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    #calls: Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I
    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/p;->a:I

    #calls: Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I
    invoke-static {v1, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$100(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/p;->a:I

    iget v0, p0, Lcom/google/common/hash/p;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/hash/p;->b:I

    return-void
.end method

.method public final b()Lcom/google/common/hash/i;
    .locals 2

    iget v0, p0, Lcom/google/common/hash/p;->a:I

    iget v1, p0, Lcom/google/common/hash/p;->b:I

    #calls: Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/i;
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$200(II)Lcom/google/common/hash/i;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/common/hash/p;->b:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/hash/p;->b:I

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->a(B)I

    move-result v2

    shl-int/2addr v2, v0

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/common/hash/p;->a:I

    #calls: Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I
    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/p;->a:I

    return-void
.end method
