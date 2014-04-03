.class Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;
.super Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$MapMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ImprovedAbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 1281
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMap;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1291
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 2
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
    .line 1284
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMap;"
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;

    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMapEntries;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1281
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter "key"
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
    .line 1297
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMap;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 1298
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1281
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter "key"
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
    .line 1303
    .local p0, this:Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;,"Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>.AsMap;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap$AsMap;->this$0:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 1304
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_0
    return-object v0
.end method
