.class abstract Lcom/google/common/collect/DescendingMultiset;
.super Lcom/google/common/collect/ForwardingMultiset;
.source "DescendingMultiset.java"

# interfaces
.implements Lcom/google/common/collect/SortedMultiset;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMultiset",
        "<TE;>;",
        "Lcom/google/common/collect/SortedMultiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private transient elementSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/DescendingMultiset;->comparator:Ljava/util/Comparator;

    .line 40
    .local v0, result:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .end local v0           #result:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    iput-object v0, p0, Lcom/google/common/collect/DescendingMultiset;->comparator:Ljava/util/Comparator;

    .line 43
    :cond_0
    return-object v0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/DescendingMultiset$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/DescendingMultiset$1;-><init>(Lcom/google/common/collect/DescendingMultiset;)V

    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/DescendingMultiset;->elementSet:Ljava/util/SortedSet;

    .line 51
    .local v0, result:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/google/common/collect/SortedMultisets$ElementSet;

    .end local v0           #result:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/SortedMultisets$ElementSet;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/DescendingMultiset;->elementSet:Ljava/util/SortedSet;

    .line 54
    :cond_0
    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/DescendingMultiset;->entrySet:Ljava/util/Set;

    .line 103
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/DescendingMultiset;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method abstract forwardMultiset()Lcom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .parameter
    .parameter "boundType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->pollLastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .parameter
    .parameter "fromBoundType"
    .parameter
    .parameter "toBoundType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            "TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p3, toElement:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Lcom/google/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .parameter
    .parameter "boundType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->forwardMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->descendingMultiset()Lcom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->standardToArray()[Ljava/lang/Object;

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
    .line 137
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/DescendingMultiset;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    .local p0, this:Lcom/google/common/collect/DescendingMultiset;,"Lcom/google/common/collect/DescendingMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
