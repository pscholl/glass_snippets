.class final Lcom/google/common/collect/av;
.super Lcom/google/common/collect/am;


# instance fields
.field final a:I

.field final synthetic b:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 2

    iput-object p1, p0, Lcom/google/common/collect/av;->b:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->access$400(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/am;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/al;)V

    iput p2, p0, Lcom/google/common/collect/av;->a:I

    return-void
.end method


# virtual methods
.method final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/av;->b:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/av;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Column"

    return-object v0
.end method

.method final b(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/av;->b:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/av;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
