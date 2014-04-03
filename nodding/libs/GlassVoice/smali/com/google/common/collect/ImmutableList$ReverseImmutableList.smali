.class Lcom/google/common/collect/ImmutableList$ReverseImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient forwardList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    .local p1, backingList:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 486
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    .line 487
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    .line 488
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v0

    return v0
.end method

.method private reverseIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 491
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private reversePosition(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 495
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 505
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

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
    .line 510
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    .local p1, targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 533
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 515
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 516
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

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
    .line 573
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 578
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 481
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 521
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 522
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget v1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 539
    iget-object v1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    .line 540
    .local v0, forward:Lcom/google/common/collect/UnmodifiableListIterator;,"Lcom/google/common/collect/UnmodifiableListIterator<TE;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList$1;-><init>(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;Lcom/google/common/collect/UnmodifiableListIterator;)V

    return-object v1
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 481
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->listIterator()Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 481
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 568
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 527
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 528
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 481
    .local p0, this:Lcom/google/common/collect/ImmutableList$ReverseImmutableList;,"Lcom/google/common/collect/ImmutableList$ReverseImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
