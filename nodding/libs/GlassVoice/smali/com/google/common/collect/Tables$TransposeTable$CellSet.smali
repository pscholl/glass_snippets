.class Lcom/google/common/collect/Tables$TransposeTable$CellSet;
.super Lcom/google/common/collect/Collections2$TransformedCollection;
.source "Tables.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables$TransposeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Collections2$TransformedCollection",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;",
        "Lcom/google/common/collect/Table$Cell",
        "<TC;TR;TV;>;>;",
        "Ljava/util/Set",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TC;TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Tables$TransposeTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Tables$TransposeTable;)V
    .locals 2
    .parameter

    .prologue
    .line 264
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransposeTable;

    .line 265
    iget-object v0, p1, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Tables$TransposeTable;->access$000()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Collections2$TransformedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Function;)V

    .line 266
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 290
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    instance-of v1, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 291
    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 292
    .local v0, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransposeTable;

    iget-object v1, v1, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 295
    .end local v0           #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    const/4 v1, 0x0

    .line 270
    if-ne p1, p0, :cond_1

    .line 271
    const/4 v1, 0x1

    .line 280
    :cond_0
    :goto_0
    return v1

    .line 273
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 276
    check-cast v0, Ljava/util/Set;

    .line 277
    .local v0, os:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 280
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 285
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 300
    .local p0, this:Lcom/google/common/collect/Tables$TransposeTable$CellSet;,"Lcom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>.CellSet;"
    instance-of v1, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 301
    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 302
    .local v0, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransposeTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransposeTable;

    iget-object v1, v1, Lcom/google/common/collect/Tables$TransposeTable;->original:Lcom/google/common/collect/Table;

    invoke-interface {v1}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 305
    .end local v0           #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
