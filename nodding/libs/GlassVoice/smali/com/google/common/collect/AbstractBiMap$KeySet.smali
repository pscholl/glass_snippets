.class Lcom/google/common/collect/AbstractBiMap$KeySet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 195
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    .line 196
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 187
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    #getter for: Lcom/google/common/collect/AbstractBiMap;->delegate:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 200
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    #calls: Lcom/google/common/collect/AbstractBiMap;->removeFromBothMaps(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->access$300(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
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
    .line 209
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    .local p1, keysToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
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
    .line 214
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    .local p1, keysToRetain:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
