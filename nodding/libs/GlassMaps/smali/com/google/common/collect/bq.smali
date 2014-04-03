.class Lcom/google/common/collect/bq;
.super Lcom/google/common/collect/ce;


# instance fields
.field final a:Ljava/util/List;

.field final b:Lcom/google/common/collect/bo;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/common/collect/bo;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ce;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/common/collect/bq;->a:Ljava/util/List;

    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bo;

    iput-object v0, p0, Lcom/google/common/collect/bq;->b:Lcom/google/common/collect/bo;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bq;->a:Ljava/util/List;

    return-object v0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bq;->b:Lcom/google/common/collect/bo;

    invoke-interface {v0, p2}, Lcom/google/common/collect/bo;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/bq;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bq;->b:Lcom/google/common/collect/bo;

    invoke-interface {v0, p1}, Lcom/google/common/collect/bo;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/bq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/bq;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/bq;->b:Lcom/google/common/collect/bo;

    invoke-static {p2, v1}, Lcom/google/common/collect/Constraints;->b(Ljava/util/Collection;Lcom/google/common/collect/bo;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/bq;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/bq;->b:Lcom/google/common/collect/bo;

    invoke-static {p1, v1}, Lcom/google/common/collect/Constraints;->b(Ljava/util/Collection;Lcom/google/common/collect/bo;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bq;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic delegate()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bq;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/bq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bq;->b:Lcom/google/common/collect/bo;

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/ListIterator;Lcom/google/common/collect/bo;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/bq;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bq;->b:Lcom/google/common/collect/bo;

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/ListIterator;Lcom/google/common/collect/bo;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bq;->b:Lcom/google/common/collect/bo;

    invoke-interface {v0, p2}, Lcom/google/common/collect/bo;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/bq;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/bq;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bq;->b:Lcom/google/common/collect/bo;

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/List;Lcom/google/common/collect/bo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
