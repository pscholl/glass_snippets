.class abstract Lcom/google/common/hash/a;
.super Lcom/google/common/hash/b;


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/hash/b;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private c(B)Lcom/google/common/hash/k;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/hash/a;->a(B)V

    return-object p0
.end method

.method private c(I)Lcom/google/common/hash/k;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/common/hash/a;->a([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object p0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw v0
.end method


# virtual methods
.method public final a(C)Lcom/google/common/hash/k;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/common/hash/a;->c(I)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/google/common/hash/k;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/hash/a;->c(I)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/google/common/hash/k;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/common/hash/a;->c(I)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/k;
    .locals 0

    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/Funnel;->funnel(Ljava/lang/Object;Lcom/google/common/hash/q;)V

    return-object p0
.end method

.method protected abstract a(B)V
.end method

.method protected a([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/hash/a;->a([BII)V

    return-void
.end method

.method protected a([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/hash/a;->a(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b([B)Lcom/google/common/hash/k;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/hash/a;->a([B)V

    return-object p0
.end method

.method public final b([BII)Lcom/google/common/hash/k;
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/ai;->a(III)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/a;->a([BII)V

    return-object p0
.end method

.method public final synthetic b(B)Lcom/google/common/hash/q;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/hash/a;->c(B)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(I)Lcom/google/common/hash/q;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/a;->a(I)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(J)Lcom/google/common/hash/q;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/a;->a(J)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([B)Lcom/google/common/hash/q;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/a;->b([B)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([BII)Lcom/google/common/hash/q;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/a;->b([BII)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method
