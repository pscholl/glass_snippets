.class abstract Lcom/google/common/collect/RegularImmutableTable$CellSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSet",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$CellSet;,"Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$CellSet;,"Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    const/4 v2, 0x0

    .line 79
    instance-of v3, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 81
    .local v0, cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/collect/RegularImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 84
    .end local v0           #cell:Lcom/google/common/collect/Table$Cell;,"Lcom/google/common/collect/Table$Cell<***>;"
    .end local v1           #value:Ljava/lang/Object;
    :cond_0
    return v2
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 89
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$CellSet;,"Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 74
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$CellSet;,"Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$CellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableTable;->size()I

    move-result v0

    return v0
.end method
