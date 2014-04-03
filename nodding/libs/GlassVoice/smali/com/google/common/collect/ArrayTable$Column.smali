.class Lcom/google/common/collect/ArrayTable$Column;
.super Lcom/google/common/collect/ArrayTable$ArrayMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ArrayTable$ArrayMap",
        "<TR;TV;>;"
    }
.end annotation


# instance fields
.field final columnIndex:I

.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 2
    .parameter
    .parameter "columnIndex"

    .prologue
    .line 657
    .local p0, this:Lcom/google/common/collect/ArrayTable$Column;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    .line 658
    #getter for: Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ArrayTable$ArrayMap;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ArrayTable$1;)V

    .line 659
    iput p2, p0, Lcom/google/common/collect/ArrayTable$Column;->columnIndex:I

    .line 660
    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    .local p0, this:Lcom/google/common/collect/ArrayTable$Column;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    const-string v0, "Row"

    return-object v0
.end method

.method getValue(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 669
    .local p0, this:Lcom/google/common/collect/ArrayTable$Column;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$Column;->columnIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 674
    .local p0, this:Lcom/google/common/collect/ArrayTable$Column;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    .local p2, newValue:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Column;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$Column;->columnIndex:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
