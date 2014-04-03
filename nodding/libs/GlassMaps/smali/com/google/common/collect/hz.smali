.class final Lcom/google/common/collect/hz;
.super Lcom/google/common/collect/aa;


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/hy;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hy;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/hz;->b:Lcom/google/common/collect/hy;

    iput-object p2, p0, Lcom/google/common/collect/hz;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/hz;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/hz;->b:Lcom/google/common/collect/hy;

    iget-object v0, v0, Lcom/google/common/collect/hy;->a:Lcom/google/common/collect/hx;

    iget-object v0, v0, Lcom/google/common/collect/hx;->a:Lcom/google/common/collect/hw;

    iget-object v0, v0, Lcom/google/common/collect/hw;->b:Lcom/google/common/collect/hr;

    iget-object v1, p0, Lcom/google/common/collect/hz;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/hz;->a:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/hr;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
