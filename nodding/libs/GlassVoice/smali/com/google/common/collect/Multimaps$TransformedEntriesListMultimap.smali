.class final Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;
.super Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransformedEntriesListMultimap"
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
        "Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap",
        "<TK;TV1;TV2;>;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV2;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ListMultimap;Lcom/google/common/collect/Maps$EntryTransformer;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .prologue
    .line 1692
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap<TK;TV1;TV2;>;"
    .local p1, fromMultimap:Lcom/google/common/collect/ListMultimap;,"Lcom/google/common/collect/ListMultimap<TK;TV1;>;"
    .local p2, transformer:Lcom/google/common/collect/Maps$EntryTransformer;,"Lcom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Maps$EntryTransformer;)V

    .line 1693
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1687
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap<TK;TV1;TV2;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1706
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap<TK;TV1;TV2;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1687
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap<TK;TV1;TV2;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1712
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap<TK;TV1;TV2;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->fromMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1687
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap<TK;TV1;TV2;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV2;>;)",
            "Ljava/util/List",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1717
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap<TK;TV1;TV2;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV2;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1687
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap<TK;TV1;TV2;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;->transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV1;>;)",
            "Ljava/util/List",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1697
    .local p0, this:Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;,"Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap<TK;TV1;TV2;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<TV1;>;"
    check-cast p2, Ljava/util/List;

    .end local p2           #values:Ljava/util/Collection;,"Ljava/util/Collection<TV1;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap$1;-><init>(Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
