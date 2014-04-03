.class Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableAsList",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;,"Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;,"Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/Table$Cell;
    .locals 8
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;,"Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet.1;"
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    iget-object v5, v5, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->iterationOrderRow:[I
    invoke-static {v5}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$100(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v5

    aget v4, v5, p1

    .line 322
    .local v4, rowIndex:I
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    iget-object v5, v5, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v5}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$200(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 323
    .local v3, rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/ImmutableMap;

    .line 324
    .local v2, row:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<TC;TV;>;"
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    iget-object v5, v5, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->iterationOrderColumn:[I
    invoke-static {v5}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->access$300(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v5

    aget v1, v5, p1

    .line 325
    .local v1, columnIndex:I
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 326
    .local v0, colEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TC;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 318
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;,"Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->get(I)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method
