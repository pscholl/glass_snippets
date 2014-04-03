.class Lcom/google/common/collect/FilteredEntryMultimap$AsMap;
.super Ljava/util/AbstractMap;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/FilteredEntryMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/FilteredEntryMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;,"Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 157
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;,"Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/FilteredEntryMultimap;->clear()V

    .line 158
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 152
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;,"Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;,"Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$2;-><init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;,"Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 5
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;,"Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    const/4 v2, 0x0

    .line 162
    iget-object v3, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object v3, v3, Lcom/google/common/collect/FilteredEntryMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 163
    .local v1, result:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v2

    .line 168
    :cond_1
    move-object v0, p1

    .line 169
    .local v0, k:Ljava/lang/Object;,"TK;"
    new-instance v3, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;

    iget-object v4, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-direct {v3, v4, v0}, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;-><init>(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/google/common/collect/FilteredEntryMultimap;->filterCollection(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    .line 170
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v1

    goto :goto_0
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
    .line 204
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;,"Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->keySet:Ljava/util/Set;

    .line 205
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1;

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1;-><init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap;)V

    iput-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->keySet:Ljava/util/Set;

    .line 229
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;,"Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 7
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;,"Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    const/4 v5, 0x0

    .line 175
    iget-object v6, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object v6, v6, Lcom/google/common/collect/FilteredEntryMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    invoke-interface {v6}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 176
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v5

    .line 181
    :cond_1
    move-object v2, p1

    .line 182
    .local v2, k:Ljava/lang/Object;,"TK;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 183
    .local v3, result:Ljava/util/List;,"Ljava/util/List<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 184
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 186
    .local v4, v:Ljava/lang/Object;,"TV;"
    iget-object v6, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    #calls: Lcom/google/common/collect/FilteredEntryMultimap;->satisfies(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v6, v2, v4}, Lcom/google/common/collect/FilteredEntryMultimap;->access$000(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 188
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v4           #v:Ljava/lang/Object;,"TV;"
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 193
    iget-object v5, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object v5, v5, Lcom/google/common/collect/FilteredEntryMultimap;->unfiltered:Lcom/google/common/collect/Multimap;

    instance-of v5, v5, Lcom/google/common/collect/SetMultimap;

    if-eqz v5, :cond_4

    .line 194
    invoke-static {v3}, Lcom/google/common/collect/Sets;->newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    goto :goto_0

    .line 196
    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, this:Lcom/google/common/collect/FilteredEntryMultimap$AsMap;,"Lcom/google/common/collect/FilteredEntryMultimap<TK;TV;>.AsMap;"
    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$3;-><init>(Lcom/google/common/collect/FilteredEntryMultimap$AsMap;)V

    return-object v0
.end method
