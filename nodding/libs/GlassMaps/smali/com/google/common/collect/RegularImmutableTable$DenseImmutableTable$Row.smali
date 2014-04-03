.class final Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;
.super Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;


# instance fields
.field private final rowIndex:I

.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->a(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[I

    move-result-object v0

    aget v0, v0, p2

    invoke-direct {p0, v0}, Lcom/google/common/collect/RegularImmutableTable$ImmutableArrayMap;-><init>(I)V

    iput p2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;->rowIndex:I

    return-void
.end method


# virtual methods
.method final getValue(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->c(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;->rowIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    return-object v0
.end method

.method final isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final keyToIndex()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable$Row;->this$0:Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->b(Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
