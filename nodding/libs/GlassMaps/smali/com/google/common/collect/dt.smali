.class public Lcom/google/common/collect/dt;
.super Lcom/google/common/collect/de;


# instance fields
.field final a:Lcom/google/common/collect/jc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/dt;-><init>(Lcom/google/common/collect/jc;)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/jc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/de;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/jc;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/de;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/dt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/de;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/lang/Object;)Lcom/google/common/collect/dt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/util/Iterator;)Lcom/google/common/collect/de;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/dt;->b(Ljava/util/Iterator;)Lcom/google/common/collect/dt;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;I)Lcom/google/common/collect/dt;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/jc;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/common/collect/jc;->add(Ljava/lang/Object;I)I

    return-object p0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/common/collect/dt;
    .locals 3

    instance-of v0, p1, Lcom/google/common/collect/jc;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/jc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jc;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/jd;

    invoke-interface {v0}, Lcom/google/common/collect/jd;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/jd;->getCount()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/dt;->a(Ljava/lang/Object;I)Lcom/google/common/collect/dt;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/de;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/de;

    :cond_1
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/common/collect/dt;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/dt;->a:Lcom/google/common/collect/jc;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/jc;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/util/Iterator;)Lcom/google/common/collect/dt;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/de;->a(Ljava/util/Iterator;)Lcom/google/common/collect/de;

    return-object p0
.end method
