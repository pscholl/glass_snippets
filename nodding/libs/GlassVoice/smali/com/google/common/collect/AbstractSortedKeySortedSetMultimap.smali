.class abstract Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;
.super Lcom/google/common/collect/AbstractSortedSetMultimap;
.source "AbstractSortedKeySortedSetMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/SortedMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap<TK;TV;>;"
    .local p1, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;-><init>(Ljava/util/Map;)V

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->asMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public asMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method bridge synthetic backingMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->backingMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method backingMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 34
    .local p0, this:Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;,"Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method
