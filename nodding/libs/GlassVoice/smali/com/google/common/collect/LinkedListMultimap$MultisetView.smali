.class Lcom/google/common/collect/LinkedListMultimap$MultisetView;
.super Lcom/google/common/collect/AbstractMultiset;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultisetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultiset",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 758
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 758
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 2
    .parameter "element"

    .prologue
    .line 767
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;
    invoke-static {v1}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;

    .line 768
    .local v0, keyList:Lcom/google/common/collect/LinkedListMultimap$KeyList;,"Lcom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    goto :goto_0
.end method

.method distinctElements()I
    .locals 1

    .prologue
    .line 793
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 821
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;

    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 798
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;

    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v1, v2}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 4
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "occurrences"
    .end parameter

    .prologue
    .line 809
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    if-ltz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 810
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->count(Ljava/lang/Object;)I

    move-result v1

    .line 811
    .local v1, oldCount:I
    new-instance v2, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    iget-object v3, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v2, v3, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .local v2, values:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    move v0, p2

    .line 812
    .end local p2
    .local v0, occurrences:I
    :goto_1
    add-int/lit8 p2, v0, -0x1

    .end local v0           #occurrences:I
    .restart local p2
    if-lez v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 813
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 814
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v0, p2

    .end local p2
    .restart local v0       #occurrences:I
    goto :goto_1

    .line 809
    .end local v0           #occurrences:I
    .end local v1           #oldCount:I
    .end local v2           #values:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    .restart local p2
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 816
    .restart local v1       #oldCount:I
    .restart local v2       #values:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 762
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$MultisetView;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->size:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$1000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    return v0
.end method
