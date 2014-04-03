.class public Lcom/google/common/collect/TreeBasedTable;
.super Lcom/google/common/collect/StandardRowSortedTable;
.source "TreeBasedTable.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeBasedTable$TreeRow;,
        Lcom/google/common/collect/TreeBasedTable$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/StandardRowSortedTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final columnComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TR;>;",
            "Ljava/util/Comparator",
            "<-TC;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    .local p1, rowComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TR;>;"
    .local p2, columnComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TC;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/google/common/collect/TreeBasedTable$Factory;

    invoke-direct {v1, p2}, Lcom/google/common/collect/TreeBasedTable$Factory;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    .line 136
    iput-object p2, p0, Lcom/google/common/collect/TreeBasedTable;->columnComparator:Ljava/util/Comparator;

    .line 137
    return-void
.end method

.method public static create()Lcom/google/common/collect/TreeBasedTable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Comparable;",
            "C::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/TreeBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/google/common/collect/TreeBasedTable;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeBasedTable;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/TreeBasedTable;)Lcom/google/common/collect/TreeBasedTable;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/TreeBasedTable",
            "<TR;TC;+TV;>;)",
            "Lcom/google/common/collect/TreeBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, table:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;+TV;>;"
    new-instance v0, Lcom/google/common/collect/TreeBasedTable;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->rowComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeBasedTable;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 130
    .local v0, result:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/TreeBasedTable;->putAll(Lcom/google/common/collect/Table;)V

    .line 131
    return-object v0
.end method

.method public static create(Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/TreeBasedTable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TR;>;",
            "Ljava/util/Comparator",
            "<-TC;>;)",
            "Lcom/google/common/collect/TreeBasedTable",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, rowComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TR;>;"
    .local p1, columnComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TC;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/google/common/collect/TreeBasedTable;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeBasedTable;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->clear()V

    return-void
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable;->columnComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 310
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardRowSortedTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 315
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 320
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 325
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createColumnKeyIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 352
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TC;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lcom/google/common/collect/TreeBasedTable$1;

    invoke-direct {v3, p0}, Lcom/google/common/collect/TreeBasedTable$1;-><init>(Lcom/google/common/collect/TreeBasedTable;)V

    invoke-static {v2, v3}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/Iterators;->mergeSorted(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    .line 360
    .local v1, merged:Ljava/util/Iterator;,"Ljava/util/Iterator<TC;>;"
    new-instance v2, Lcom/google/common/collect/TreeBasedTable$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/common/collect/TreeBasedTable$2;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/util/Iterator;Ljava/util/Comparator;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 335
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardRowSortedTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/StandardRowSortedTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Table;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->putAll(Lcom/google/common/collect/Table;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "rowKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "columnKey"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardRowSortedTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeBasedTable;->row(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    .local p1, rowKey:Ljava/lang/Object;,"TR;"
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$TreeRow;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeBasedTable$TreeRow;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public rowComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TR;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/TreeBasedTable;,"Lcom/google/common/collect/TreeBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
