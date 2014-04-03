.class abstract Lcom/google/common/collect/Multisets$ElementSet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 915
    .local p0, this:Lcom/google/common/collect/Multisets$ElementSet;,"Lcom/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 920
    .local p0, this:Lcom/google/common/collect/Multisets$ElementSet;,"Lcom/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->clear()V

    .line 921
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 925
    .local p0, this:Lcom/google/common/collect/Multisets$ElementSet;,"Lcom/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

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
    .line 930
    .local p0, this:Lcom/google/common/collect/Multisets$ElementSet;,"Lcom/google/common/collect/Multisets$ElementSet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 935
    .local p0, this:Lcom/google/common/collect/Multisets$ElementSet;,"Lcom/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 940
    .local p0, this:Lcom/google/common/collect/Multisets$ElementSet;,"Lcom/google/common/collect/Multisets$ElementSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/Multisets$ElementSet$1;

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multisets$ElementSet$1;-><init>(Lcom/google/common/collect/Multisets$ElementSet;Ljava/util/Iterator;)V

    return-object v0
.end method

.method abstract multiset()Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 951
    .local p0, this:Lcom/google/common/collect/Multisets$ElementSet;,"Lcom/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 952
    .local v0, count:I
    if-lez v0, :cond_0

    .line 953
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    .line 954
    const/4 v1, 0x1

    .line 956
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 961
    .local p0, this:Lcom/google/common/collect/Multisets$ElementSet;,"Lcom/google/common/collect/Multisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$ElementSet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
