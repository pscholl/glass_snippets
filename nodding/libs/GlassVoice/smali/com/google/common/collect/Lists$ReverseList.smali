.class Lcom/google/common/collect/Lists$ReverseList;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final forwardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 884
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    .local p1, forwardList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 885
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    .line 886
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/Lists$ReverseList;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 881
    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v0

    return v0
.end method

.method private reverseIndex(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 893
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->size()I

    move-result v0

    .line 894
    .local v0, size:I
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 895
    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, p1

    return v1
.end method

.method private reversePosition(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 899
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->size()I

    move-result v0

    .line 900
    .local v0, size:I
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 901
    sub-int v1, v0, p1

    return v1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 906
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    .local p2, element:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 907
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 911
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 912
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 946
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

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
    .line 951
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 931
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reverseIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getForwardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 889
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 962
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v1, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 963
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/common/collect/Lists$ReverseList;->reverseIndex(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 936
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 974
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 968
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v1, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 969
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/common/collect/Lists$ReverseList;->reverseIndex(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 979
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v1

    .line 980
    .local v1, start:I
    iget-object v2, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 981
    .local v0, forwardIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TT;>;"
    new-instance v2, Lcom/google/common/collect/Lists$ReverseList$1;

    invoke-direct {v2, p0, v0}, Lcom/google/common/collect/Lists$ReverseList$1;-><init>(Lcom/google/common/collect/Lists$ReverseList;Ljava/util/ListIterator;)V

    return-object v2
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 916
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reverseIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeRange(II)V
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 921
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Lists$ReverseList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 922
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 926
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    .local p2, element:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reverseIndex(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 941
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 956
    .local p0, this:Lcom/google/common/collect/Lists$ReverseList;,"Lcom/google/common/collect/Lists$ReverseList<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$ReverseList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 957
    iget-object v0, p0, Lcom/google/common/collect/Lists$ReverseList;->forwardList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/Lists$ReverseList;->reversePosition(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
