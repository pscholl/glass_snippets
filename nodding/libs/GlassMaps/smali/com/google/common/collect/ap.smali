.class final Lcom/google/common/collect/ap;
.super Lcom/google/common/collect/aa;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/common/collect/ao;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ao;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ap;->b:Lcom/google/common/collect/ao;

    iput p2, p0, Lcom/google/common/collect/ap;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ap;->b:Lcom/google/common/collect/ao;

    iget-object v0, v0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/an;

    iget-object v0, v0, Lcom/google/common/collect/an;->a:Lcom/google/common/collect/am;

    iget v1, p0, Lcom/google/common/collect/ap;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/am;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ap;->b:Lcom/google/common/collect/ao;

    iget-object v0, v0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/an;

    iget-object v0, v0, Lcom/google/common/collect/an;->a:Lcom/google/common/collect/am;

    iget v1, p0, Lcom/google/common/collect/ap;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/am;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/ap;->b:Lcom/google/common/collect/ao;

    iget-object v0, v0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/an;

    iget-object v0, v0, Lcom/google/common/collect/an;->a:Lcom/google/common/collect/am;

    iget v1, p0, Lcom/google/common/collect/ap;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/am;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
