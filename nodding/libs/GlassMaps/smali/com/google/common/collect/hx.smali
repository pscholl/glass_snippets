.class final Lcom/google/common/collect/hx;
.super Lcom/google/common/collect/hq;


# instance fields
.field final synthetic a:Lcom/google/common/collect/hw;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/hx;->a:Lcom/google/common/collect/hw;

    invoke-direct {p0}, Lcom/google/common/collect/hq;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/hx;->a:Lcom/google/common/collect/hw;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/hy;

    iget-object v1, p0, Lcom/google/common/collect/hx;->a:Lcom/google/common/collect/hw;

    iget-object v1, v1, Lcom/google/common/collect/hw;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/hy;-><init>(Lcom/google/common/collect/hx;Ljava/util/Iterator;)V

    return-object v0
.end method
