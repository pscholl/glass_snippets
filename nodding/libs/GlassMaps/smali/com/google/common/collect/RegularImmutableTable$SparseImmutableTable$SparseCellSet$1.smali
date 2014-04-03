.class Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;
.super Lcom/google/common/collect/ImmutableAsList;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/mh;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->a(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v0

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    iget-object v1, v1, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->b(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableMap;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;

    iget-object v2, v2, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v2}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->c(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/common/collect/Tables;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/mh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$SparseCellSet$1;->get(I)Lcom/google/common/collect/mh;

    move-result-object v0

    return-object v0
.end method
