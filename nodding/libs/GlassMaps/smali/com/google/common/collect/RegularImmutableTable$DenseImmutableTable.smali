.class final Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;
.super Lcom/google/common/collect/RegularImmutableTable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableMap;

.field private final b:Lcom/google/common/collect/ImmutableMap;

.field private final c:Lcom/google/common/collect/ImmutableMap;

.field private final d:Lcom/google/common/collect/ImmutableMap;

.field private final e:[I

.field private final f:[I

.field private final g:[[Ljava/lang/Object;

.field private final h:[I

.field private final i:[I


# direct methods
.method static synthetic a(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->e:[I

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->b:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->g:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->f:[I

    return-object v0
.end method

.method static synthetic e(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic f(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->h:[I

    return-object v0
.end method

.method static synthetic g(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->i:[I

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Column;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Column;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
    .locals 2

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final b()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->d:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public final synthetic cellSet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableTable;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic columnMap()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->c()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containsColumn(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsRow(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->c:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method final g()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->g:[[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method final h()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V

    return-object v0
.end method

.method public final synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->d()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic rowMap()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->e()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->h:[I

    array-length v0, v0

    return v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableTable;->f()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
