.class Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

.field final synthetic val$finalEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractBiMap$EntrySet$1;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;,"Lcom/google/common/collect/AbstractBiMap$EntrySet$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->val$finalEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 317
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;,"Lcom/google/common/collect/AbstractBiMap$EntrySet$1.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;,"Lcom/google/common/collect/AbstractBiMap$EntrySet$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->val$finalEntry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;,"Lcom/google/common/collect/AbstractBiMap$EntrySet$1.1;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 326
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    iget-object v1, v1, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$EntrySet;

    invoke-virtual {v1, p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "entry no longer in map"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 328
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    .end local p1           #value:Ljava/lang/Object;,"TV;"
    :goto_0
    return-object p1

    .line 331
    .restart local p1       #value:Ljava/lang/Object;,"TV;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    iget-object v1, v1, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$EntrySet;

    iget-object v1, v1, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    const-string v4, "value already present: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->val$finalEntry:Ljava/util/Map$Entry;

    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    iget-object v1, v1, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$EntrySet;

    iget-object v1, v1, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/AbstractBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "entry no longer in map"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 334
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->this$2:Lcom/google/common/collect/AbstractBiMap$EntrySet$1;

    iget-object v1, v1, Lcom/google/common/collect/AbstractBiMap$EntrySet$1;->this$1:Lcom/google/common/collect/AbstractBiMap$EntrySet;

    iget-object v1, v1, Lcom/google/common/collect/AbstractBiMap$EntrySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$EntrySet$1$1;->getKey()Ljava/lang/Object;

    move-result-object v3

    #calls: Lcom/google/common/collect/AbstractBiMap;->updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v1, v3, v2, v0, p1}, Lcom/google/common/collect/AbstractBiMap;->access$600(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 335
    goto :goto_0

    .end local v0           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_1
    move v1, v3

    .line 331
    goto :goto_1
.end method
