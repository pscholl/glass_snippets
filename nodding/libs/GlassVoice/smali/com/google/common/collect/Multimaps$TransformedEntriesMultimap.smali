.class Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformedEntriesMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV2;>;"
    }
.end annotation


# instance fields
.field final fromMultimap:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<TK;TV1;>;"
        }
    .end annotation
.end field

.field final transformer:Lcom/google/common/collect/Maps$EntryTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Maps$EntryTransformer;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .prologue
    .line 1446
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, fromMultimap:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<TK;TV1;>;"
    .local p2, transformer:Lcom/google/common/collect/Maps$EntryTransformer;,"Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;-><init>()V

    .line 1447
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multimap;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    .line 1448
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Maps$EntryTransformer;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    .line 1449
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1472
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 1473
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1478
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 1479
    .local v0, values:Ljava/util/Collection;,"Ljava/util/Collection<TV2;>;"
    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1483
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1488
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 1462
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$1;-><init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformEntries(Ljava/util/Map;Lcom/google/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1569
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$3;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$3;-><init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 1493
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$2;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap$2;-><init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1514
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1519
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1524
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1529
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV2;)Z"
        }
    .end annotation

    .prologue
    .line 1534
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV2;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV2;>;)Z"
        }
    .end annotation

    .prologue
    .line 1544
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, multimap:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<+TK;+TV2;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV2;>;)Z"
        }
    .end annotation

    .prologue
    .line 1539
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV2;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1550
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1555
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV2;>;)",
            "Ljava/util/Collection",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1560
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV2;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1564
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method

.method transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV1;>;)",
            "Ljava/util/Collection",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1452
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap<TK;TV1;TV2;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<TV1;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$ValueFunction;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/Multimaps$ValueFunction;-><init>(Ljava/lang/Object;Lcom/google/common/collect/Maps$EntryTransformer;)V

    .line 1453
    .local v0, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<TV1;TV2;>;"
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1454
    check-cast p2, Ljava/util/List;

    .end local p2           #values:Ljava/util/Collection;,"Ljava/util/Collection<TV1;>;"
    invoke-static {p2, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    .line 1456
    :goto_0
    return-object v1

    .restart local p2       #values:Ljava/util/Collection;,"Ljava/util/Collection<TV1;>;"
    :cond_0
    invoke-static {p2, v0}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method
