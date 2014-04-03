.class Lcom/google/common/collect/CartesianList$1;
.super Lcom/google/common/collect/ImmutableList;


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ba;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ba;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/ba;

    iput p2, p0, Lcom/google/common/collect/CartesianList$1;->val$index:I

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/CartesianList$1;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(II)I

    iget-object v0, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/ba;

    iget v1, p0, Lcom/google/common/collect/CartesianList$1;->val$index:I

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/ba;->a(Lcom/google/common/collect/ba;II)I

    move-result v1

    iget-object v0, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/ba;

    invoke-static {v0}, Lcom/google/common/collect/ba;->a(Lcom/google/common/collect/ba;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/common/collect/CartesianList$1;->this$0:Lcom/google/common/collect/ba;

    invoke-static {v0}, Lcom/google/common/collect/ba;->a(Lcom/google/common/collect/ba;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
