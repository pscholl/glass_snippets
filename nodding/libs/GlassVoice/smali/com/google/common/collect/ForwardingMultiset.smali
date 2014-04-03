.class public abstract Lcom/google/common/collect/ForwardingMultiset;
.super Lcom/google/common/collect/ForwardingCollection;
.source "ForwardingMultiset.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ForwardingMultiset$StandardElementSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

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
    .line 65
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .parameter "element"

    .prologue
    .line 61
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 82
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 87
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .parameter "element"
    .parameter "occurrences"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
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
    .line 91
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

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
    .line 95
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected standardAdd(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ForwardingMultiset;->add(Ljava/lang/Object;I)I

    .line 148
    return v0
.end method

.method protected standardAddAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, elementsToAdd:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->addAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardClear()V
    .locals 1

    .prologue
    .line 119
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->clear(Ljava/util/Iterator;)V

    .line 120
    return-void
.end method

.method protected standardContains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 107
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected standardCount(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 132
    .local v0, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    .line 136
    .end local v0           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected standardEquals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 284
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->equalsImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected standardHashCode()I
    .locals 1

    .prologue
    .line 295
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected standardIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected standardRemove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "element"

    .prologue
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ForwardingMultiset;->remove(Ljava/lang/Object;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected standardRemoveAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, elementsToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->removeAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardRetainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, elementsToRetain:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->retainAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected standardSetCount(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Multisets;->setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method protected standardSetCount(Ljava/lang/Object;II)Z
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
    .line 226
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/Multisets;->setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method protected standardSize()I
    .locals 1

    .prologue
    .line 272
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->sizeImpl(Lcom/google/common/collect/Multiset;)I

    move-result v0

    return v0
.end method

.method protected standardToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    .local p0, this:Lcom/google/common/collect/ForwardingMultiset;,"Lcom/google/common/collect/ForwardingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
