.class Lcom/google/common/collect/StandardTable$CellSet;
.super Lcom/google/common/collect/StandardTable$TableSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.TableSet<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    .local p0, this:Lcom/google/common/collect/StandardTable$CellSet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$CellSet;->this$0:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/StandardTable$TableSet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    .local p0, this:Lcom/google/common/collect/StandardTable$CellSet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellSet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$CellSet;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 294
    .local p0, this:Lcom/google/common/collect/StandardTable$CellSet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellSet;"
    instance-of v1, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 295
    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 296
    .local v0, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$CellSet;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    #calls: Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/collect/StandardTable;->access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 298
    .end local v0           #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
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
    .line 284
    .local p0, this:Lcom/google/common/collect/StandardTable$CellSet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellSet;"
    new-instance v0, Lcom/google/common/collect/StandardTable$CellIterator;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$CellSet;->this$0:Lcom/google/common/collect/StandardTable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardTable$CellIterator;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 303
    .local p0, this:Lcom/google/common/collect/StandardTable$CellSet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellSet;"
    instance-of v1, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 304
    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 305
    .local v0, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$CellSet;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    #calls: Lcom/google/common/collect/StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/google/common/collect/StandardTable;->access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 307
    .end local v0           #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 289
    .local p0, this:Lcom/google/common/collect/StandardTable$CellSet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$CellSet;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->size()I

    move-result v0

    return v0
.end method
