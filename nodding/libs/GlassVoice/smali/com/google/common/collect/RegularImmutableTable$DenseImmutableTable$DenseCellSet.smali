.class Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;
.super Lcom/google/common/collect/RegularImmutableTable$CellSet;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DenseCellSet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.DenseCellSet;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$CellSet;-><init>(Lcom/google/common/collect/RegularImmutableTable;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.DenseCellSet;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;)V

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.DenseCellSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 665
    .local p0, this:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;,"Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable<TR;TC;TV;>.DenseCellSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
