.class abstract Lcom/google/common/collect/RegularImmutableTable;
.super Lcom/google/common/collect/eb;


# instance fields
.field private transient a:Lcom/google/common/collect/ImmutableCollection;

.field private transient b:Lcom/google/common/collect/ImmutableSet;


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable;->b:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->h()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableTable;->b:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public synthetic cellSet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->f()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final f()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable;->a:Lcom/google/common/collect/ImmutableCollection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->g()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableTable;->a:Lcom/google/common/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method abstract g()Lcom/google/common/collect/ImmutableCollection;
.end method

.method abstract h()Lcom/google/common/collect/ImmutableSet;
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract size()I
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->f()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
