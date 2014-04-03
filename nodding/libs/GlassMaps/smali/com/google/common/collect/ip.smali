.class final Lcom/google/common/collect/ip;
.super Lcom/google/common/collect/ji;


# instance fields
.field final synthetic a:Lcom/google/common/collect/im;


# direct methods
.method constructor <init>(Lcom/google/common/collect/im;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ip;->a:Lcom/google/common/collect/im;

    invoke-direct {p0}, Lcom/google/common/collect/ji;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/jc;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ip;->a:Lcom/google/common/collect/im;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/common/collect/jd;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/jd;

    iget-object v0, p0, Lcom/google/common/collect/ip;->a:Lcom/google/common/collect/im;

    iget-object v0, v0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/jd;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/jd;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ip;->a:Lcom/google/common/collect/im;

    iget-object v0, v0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ip;->a:Lcom/google/common/collect/im;

    invoke-virtual {v0}, Lcom/google/common/collect/im;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/common/collect/jd;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/jd;

    iget-object v0, p0, Lcom/google/common/collect/ip;->a:Lcom/google/common/collect/im;

    iget-object v0, v0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/jd;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/jd;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ip;->a:Lcom/google/common/collect/im;

    invoke-virtual {v0}, Lcom/google/common/collect/im;->distinctElements()I

    move-result v0

    return v0
.end method
