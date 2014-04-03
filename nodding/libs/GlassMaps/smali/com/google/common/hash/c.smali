.class abstract Lcom/google/common/hash/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/hash/j;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hashBytes([B)Lcom/google/common/hash/i;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/k;->b([B)Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/k;->a()Lcom/google/common/hash/i;

    move-result-object v0

    return-object v0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/i;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/k;->b([BII)Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/k;->a()Lcom/google/common/hash/i;

    move-result-object v0

    return-object v0
.end method

.method public hashInt(I)Lcom/google/common/hash/i;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/k;->a(I)Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/k;->a()Lcom/google/common/hash/i;

    move-result-object v0

    return-object v0
.end method

.method public hashLong(J)Lcom/google/common/hash/i;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/k;->a(J)Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/k;->a()Lcom/google/common/hash/i;

    move-result-object v0

    return-object v0
.end method

.method public hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/i;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/k;->a(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/k;->a()Lcom/google/common/hash/i;

    move-result-object v0

    return-object v0
.end method

.method public hashString(Ljava/lang/CharSequence;)Lcom/google/common/hash/i;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/k;->a(Ljava/lang/CharSequence;)Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/k;->a()Lcom/google/common/hash/i;

    move-result-object v0

    return-object v0
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/i;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/k;->a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/k;->a()Lcom/google/common/hash/i;

    move-result-object v0

    return-object v0
.end method

.method public newHasher(I)Lcom/google/common/hash/k;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    invoke-virtual {p0}, Lcom/google/common/hash/c;->newHasher()Lcom/google/common/hash/k;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
