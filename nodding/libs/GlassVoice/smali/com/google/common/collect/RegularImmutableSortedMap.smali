.class final Lcom/google/common/collect/RegularImmutableSortedMap;
.super Lcom/google/common/collect/ImmutableSortedMap;
.source "RegularImmutableSortedMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableSortedMap$1;,
        Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient keySet:Lcom/google/common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final transient valueList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableSortedSet",
            "<TK;>;",
            "Lcom/google/common/collect/ImmutableList",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    .local p1, keySet:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TK;>;"
    .local p2, valueList:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 37
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableSortedSet",
            "<TK;>;",
            "Lcom/google/common/collect/ImmutableList",
            "<TV;>;",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    .local p1, keySet:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TK;>;"
    .local p2, valueList:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TV;>;"
    .local p3, descendingMap:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0, p3}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    .line 43
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 44
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableSortedMap;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method private getSubMap(II)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 104
    .end local p0           #this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    :goto_0
    return-object p0

    .line 101
    .restart local p0       #this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    :cond_0
    if-ne p1, p2, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/RegularImmutableSortedMap;->from(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method createDescendingMap()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedMap;

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->descendingSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lcom/google/common/collect/RegularImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v1
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableSortedMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableSortedMap;Lcom/google/common/collect/RegularImmutableSortedMap$1;)V

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
    .line 94
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 95
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    .local p1, toKey:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedMap;->getSubMap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 29
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    .local p1, fromKey:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedMap;->getSubMap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMap;->valueList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 29
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedMap;,"Lcom/google/common/collect/RegularImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
