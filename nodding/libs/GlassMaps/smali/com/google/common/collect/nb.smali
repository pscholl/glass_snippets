.class final Lcom/google/common/collect/nb;
.super Lcom/google/common/collect/aa;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/na;


# direct methods
.method constructor <init>(Lcom/google/common/collect/na;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/na;

    iput-object p2, p0, Lcom/google/common/collect/nb;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/nb;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/na;

    iget-object v0, v0, Lcom/google/common/collect/na;->a:Lcom/google/common/collect/mz;

    iget-object v0, v0, Lcom/google/common/collect/mz;->a:Lcom/google/common/collect/mx;

    iget-object v1, p0, Lcom/google/common/collect/nb;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/mx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/nb;->b:Lcom/google/common/collect/na;

    iget-object v0, v0, Lcom/google/common/collect/na;->a:Lcom/google/common/collect/mz;

    iget-object v0, v0, Lcom/google/common/collect/mz;->a:Lcom/google/common/collect/mx;

    iget-object v1, p0, Lcom/google/common/collect/nb;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/mx;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
