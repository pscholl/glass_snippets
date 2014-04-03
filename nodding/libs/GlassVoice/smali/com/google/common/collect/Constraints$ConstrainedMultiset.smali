.class Lcom/google/common/collect/Constraints$ConstrainedMultiset;
.super Lcom/google/common/collect/ForwardingMultiset;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstrainedMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final constraint:Lcom/google/common/collect/Constraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private delegate:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Constraint;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedMultiset;,"Lcom/google/common/collect/Constraints$ConstrainedMultiset<TE;>;"
    .local p1, delegate:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TE;>;"
    .local p2, constraint:Lcom/google/common/collect/Constraint;,"Lcom/google/common/collect/Constraint<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMultiset;-><init>()V

    .line 377
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    iput-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->delegate:Lcom/google/common/collect/Multiset;

    .line 378
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Constraint;

    iput-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->constraint:Lcom/google/common/collect/Constraint;

    .line 379
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter "occurrences"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedMultiset;,"Lcom/google/common/collect/Constraints$ConstrainedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->constraint:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->delegate:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedMultiset;,"Lcom/google/common/collect/Constraints$ConstrainedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->standardAdd(Ljava/lang/Object;)Z

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
    .line 393
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedMultiset;,"Lcom/google/common/collect/Constraints$ConstrainedMultiset<TE;>;"
    .local p1, elements:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->delegate:Lcom/google/common/collect/Multiset;

    iget-object v1, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->constraint:Lcom/google/common/collect/Constraint;

    #calls: Lcom/google/common/collect/Constraints;->checkElements(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;
    invoke-static {p1, v1}, Lcom/google/common/collect/Constraints;->access$000(Ljava/util/Collection;Lcom/google/common/collect/Constraint;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected delegate()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedMultiset;,"Lcom/google/common/collect/Constraints$ConstrainedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->delegate:Lcom/google/common/collect/Multiset;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedMultiset;,"Lcom/google/common/collect/Constraints$ConstrainedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 372
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedMultiset;,"Lcom/google/common/collect/Constraints$ConstrainedMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedMultiset;,"Lcom/google/common/collect/Constraints$ConstrainedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->constraint:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->delegate:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1
    .parameter
    .parameter "oldCount"
    .parameter "newCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, this:Lcom/google/common/collect/Constraints$ConstrainedMultiset;,"Lcom/google/common/collect/Constraints$ConstrainedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->constraint:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedMultiset;->delegate:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
