.class public abstract Lcom/google/common/collect/cn;
.super Lcom/google/common/collect/ck;

# interfaces
.implements Lcom/google/common/collect/mg;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ck;-><init>()V

    return-void
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mg;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mg;->clear()V

    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/mg;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mg;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mg;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/mg;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/mg;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/mg;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/mg;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/mg;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/mg;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mg;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/mg;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/mg;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/mg;->putAll(Lcom/google/common/collect/mg;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/mg;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/mg;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mg;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mg;->rowMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mg;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/cn;->delegate()Lcom/google/common/collect/mg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/mg;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
