.class Lcom/google/common/collect/AbstractBiMap$EntrySet$1;
.super Ljava/lang/Object;
.source "AbstractBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractBiMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/AbstractBiMap$EntrySet;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractBiMap$EntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;,"Lcom/google/common/collect/AbstractBiMap$EntrySet.1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$EntrySet;

    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 310
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;,"Lcom/google/common/collect/AbstractBiMap$EntrySet.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;,"Lcom/google/common/collect/AbstractBiMap$EntrySet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->next()Ljava/util/Map$Entry;

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
    .line 314
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;,"Lcom/google/common/collect/AbstractBiMap$EntrySet.1;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->entry:Ljava/util/Map$Entry;

    .line 315
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->entry:Ljava/util/Map$Entry;

    .line 317
    .local v0, finalEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v1, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;-><init>(Lcom/google/common/collect/AbstractBiMap$EntrySet$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 341
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;,"Lcom/google/common/collect/AbstractBiMap$EntrySet.1;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->entry:Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 342
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 343
    .local v0, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 344
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$EntrySet;

    iget-object v1, v1, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    #calls: Lcom/google/common/collect/AbstractBiMap;->removeFromInverseMap(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractBiMap;->access$700(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)V

    .line 345
    return-void

    .line 341
    .end local v0           #value:Ljava/lang/Object;,"TV;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
