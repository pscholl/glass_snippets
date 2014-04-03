.class Lcom/google/common/collect/Iterators$MergingIterator$1;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators$MergingIterator;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/common/collect/PeekingIterator",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Iterators$MergingIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Iterators$MergingIterator;)V
    .locals 0
    .parameter

    .prologue
    .line 1308
    .local p0, this:Lcom/google/common/collect/Iterators$MergingIterator$1;,"Lcom/google/common/collect/Iterators$MergingIterator.1;"
    iput-object p1, p0, Lcom/google/common/collect/Iterators$MergingIterator$1;->this$0:Lcom/google/common/collect/Iterators$MergingIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/common/collect/PeekingIterator;Lcom/google/common/collect/PeekingIterator;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/PeekingIterator",
            "<TT;>;",
            "Lcom/google/common/collect/PeekingIterator",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 1311
    .local p0, this:Lcom/google/common/collect/Iterators$MergingIterator$1;,"Lcom/google/common/collect/Iterators$MergingIterator.1;"
    .local p1, o1:Lcom/google/common/collect/PeekingIterator;,"Lcom/google/common/collect/PeekingIterator<TT;>;"
    .local p2, o2:Lcom/google/common/collect/PeekingIterator;,"Lcom/google/common/collect/PeekingIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Iterators$MergingIterator$1;->this$0:Lcom/google/common/collect/Iterators$MergingIterator;

    iget-object v0, v0, Lcom/google/common/collect/Iterators$MergingIterator;->comparator:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1308
    .local p0, this:Lcom/google/common/collect/Iterators$MergingIterator$1;,"Lcom/google/common/collect/Iterators$MergingIterator.1;"
    check-cast p1, Lcom/google/common/collect/PeekingIterator;

    .end local p1
    check-cast p2, Lcom/google/common/collect/PeekingIterator;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Iterators$MergingIterator$1;->compare(Lcom/google/common/collect/PeekingIterator;Lcom/google/common/collect/PeekingIterator;)I

    move-result v0

    return v0
.end method
