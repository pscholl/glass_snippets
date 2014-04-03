.class Lcom/google/common/collect/StandardTable$RowKeySet;
.super Lcom/google/common/collect/StandardTable$TableSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RowKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.TableSet<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .locals 1
    .parameter

    .prologue
    .line 770
    .local p0, this:Lcom/google/common/collect/StandardTable$RowKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowKeySet;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$RowKeySet;->this$0:Lcom/google/common/collect/StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/StandardTable$TableSet;-><init>(Lcom/google/common/collect/StandardTable;Lcom/google/common/collect/StandardTable$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 783
    .local p0, this:Lcom/google/common/collect/StandardTable$RowKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowKeySet;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, this:Lcom/google/common/collect/StandardTable$RowKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowKeySet;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lcom/google/common/collect/StandardTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 788
    .local p0, this:Lcom/google/common/collect/StandardTable$RowKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowKeySet;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowKeySet;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 778
    .local p0, this:Lcom/google/common/collect/StandardTable$RowKeySet;,"Lcom/google/common/collect/StandardTable<TR;TC;TV;>.RowKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$RowKeySet;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
