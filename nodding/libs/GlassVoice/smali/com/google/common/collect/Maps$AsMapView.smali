.class Lcom/google/common/collect/Maps$AsMapView;
.super Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsMapView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$ImprovedAbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final function:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/base/Function;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, this:Lcom/google/common/collect/Maps$AsMapView;,"Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    .local p2, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    .line 707
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    .line 708
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->function:Lcom/google/common/base/Function;

    .line 709
    return-void
.end method


# virtual methods
.method backingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, this:Lcom/google/common/collect/Maps$AsMapView;,"Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 759
    .local p0, this:Lcom/google/common/collect/Maps$AsMapView;,"Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 760
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 730
    .local p0, this:Lcom/google/common/collect/Maps$AsMapView;,"Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 764
    .local p0, this:Lcom/google/common/collect/Maps$AsMapView;,"Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$AsMapView$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$AsMapView$1;-><init>(Lcom/google/common/collect/Maps$AsMapView;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, this:Lcom/google/common/collect/Maps$AsMapView;,"Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    move-object v0, p1

    .line 739
    .local v0, k:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AsMapView;->function:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 741
    .end local v0           #k:Ljava/lang/Object;,"TK;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

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
    .line 714
    .local p0, this:Lcom/google/common/collect/Maps$AsMapView;,"Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    #calls: Lcom/google/common/collect/Maps;->removeOnlySet(Ljava/util/Set;)Ljava/util/Set;
    invoke-static {v0}, Lcom/google/common/collect/Maps;->access$100(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 747
    .local p0, this:Lcom/google/common/collect/Maps$AsMapView;,"Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    move-object v0, p1

    .line 751
    .local v0, k:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AsMapView;->function:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 753
    .end local v0           #k:Ljava/lang/Object;,"TK;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 725
    .local p0, this:Lcom/google/common/collect/Maps$AsMapView;,"Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 720
    .local p0, this:Lcom/google/common/collect/Maps$AsMapView;,"Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/Maps$AsMapView;->function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
