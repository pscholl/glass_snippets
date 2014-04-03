.class Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;
.super Lcom/google/common/collect/ImmutableList;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->c(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->f(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v1

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->g(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v1

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$1;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->f(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method
