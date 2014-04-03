.class final Lcom/google/common/collect/bu;
.super Lcom/google/common/collect/cm;


# instance fields
.field final a:Ljava/util/SortedSet;

.field final b:Lcom/google/common/collect/bo;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Lcom/google/common/collect/bo;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/cm;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    iput-object v0, p0, Lcom/google/common/collect/bu;->a:Ljava/util/SortedSet;

    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bo;

    iput-object v0, p0, Lcom/google/common/collect/bu;->b:Lcom/google/common/collect/bo;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/SortedSet;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bu;->a:Ljava/util/SortedSet;

    return-object v0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/bu;->b:Lcom/google/common/collect/bo;

    invoke-interface {v0, p1}, Lcom/google/common/collect/bo;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/bu;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/bu;->a:Ljava/util/SortedSet;

    iget-object v1, p0, Lcom/google/common/collect/bu;->b:Lcom/google/common/collect/bo;

    invoke-static {p1, v1}, Lcom/google/common/collect/Constraints;->b(Ljava/util/Collection;Lcom/google/common/collect/bo;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bu;->a()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bu;->a()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/bu;->a()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/bu;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bu;->b:Lcom/google/common/collect/bo;

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/SortedSet;Lcom/google/common/collect/bo;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/bu;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bu;->b:Lcom/google/common/collect/bo;

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/SortedSet;Lcom/google/common/collect/bo;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/bu;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/bu;->b:Lcom/google/common/collect/bo;

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/SortedSet;Lcom/google/common/collect/bo;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
