.class final Lcom/google/common/collect/ij;
.super Lcom/google/common/collect/hq;


# instance fields
.field final synthetic a:Lcom/google/common/collect/ii;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ii;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    invoke-direct {p0}, Lcom/google/common/collect/hq;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    invoke-virtual {v0}, Lcom/google/common/collect/ii;->c()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ij;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Lcom/google/common/collect/ii;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ii;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
