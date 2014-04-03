.class Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;
.super Lcom/google/common/collect/ImmutableAsList;


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    return-object v0
.end method

.method public get(I)Lcom/google/common/collect/mh;
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->f(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v0

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v1, v1, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->g(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v1

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v2, v2, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-virtual {v2}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->d()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v3, v3, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-virtual {v3}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->this$1:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;

    iget-object v4, v4, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v4}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->c(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v4

    aget-object v0, v4, v0

    aget-object v0, v0, v1

    invoke-static {v2, v3, v0}, Lcom/google/common/collect/Tables;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/mh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$DenseCellSet$1;->get(I)Lcom/google/common/collect/mh;

    move-result-object v0

    return-object v0
.end method
