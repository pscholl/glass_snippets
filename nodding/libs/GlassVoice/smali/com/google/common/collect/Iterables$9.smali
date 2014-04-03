.class final Lcom/google/common/collect/Iterables$9;
.super Lcom/google/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$numberToSkip:I


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 863
    iput p1, p0, Lcom/google/common/collect/Iterables$9;->val$numberToSkip:I

    iput-object p2, p0, Lcom/google/common/collect/Iterables$9;->val$list:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 867
    iget v0, p0, Lcom/google/common/collect/Iterables$9;->val$numberToSkip:I

    iget-object v1, p0, Lcom/google/common/collect/Iterables$9;->val$list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterables$9;->val$list:Ljava/util/List;

    iget v1, p0, Lcom/google/common/collect/Iterables$9;->val$numberToSkip:I

    iget-object v2, p0, Lcom/google/common/collect/Iterables$9;->val$list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method
