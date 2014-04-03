.class Lcom/google/common/collect/Tables$TransformedTable$CellSet;
.super Lcom/google/common/collect/Collections2$TransformedCollection;
.source "Tables.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables$TransformedTable;
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
        "<TR;TC;TV1;>;",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV2;>;>;",
        "Ljava/util/Set",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Tables$TransformedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Tables$TransformedTable;)V
    .locals 2
    .parameter

    .prologue
    .line 467
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable$CellSet;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/Tables$TransformedTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    .line 468
    iget-object v0, p1, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/Tables$TransformedTable;->cellFunction()Lcom/google/common/base/Function;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Collections2$TransformedCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Function;)V

    .line 469
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable$CellSet;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>.CellSet;"
    const/4 v1, 0x0

    .line 483
    instance-of v2, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 484
    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 485
    .local v0, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Tables$TransformedTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/collect/Tables$TransformedTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 491
    .end local v0           #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    :cond_0
    :goto_0
    return v1

    .line 488
    .restart local v0       #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/Tables$TransformedTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    iget-object v2, v2, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 473
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable$CellSet;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>.CellSet;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 478
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable$CellSet;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>.CellSet;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 496
    .local p0, this:Lcom/google/common/collect/Tables$TransformedTable$CellSet;,"Lcom/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>.CellSet;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Tables$TransformedTable$CellSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 497
    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 498
    .local v0, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v1, p0, Lcom/google/common/collect/Tables$TransformedTable$CellSet;->this$0:Lcom/google/common/collect/Tables$TransformedTable;

    iget-object v1, v1, Lcom/google/common/collect/Tables$TransformedTable;->fromTable:Lcom/google/common/collect/Table;

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/4 v1, 0x1

    .line 501
    .end local v0           #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
