.class public abstract Lcom/google/common/hash/d;
.super Lcom/google/common/hash/b;


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:I

.field private final c:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/google/common/hash/d;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/hash/b;-><init>()V

    rem-int v0, p2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    add-int/lit8 v0, p2, 0x7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/google/common/hash/d;->b:I

    iput p1, p0, Lcom/google/common/hash/d;->c:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(B)Lcom/google/common/hash/k;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/d;->c()V

    return-object p0
.end method

.method private c(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/k;
    .locals 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/d;->c()V

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lcom/google/common/hash/d;->b:I

    iget-object v1, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, v0, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/common/hash/d;->d()V

    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/d;->c:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/common/hash/d;->d()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/d;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/d;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/hash/i;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/hash/d;->d()V

    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/d;->b(Ljava/nio/ByteBuffer;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/hash/d;->b()Lcom/google/common/hash/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(C)Lcom/google/common/hash/k;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/d;->c()V

    return-object p0
.end method

.method public final a(I)Lcom/google/common/hash/k;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/d;->c()V

    return-object p0
.end method

.method public final a(J)Lcom/google/common/hash/k;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/d;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/d;->c()V

    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/google/common/hash/k;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/d;->a(C)Lcom/google/common/hash/k;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/k;
    .locals 0

    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/Funnel;->funnel(Ljava/lang/Object;Lcom/google/common/hash/q;)V

    return-object p0
.end method

.method protected abstract a(Ljava/nio/ByteBuffer;)V
.end method

.method abstract b()Lcom/google/common/hash/i;
.end method

.method public final b([B)Lcom/google/common/hash/k;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/hash/d;->b([BII)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final b([BII)Lcom/google/common/hash/k;
    .locals 2

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/hash/d;->c(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(B)Lcom/google/common/hash/q;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/hash/d;->a(B)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(I)Lcom/google/common/hash/q;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->a(I)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(J)Lcom/google/common/hash/q;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/d;->a(J)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/CharSequence;)Lcom/google/common/hash/q;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->a(Ljava/lang/CharSequence;)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/google/common/hash/d;->c:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/d;->c:I

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/common/hash/d;->c:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final synthetic c([B)Lcom/google/common/hash/q;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->b([B)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c([BII)Lcom/google/common/hash/q;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/d;->b([BII)Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0
.end method
