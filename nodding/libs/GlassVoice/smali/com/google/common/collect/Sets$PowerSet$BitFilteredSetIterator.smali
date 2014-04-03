.class final Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets$PowerSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BitFilteredSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final input:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field remainingSetBits:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;I)V
    .locals 0
    .parameter
    .parameter "allSetBits"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 1224
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;,"Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator<TE;>;"
    .local p1, input:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 1225
    iput-object p1, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->input:Lcom/google/common/collect/ImmutableList;

    .line 1226
    iput p2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->remainingSetBits:I

    .line 1227
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1230
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;,"Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator<TE;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->remainingSetBits:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1234
    .local p0, this:Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;,"Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator<TE;>;"
    iget v2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->remainingSetBits:I

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 1235
    .local v1, index:I
    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 1236
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1239
    :cond_0
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 1240
    .local v0, currentElementMask:I
    iget v2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->remainingSetBits:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->remainingSetBits:I

    .line 1241
    iget-object v2, p0, Lcom/google/common/collect/Sets$PowerSet$BitFilteredSetIterator;->input:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
