.class abstract Lcom/google/common/collect/ii;
.super Lcom/google/common/collect/hs;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/hs;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ii;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ii;->a()Lcom/google/common/collect/ig;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ig;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ii;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ii;->a()Lcom/google/common/collect/ig;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ig;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/ig;
.end method

.method final a(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ii;->a()Lcom/google/common/collect/ig;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ig;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    return-void
.end method

.method protected final b()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ij;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ij;-><init>(Lcom/google/common/collect/ii;)V

    return-object v0
.end method

.method abstract c()Ljava/util/Iterator;
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ii;->a()Lcom/google/common/collect/ig;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ig;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ii;->a()Lcom/google/common/collect/ig;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/ig;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ii;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ii;->a()Lcom/google/common/collect/ig;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ig;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ii;->a()Lcom/google/common/collect/ig;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ig;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ii;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
