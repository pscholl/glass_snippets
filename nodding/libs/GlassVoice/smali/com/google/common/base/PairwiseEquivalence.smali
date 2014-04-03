.class final Lcom/google/common/base/PairwiseEquivalence;
.super Lcom/google/common/base/Equivalence;
.source "PairwiseEquivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Equivalence",
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final elementEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Equivalence;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/google/common/base/PairwiseEquivalence;,"Lcom/google/common/base/PairwiseEquivalence<TT;>;"
    .local p1, elementEquivalence:Lcom/google/common/base/Equivalence;,"Lcom/google/common/base/Equivalence<-TT;>;"
    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    .line 33
    return-void
.end method


# virtual methods
.method protected doEquivalent(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/base/PairwiseEquivalence;,"Lcom/google/common/base/PairwiseEquivalence<TT;>;"
    .local p1, iterableA:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p2, iterableB:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    const/4 v2, 0x0

    .line 37
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 38
    .local v0, iteratorA:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    .local v1, iteratorB:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    iget-object v3, p0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    .local p0, this:Lcom/google/common/base/PairwiseEquivalence;,"Lcom/google/common/base/PairwiseEquivalence<TT;>;"
    check-cast p1, Ljava/lang/Iterable;

    .end local p1
    check-cast p2, Ljava/lang/Iterable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/PairwiseEquivalence;->doEquivalent(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method protected doHash(Ljava/lang/Iterable;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/base/PairwiseEquivalence;,"Lcom/google/common/base/PairwiseEquivalence<TT;>;"
    .local p1, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    const v1, 0x13381

    .line 52
    .local v1, hash:I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, element:Ljava/lang/Object;,"TT;"
    mul-int/lit16 v3, v1, 0x616f

    iget-object v4, p0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, v0}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v4

    add-int v1, v3, v4

    goto :goto_0

    .line 55
    .end local v0           #element:Ljava/lang/Object;,"TT;"
    :cond_0
    return v1
.end method

.method protected bridge synthetic doHash(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    .local p0, this:Lcom/google/common/base/PairwiseEquivalence;,"Lcom/google/common/base/PairwiseEquivalence<TT;>;"
    check-cast p1, Ljava/lang/Iterable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/base/PairwiseEquivalence;->doHash(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 60
    .local p0, this:Lcom/google/common/base/PairwiseEquivalence;,"Lcom/google/common/base/PairwiseEquivalence<TT;>;"
    instance-of v1, p1, Lcom/google/common/base/PairwiseEquivalence;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 61
    check-cast v0, Lcom/google/common/base/PairwiseEquivalence;

    .line 62
    .local v0, that:Lcom/google/common/base/PairwiseEquivalence;,"Lcom/google/common/base/PairwiseEquivalence<*>;"
    iget-object v1, p0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v2, v0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 65
    .end local v0           #that:Lcom/google/common/base/PairwiseEquivalence;,"Lcom/google/common/base/PairwiseEquivalence<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 70
    .local p0, this:Lcom/google/common/base/PairwiseEquivalence;,"Lcom/google/common/base/PairwiseEquivalence<TT;>;"
    iget-object v0, p0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x46a3eb07

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    .local p0, this:Lcom/google/common/base/PairwiseEquivalence;,"Lcom/google/common/base/PairwiseEquivalence<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/PairwiseEquivalence;->elementEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pairwise()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
