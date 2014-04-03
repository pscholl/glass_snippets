.class Lcom/google/common/collect/Constraints$ConstrainedSortedSet;
.super Lcom/google/common/collect/ForwardingSortedSet;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstrainedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingSortedSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final constraint:Lcom/google/common/collect/Constraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;"
        }
    .end annotation
.end field

.field final delegate:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,"Lcom/google/common/collect/Constraints$ConstrainedSortedSet<TE;>;"
    .local p1, delegate:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    .local p2, constraint:Lcom/google/common/collect/Constraint;,"Lcom/google/common/collect/Constraint<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSortedSet;-><init>()V

    .line 178
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    iput-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    .line 179
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Constraint;

    iput-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    .line 180
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,"Lcom/google/common/collect/Constraints$ConstrainedSortedSet<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,"Lcom/google/common/collect/Constraints$ConstrainedSortedSet<TE;>;"
    .local p1, elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    iget-object v1, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    #calls: Lcom/google/common/collect/Constraints;->checkElements(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    invoke-static {p1, v1}, Lcom/google/common/collect/Constraints;->access$000(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,"Lcom/google/common/collect/Constraints$ConstrainedSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 173
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,"Lcom/google/common/collect/Constraints$ConstrainedSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 173
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,"Lcom/google/common/collect/Constraints$ConstrainedSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,"Lcom/google/common/collect/Constraints$ConstrainedSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,"Lcom/google/common/collect/Constraints$ConstrainedSortedSet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->constrainedSortedSet(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,"Lcom/google/common/collect/Constraints$ConstrainedSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p2, toElement:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->constrainedSortedSet(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedSortedSet;,"Lcom/google/common/collect/Constraints$ConstrainedSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->delegate:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Constraints$ConstrainedSortedSet;->constraint:Lcom/google/common/collect/Constraint;

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->constrainedSortedSet(Ljava/util/SortedSet;Lcom/google/common/collect/Constraint;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
