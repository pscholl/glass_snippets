.class abstract Lcom/google/common/collect/Multimaps$AsMap;
.super Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$AsMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$ImprovedAbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2027
    .local p0, this:Lcom/google/common/collect/Multimaps$AsMap;,"Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    .line 2044
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2094
    .local p0, this:Lcom/google/common/collect/Multimaps$AsMap;,"Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 2095
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 2089
    .local p0, this:Lcom/google/common/collect/Multimaps$AsMap;,"Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntrySet()Ljava/util/Set;
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
    .line 2037
    .local p0, this:Lcom/google/common/collect/Multimaps$AsMap;,"Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;-><init>(Lcom/google/common/collect/Multimaps$AsMap;)V

    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2027
    .local p0, this:Lcom/google/common/collect/Multimaps$AsMap;,"Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
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
    .line 2069
    .local p0, this:Lcom/google/common/collect/Multimaps$AsMap;,"Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2084
    .local p0, this:Lcom/google/common/collect/Multimaps$AsMap;,"Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

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
    .line 2079
    .local p0, this:Lcom/google/common/collect/Multimaps$AsMap;,"Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method abstract multimap()Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2027
    .local p0, this:Lcom/google/common/collect/Multimaps$AsMap;,"Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
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
    .line 2074
    .local p0, this:Lcom/google/common/collect/Multimaps$AsMap;,"Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeValuesForKey(Ljava/lang/Object;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 2041
    .local p0, this:Lcom/google/common/collect/Multimaps$AsMap;,"Lcom/google/common/collect/Multimaps$AsMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$AsMap;->multimap()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    .line 2042
    return-void
.end method

.method public abstract size()I
.end method
