.class Lcom/google/common/collect/ArrayTable$CellSet$1$1;
.super Lcom/google/common/collect/Tables$AbstractCell;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$CellSet$1;->get(I)Lcom/google/common/collect/Table$Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Tables$AbstractCell",
        "<TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field final columnIndex:I

.field final rowIndex:I

.field final synthetic this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$CellSet$1;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 597
    .local p0, this:Lcom/google/common/collect/ArrayTable$CellSet$1$1;,"Lcom/google/common/collect/ArrayTable$CellSet$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iput p2, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->val$index:I

    invoke-direct {p0}, Lcom/google/common/collect/Tables$AbstractCell;-><init>()V

    .line 598
    iget v0, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->val$index:I

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iget-object v1, v1, Lcom/google/common/collect/ArrayTable$CellSet$1;->this$1:Lcom/google/common/collect/ArrayTable$CellSet;

    iget-object v1, v1, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->rowIndex:I

    .line 599
    iget v0, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->val$index:I

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iget-object v1, v1, Lcom/google/common/collect/ArrayTable$CellSet$1;->this$1:Lcom/google/common/collect/ArrayTable$CellSet;

    iget-object v1, v1, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->columnIndex:I

    return-void
.end method


# virtual methods
.method public getColumnKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, this:Lcom/google/common/collect/ArrayTable$CellSet$1$1;,"Lcom/google/common/collect/ArrayTable$CellSet$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet$1;->this$1:Lcom/google/common/collect/ArrayTable$CellSet;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->columnIndex:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRowKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, this:Lcom/google/common/collect/ArrayTable$CellSet$1$1;,"Lcom/google/common/collect/ArrayTable$CellSet$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet$1;->this$1:Lcom/google/common/collect/ArrayTable$CellSet;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->rowIndex:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 610
    .local p0, this:Lcom/google/common/collect/ArrayTable$CellSet$1$1;,"Lcom/google/common/collect/ArrayTable$CellSet$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->this$2:Lcom/google/common/collect/ArrayTable$CellSet$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet$1;->this$1:Lcom/google/common/collect/ArrayTable$CellSet;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$CellSet;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->rowIndex:I

    iget v2, p0, Lcom/google/common/collect/ArrayTable$CellSet$1$1;->columnIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
