.class final Lcom/google/common/collect/lb;
.super Lcom/google/common/collect/kl;


# instance fields
.field final synthetic a:Lcom/google/common/collect/la;


# direct methods
.method constructor <init>(Lcom/google/common/collect/la;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    invoke-direct {p0}, Lcom/google/common/collect/kl;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    invoke-static {}, Lcom/google/common/base/Predicates;->a()Lcom/google/common/base/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/la;->a(Lcom/google/common/base/aj;)Z

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    iget-object v0, v0, Lcom/google/common/collect/la;->d:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    iget-object v2, v2, Lcom/google/common/collect/la;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    #calls: Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    iget-object v0, v0, Lcom/google/common/collect/la;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    iget-object v1, v1, Lcom/google/common/collect/la;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/lc;

    iget-object v1, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    invoke-direct {v0, v1}, Lcom/google/common/collect/lc;-><init>(Lcom/google/common/collect/la;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    iget-object v0, v0, Lcom/google/common/collect/la;->d:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    iget-object v2, v2, Lcom/google/common/collect/la;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    #calls: Lcom/google/common/collect/StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->a(Ljava/util/Collection;)Lcom/google/common/base/aj;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/aj;)Lcom/google/common/base/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/la;->a(Lcom/google/common/base/aj;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    iget-object v1, v1, Lcom/google/common/collect/la;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v3, p0, Lcom/google/common/collect/lb;->a:Lcom/google/common/collect/la;

    iget-object v3, v3, Lcom/google/common/collect/la;->a:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
