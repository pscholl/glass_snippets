.class Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final keyIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

.field valueIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;)V
    .locals 1
    .parameter

    .prologue
    .line 992
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    #getter for: Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    .line 994
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->findValueIteratorAndKey()V

    .line 999
    :goto_0
    return-void

    .line 997
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyModifiableIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method findValueIteratorAndKey()V
    .locals 2

    .prologue
    .line 1002
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1003
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->key:Ljava/lang/Object;

    .line 1004
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->collection:Ljava/util/Collection;

    .line 1005
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    .line 1006
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1009
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 986
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1013
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->findValueIteratorAndKey()V

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1020
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;,"Lcom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1021
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$EntryIterator;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 1025
    return-void
.end method
