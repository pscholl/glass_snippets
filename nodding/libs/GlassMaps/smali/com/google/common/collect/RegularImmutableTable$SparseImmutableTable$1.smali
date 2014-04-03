.class Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;
.super Lcom/google/common/collect/ImmutableList;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->a(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v0

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->b(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMap;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->c(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;->a(Lcom/google/common/collect/RegularImmutableTable$SparseImmutableTable;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method
