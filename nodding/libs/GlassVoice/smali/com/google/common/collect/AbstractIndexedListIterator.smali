.class abstract Lcom/google/common/collect/AbstractIndexedListIterator;
.super Lcom/google/common/collect/UnmodifiableListIterator;
.source "AbstractIndexedListIterator.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private position:I

.field private final size:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/collect/AbstractIndexedListIterator;,"Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    .line 54
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .parameter "size"
    .parameter "position"

    .prologue
    .line 67
    .local p0, this:Lcom/google/common/collect/AbstractIndexedListIterator;,"Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableListIterator;-><init>()V

    .line 68
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 69
    iput p1, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->size:I

    .line 70
    iput p2, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    .line 71
    return-void
.end method


# virtual methods
.method protected abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 74
    .local p0, this:Lcom/google/common/collect/AbstractIndexedListIterator;,"Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    iget v1, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 89
    .local p0, this:Lcom/google/common/collect/AbstractIndexedListIterator;,"Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/google/common/collect/AbstractIndexedListIterator;,"Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/google/common/collect/AbstractIndexedListIterator;,"Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lcom/google/common/collect/AbstractIndexedListIterator;,"Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 96
    :cond_0
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 100
    .local p0, this:Lcom/google/common/collect/AbstractIndexedListIterator;,"Lcom/google/common/collect/AbstractIndexedListIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
