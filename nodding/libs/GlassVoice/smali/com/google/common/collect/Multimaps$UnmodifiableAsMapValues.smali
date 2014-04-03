.class Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableAsMapValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    .local p1, delegate:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 631
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->delegate:Ljava/util/Collection;

    .line 632
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 666
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->standardContains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
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
    .line 671
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 627
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
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
    .line 636
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 642
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Collection<TV;>;>;"
    new-instance v1, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;-><init>(Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 656
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 661
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
