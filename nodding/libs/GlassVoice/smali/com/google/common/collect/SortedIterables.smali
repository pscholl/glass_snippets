.class final Lcom/google/common/collect/SortedIterables;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 55
    .local v0, result:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 58
    :cond_0
    return-object v0
.end method

.method public static hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    instance-of v1, p1, Ljava/util/SortedSet;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Ljava/util/SortedSet;

    .end local p1           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-static {p1}, Lcom/google/common/collect/SortedIterables;->comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;

    move-result-object v0

    .line 48
    .local v0, comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v0           #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    :goto_1
    return v1

    .line 43
    .restart local p1       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/SortedIterable;

    if-eqz v1, :cond_1

    .line 44
    check-cast p1, Lcom/google/common/collect/SortedIterable;

    .end local p1           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/SortedIterable;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .restart local v0       #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    goto :goto_0

    .line 46
    .end local v0           #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .restart local p1       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
