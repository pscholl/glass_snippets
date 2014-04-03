.class final Lcom/google/common/collect/HashBiMap$Inverse;
.super Ljava/util/AbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Inverse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TV;TK;>;",
        "Lcom/google/common/collect/BiMap",
        "<TV;TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 542
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 487
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$Inverse;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 499
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->clear()V

    .line 500
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 504
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$Inverse$1;-><init>(Lcom/google/common/collect/HashBiMap$Inverse;)V

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)TK;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    const/4 v1, 0x1

    #calls: Lcom/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    invoke-static {v0, p1, p2, v1}, Lcom/google/common/collect/HashBiMap;->access$1100(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method forward()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    #calls: Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$400(Ljava/lang/Object;)I

    move-result v2

    #calls: Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    invoke-static {v1, p1, v2}, Lcom/google/common/collect/HashBiMap;->access$700(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 510
    .local v0, entry:Lcom/google/common/collect/HashBiMap$BiEntry;,"Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$Inverse$InverseKeySet;-><init>(Lcom/google/common/collect/HashBiMap$Inverse;Lcom/google/common/collect/HashBiMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)TK;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    const/4 v1, 0x0

    #calls: Lcom/google/common/collect/HashBiMap;->putInverse(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    invoke-static {v0, p1, p2, v1}, Lcom/google/common/collect/HashBiMap;->access$1100(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    #calls: Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$400(Ljava/lang/Object;)I

    move-result v2

    #calls: Lcom/google/common/collect/HashBiMap;->seekByValue(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;
    invoke-static {v1, p1, v2}, Lcom/google/common/collect/HashBiMap;->access$700(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    .line 525
    .local v0, entry:Lcom/google/common/collect/HashBiMap$BiEntry;,"Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 526
    const/4 v1, 0x0

    .line 529
    :goto_0
    return-object v1

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    #calls: Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/HashBiMap$BiEntry;)V
    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 529
    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 494
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    #getter for: Lcom/google/common/collect/HashBiMap;->size:I
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$1000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 487
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Inverse;->forward()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 635
    .local p0, this:Lcom/google/common/collect/HashBiMap$Inverse;,"Lcom/google/common/collect/HashBiMap<TK;TV;>.Inverse;"
    new-instance v0, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-object v0
.end method
