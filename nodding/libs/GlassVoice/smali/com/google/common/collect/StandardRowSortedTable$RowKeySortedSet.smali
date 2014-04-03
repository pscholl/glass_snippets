.class Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;
.super Lcom/google/common/collect/StandardTable$RowKeySet;
.source "StandardRowSortedTable.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardRowSortedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowKeySortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.RowKeySet;",
        "Ljava/util/SortedSet",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/StandardRowSortedTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardRowSortedTable;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    .local p0, this:Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;,"Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowKeySortedSet;"
    iput-object p1, p0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$RowKeySet;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardRowSortedTable;Lcom/google/common/collect/StandardRowSortedTable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    .local p0, this:Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;,"Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowKeySortedSet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;-><init>(Lcom/google/common/collect/StandardRowSortedTable;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TR;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;,"Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowKeySortedSet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;,"Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowKeySortedSet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;,"Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowKeySortedSet;"
    .local p1, toElement:Ljava/lang/Object;,"TR;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardRowSortedTable;->factory:Lcom/google/common/base/Supplier;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;,"Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowKeySortedSet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;,"Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowKeySortedSet;"
    .local p1, fromElement:Ljava/lang/Object;,"TR;"
    .local p2, toElement:Ljava/lang/Object;,"TR;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardRowSortedTable;->factory:Lcom/google/common/base/Supplier;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;,"Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowKeySortedSet;"
    .local p1, fromElement:Ljava/lang/Object;,"TR;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    #calls: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/StandardRowSortedTable$RowKeySortedSet;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardRowSortedTable;->factory:Lcom/google/common/base/Supplier;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
