.class Lcom/google/common/collect/ArrayTable$CellSet;
.super Ljava/util/AbstractSet;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    .local p0, this:Lcom/google/common/collect/ArrayTable$CellSet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 590
    .local p0, this:Lcom/google/common/collect/ArrayTable$CellSet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$CellSet;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/google/common/collect/ArrayTable$CellSet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    const/4 v3, 0x0

    .line 624
    instance-of v4, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 625
    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 626
    .local v0, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v4, p0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v4}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 627
    .local v2, rowIndex:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {v4}, Lcom/google/common/collect/ArrayTable;->access$400(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 628
    .local v1, columnIndex:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 631
    .end local v0           #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    .end local v1           #columnIndex:Ljava/lang/Integer;
    .end local v2           #rowIndex:Ljava/lang/Integer;
    :cond_0
    return v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 594
    .local p0, this:Lcom/google/common/collect/ArrayTable$CellSet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$CellSet$1;

    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable$CellSet;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$CellSet$1;-><init>(Lcom/google/common/collect/ArrayTable$CellSet;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 619
    .local p0, this:Lcom/google/common/collect/ArrayTable$CellSet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-virtual {v0}, Lcom/google/common/collect/ArrayTable;->size()I

    move-result v0

    return v0
.end method
