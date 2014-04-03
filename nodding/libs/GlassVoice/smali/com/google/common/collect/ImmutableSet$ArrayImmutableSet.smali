.class abstract Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArrayImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter "elements"

    .prologue
    .line 424
    .local p0, this:Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 425
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    .line 426
    return-void
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    .local p1, targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 454
    if-ne p1, p0, :cond_1

    .line 468
    .end local p1           #targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :cond_0
    :goto_0
    return v4

    .line 457
    .restart local p1       #targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :cond_1
    instance-of v6, p1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;

    if-nez v6, :cond_2

    .line 458
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    goto :goto_0

    .line 460
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v7

    if-le v6, v7, :cond_3

    move v4, v5

    .line 461
    goto :goto_0

    .line 463
    :cond_3
    check-cast p1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;

    .end local p1           #targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 464
    .local v3, target:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 465
    goto :goto_0

    .line 463
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, this:Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableAsList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableAsList;-><init>(Lcom/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 434
    .local p0, this:Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 473
    .local p0, this:Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, this:Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 420
    .local p0, this:Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 429
    .local p0, this:Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 444
    .local p0, this:Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, this:Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;,"Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
