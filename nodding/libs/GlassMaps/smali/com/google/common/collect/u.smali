.class final Lcom/google/common/collect/u;
.super Lcom/google/common/collect/s;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic d:Lcom/google/common/collect/t;


# direct methods
.method constructor <init>(Lcom/google/common/collect/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/t;

    invoke-direct {p0, p1}, Lcom/google/common/collect/s;-><init>(Lcom/google/common/collect/r;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/t;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/t;

    invoke-virtual {p1}, Lcom/google/common/collect/t;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/s;-><init>(Lcom/google/common/collect/r;Ljava/util/Iterator;)V

    return-void
.end method

.method private b()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/u;->a()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/t;

    invoke-virtual {v0}, Lcom/google/common/collect/t;->isEmpty()Z

    move-result v0

    invoke-direct {p0}, Lcom/google/common/collect/u;->b()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/t;

    iget-object v1, v1, Lcom/google/common/collect/t;->g:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$208(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/u;->d:Lcom/google/common/collect/t;

    invoke-virtual {v0}, Lcom/google/common/collect/t;->d()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/u;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/u;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/u;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/u;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/u;->b()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
