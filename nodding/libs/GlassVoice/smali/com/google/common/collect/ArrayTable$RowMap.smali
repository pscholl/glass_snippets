.class Lcom/google/common/collect/ArrayTable$RowMap;
.super Lcom/google/common/collect/ArrayTable$ArrayMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ArrayTable$ArrayMap",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 2
    .parameter

    .prologue
    .line 785
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$RowMap;->this$0:Lcom/google/common/collect/ArrayTable;

    .line 786
    #getter for: Lcom/google/common/collect/ArrayTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ArrayTable$ArrayMap;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ArrayTable$1;)V

    .line 787
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 784
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$RowMap;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 791
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    const-string v0, "Row"

    return-object v0
.end method

.method bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 784
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$RowMap;->getValue(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getValue(I)Ljava/util/Map;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 796
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$Row;

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$RowMap;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/ArrayTable$Row;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 784
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    check-cast p2, Ljava/util/Map;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$RowMap;->put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/util/Map",
            "<TC;TV;>;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 806
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    .local p1, key:Ljava/lang/Object;,"TR;"
    .local p2, value:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method bridge synthetic setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 784
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    check-cast p2, Ljava/util/Map;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$RowMap;->setValue(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method setValue(ILjava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<TC;TV;>;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 801
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMap;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    .local p2, newValue:Ljava/util/Map;,"Ljava/util/Map<TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
