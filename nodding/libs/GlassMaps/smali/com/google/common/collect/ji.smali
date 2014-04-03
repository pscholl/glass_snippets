.class abstract Lcom/google/common/collect/ji;
.super Lcom/google/common/collect/kl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/kl;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/jc;
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ji;->a()Lcom/google/common/collect/jc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jc;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/common/collect/jd;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/common/collect/jd;

    invoke-interface {p1}, Lcom/google/common/collect/jd;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/ji;->a()Lcom/google/common/collect/jc;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/jd;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/jc;->count(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/jd;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/common/collect/jd;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/common/collect/jd;

    invoke-interface {p1}, Lcom/google/common/collect/jd;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/jd;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ji;->a()Lcom/google/common/collect/jc;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Lcom/google/common/collect/jc;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    :cond_0
    return v0
.end method
