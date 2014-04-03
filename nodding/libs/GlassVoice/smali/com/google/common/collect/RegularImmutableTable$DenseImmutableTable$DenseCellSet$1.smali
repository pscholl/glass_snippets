.class Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;
.super Lcom/google/common/collect/ImmutableAsList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->createAsList()Lcom/google/common/collect/ImmutableList;
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
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;)V
    .locals 0
    .parameter

    .prologue
    .line 673
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

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
    .line 686
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/Table$Cell;
    .locals 6
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet.1;"
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v5, v5, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->iterationOrderRow:[I
    invoke-static {v5}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$1100(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v5

    aget v2, v5, p1

    .line 677
    .local v2, rowIndex:I
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v5, v5, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->iterationOrderColumn:[I
    invoke-static {v5}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$1200(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v5

    aget v0, v5, p1

    .line 678
    .local v0, columnIndex:I
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v5, v5, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-virtual {v5}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 679
    .local v3, rowKey:Ljava/lang/Object;,"TR;"
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v5, v5, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-virtual {v5}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 680
    .local v1, columnKey:Ljava/lang/Object;,"TC;"
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v5, v5, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    #getter for: Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->access$800(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v2

    aget-object v4, v5, v0

    .line 681
    .local v4, value:Ljava/lang/Object;,"TV;"
    invoke-static {v3, v1, v4}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->get(I)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method
