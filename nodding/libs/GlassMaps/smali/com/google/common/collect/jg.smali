.class abstract Lcom/google/common/collect/jg;
.super Lcom/google/common/collect/kl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/kl;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/jc;
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/jg;->a()Lcom/google/common/collect/jc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jc;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/jg;->a()Lcom/google/common/collect/jc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jc;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/jg;->a()Lcom/google/common/collect/jc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jc;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/jg;->a()Lcom/google/common/collect/jc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jc;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/jh;

    invoke-virtual {p0}, Lcom/google/common/collect/jg;->a()Lcom/google/common/collect/jc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/jc;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/jh;-><init>(Lcom/google/common/collect/jg;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/jg;->a()Lcom/google/common/collect/jc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jc;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/jg;->a()Lcom/google/common/collect/jc;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/jc;->remove(Ljava/lang/Object;I)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/jg;->a()Lcom/google/common/collect/jc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jc;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
