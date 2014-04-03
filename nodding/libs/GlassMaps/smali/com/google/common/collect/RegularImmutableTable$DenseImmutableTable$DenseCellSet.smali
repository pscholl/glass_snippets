.class Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;
.super Lcom/google/common/collect/RegularImmutableTable$CellSet;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$CellSet;-><init>(Lcom/google/common/collect/RegularImmutableTable;)V

    return-void
.end method


# virtual methods
.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1

    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;-><init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;)V

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/mv;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/mv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->iterator()Lcom/google/common/collect/mv;

    move-result-object v0

    return-object v0
.end method
