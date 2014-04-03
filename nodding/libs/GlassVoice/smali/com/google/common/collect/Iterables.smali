.class public final Lcom/google/common/collect/Iterables;
.super Ljava/lang/Object;
.source "Iterables.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Iterables$ConsumingQueueIterator;,
        Lcom/google/common/collect/Iterables$UnmodifiableIterable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Iterable;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->iterators(Ljava/lang/Iterable;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/common/base/Function;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/google/common/collect/Iterables;->toIterator()Lcom/google/common/base/Function;

    move-result-object v0

    return-object v0
.end method

.method public static addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, addTo:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, elementsToAdd:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 320
    invoke-static {p1}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 321
    .local v0, c:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 323
    .end local v0           #c:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    :goto_0
    return v1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v1

    goto :goto_0
.end method

.method public static all(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->all(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 604
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->any(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method private static checkNonnegativeIndex(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 721
    if-gez p0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_0
    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, inputs:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance v0, Lcom/google/common/collect/Iterables$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterables$2;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, a:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, b:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, a:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, b:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p2, c:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, a:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, b:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p2, c:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p3, d:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Iterable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, inputs:[Ljava/lang/Iterable;,"[Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static consumingIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 958
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    instance-of v0, p0, Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 959
    new-instance v0, Lcom/google/common/collect/Iterables$12;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterables$12;-><init>(Ljava/lang/Iterable;)V

    .line 969
    :goto_0
    return-object v0

    .line 967
    :cond_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    new-instance v0, Lcom/google/common/collect/Iterables$13;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterables$13;-><init>(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method public static contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .end parameter
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 117
    check-cast v0, Ljava/util/Collection;

    .line 118
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    .line 120
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :goto_0
    return v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v0, Lcom/google/common/collect/Iterables$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Iterables$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs cycle([Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, elements:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static elementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, iterable1:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, iterable2:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 236
    check-cast v0, Ljava/util/Collection;

    .local v0, collection1:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    move-object v1, p1

    .line 237
    check-cast v1, Ljava/util/Collection;

    .line 238
    .local v1, collection2:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 239
    const/4 v2, 0x0

    .line 242
    .end local v0           #collection1:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .end local v1           #collection2:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :goto_0
    return v2

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v2

    goto :goto_0
.end method

.method public static filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, unfiltered:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v0, Lcom/google/common/collect/Iterables$6;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$6;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Class.isInstance"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, unfiltered:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    new-instance v0, Lcom/google/common/collect/Iterables$7;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$7;-><init>(Ljava/lang/Iterable;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->find(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static find(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 639
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/Iterators;->find(Ljava/util/Iterator;Lcom/google/common/base/Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static frequency(Ljava/lang/Iterable;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .end parameter
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 335
    check-cast p0, Lcom/google/common/collect/Multiset;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 340
    :goto_0
    return v0

    .line 337
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 338
    check-cast p0, Ljava/util/Set;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->frequency(Ljava/util/Iterator;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/Iterable;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 706
    check-cast p0, Ljava/util/List;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 717
    :goto_0
    return-object v1

    .line 709
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :cond_0
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 711
    check-cast v0, Ljava/util/Collection;

    .line 712
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 717
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    :goto_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Iterators;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 715
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->checkNonnegativeIndex(I)V

    goto :goto_1
.end method

.method public static get(Ljava/lang/Iterable;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .end parameter
    .parameter "position"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;ITT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 741
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->checkNonnegativeIndex(I)V

    .line 745
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 747
    .end local p2           #defaultValue:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object p2

    .line 746
    .restart local p2       #defaultValue:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method public static getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 766
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLast(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 777
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 778
    check-cast v0, Ljava/util/List;

    .line 779
    .local v0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 780
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 782
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLastInNonemptyList(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    .line 795
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :goto_0
    return-object v2

    .line 790
    :cond_1
    instance-of v2, p0, Ljava/util/SortedSet;

    if-eqz v2, :cond_2

    move-object v1, p0

    .line 791
    check-cast v1, Ljava/util/SortedSet;

    .line 792
    .local v1, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TT;>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 795
    .end local v1           #sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TT;>;"
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Iterators;->getLast(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public static getLast(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 808
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TT;"
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 809
    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 810
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 830
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    .end local p1           #defaultValue:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object p1

    .line 815
    .restart local p1       #defaultValue:Ljava/lang/Object;,"TT;"
    :cond_0
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 816
    invoke-static {p0}, Lcom/google/common/collect/Lists;->cast(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 817
    .local v1, list:Ljava/util/List;,"Ljava/util/List<+TT;>;"
    invoke-static {v1}, Lcom/google/common/collect/Iterables;->getLastInNonemptyList(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 825
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<+TT;>;"
    :cond_1
    instance-of v3, p0, Ljava/util/SortedSet;

    if-eqz v3, :cond_2

    .line 826
    invoke-static {p0}, Lcom/google/common/collect/Sets;->cast(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v2

    .line 827
    .local v2, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<+TT;>;"
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 830
    .end local v2           #sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<+TT;>;"
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/common/collect/Iterators;->getLast(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method private static getLastInNonemptyList(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 834
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getOnlyElement(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->getOnlyElement(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->indexOf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)I

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/lang/Iterable;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1006
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 1007
    check-cast p0, Ljava/util/Collection;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 1009
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static iterators(Ljava/lang/Iterable;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Iterator",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, iterables:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 490
    .local v0, iterableIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/lang/Iterable<+TT;>;>;"
    new-instance v1, Lcom/google/common/collect/Iterables$3;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Iterables$3;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public static limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 2
    .parameter
    .parameter "limitSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;I)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "limit is negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 930
    new-instance v0, Lcom/google/common/collect/Iterables$11;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$11;-><init>(Ljava/lang/Iterable;I)V

    return-object v0

    .line 929
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeSorted(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/lang/Iterable;
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1028
    .local p0, iterables:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Iterable<+TT;>;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    const-string v1, "iterables"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    const-string v1, "comparator"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    new-instance v0, Lcom/google/common/collect/Iterables$14;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$14;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    .line 1037
    .local v0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    new-instance v1, Lcom/google/common/collect/Iterables$UnmodifiableIterable;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/Iterables$UnmodifiableIterable;-><init>(Ljava/lang/Iterable;Lcom/google/common/collect/Iterables$1;)V

    return-object v1
.end method

.method public static paddedPartition(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;I)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 553
    new-instance v0, Lcom/google/common/collect/Iterables$5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$5;-><init>(Ljava/lang/Iterable;I)V

    return-object v0

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static partition(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;I)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 525
    new-instance v0, Lcom/google/common/collect/Iterables$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$4;-><init>(Ljava/lang/Iterable;I)V

    return-object v0

    .line 524
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeAll(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, elementsToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p0       #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 172
    check-cast p0, Ljava/util/List;

    .end local p0           #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Predicate;

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->removeIfFromRandomAccessList(Ljava/util/List;Lcom/google/common/base/Predicate;)Z

    move-result v0

    .line 174
    :goto_0
    return v0

    .restart local p0       #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    goto :goto_0
.end method

.method private static removeIfFromRandomAccessList(Ljava/util/List;Lcom/google/common/base/Predicate;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    const/4 v4, 0x1

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, from:I
    const/4 v3, 0x0

    .line 184
    .local v3, to:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 185
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 186
    .local v1, element:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    if-le v2, v3, :cond_0

    .line 189
    :try_start_0
    invoke-interface {p0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 184
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    invoke-static {p0, p1, v3, v2}, Lcom/google/common/collect/Iterables;->slowRemoveIfForRemainingElements(Ljava/util/List;Lcom/google/common/base/Predicate;II)V

    .line 201
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    .end local v1           #element:Ljava/lang/Object;,"TT;"
    :cond_2
    :goto_1
    return v4

    .line 200
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p0, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 201
    if-ne v2, v3, :cond_2

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static retainAll(Ljava/lang/Iterable;Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, elementsToRetain:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p0       #removeFrom:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static size(Ljava/lang/Iterable;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    goto :goto_0
.end method

.method public static skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 3
    .parameter
    .parameter "numberToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;I)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 858
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "number to skip cannot be negative"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 861
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 862
    check-cast v0, Ljava/util/List;

    .line 863
    .local v0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    new-instance v1, Lcom/google/common/collect/Iterables$9;

    invoke-direct {v1, p1, v0}, Lcom/google/common/collect/Iterables$9;-><init>(ILjava/util/List;)V

    .line 873
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :goto_1
    return-object v1

    .line 859
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 873
    :cond_1
    new-instance v1, Lcom/google/common/collect/Iterables$10;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/Iterables$10;-><init>(Ljava/lang/Iterable;I)V

    goto :goto_1
.end method

.method private static slowRemoveIfForRemainingElements(Ljava/util/List;Lcom/google/common/base/Predicate;II)V
    .locals 2
    .parameter
    .parameter
    .parameter "to"
    .parameter "from"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, n:I
    :goto_0
    if-le v0, p3, :cond_1

    .line 217
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 216
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 222
    :cond_1
    add-int/lit8 v0, p3, -0x1

    :goto_1
    if-lt v0, p2, :cond_2

    .line 223
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 225
    :cond_2
    return-void
.end method

.method static toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->toCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Array.newInstance(Class, int)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TT;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->toCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    .line 287
    .local v1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/common/collect/ObjectArrays;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, array:[Ljava/lang/Object;,"[TT;"
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static toCollection(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    :goto_0
    return-object p0

    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TE;>;"
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0
.end method

.method private static toIterator()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Iterable",
            "<+TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1043
    new-instance v0, Lcom/google/common/collect/Iterables$15;

    invoke-direct {v0}, Lcom/google/common/collect/Iterables$15;-><init>()V

    return-object v0
.end method

.method public static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TF;>;",
            "Lcom/google/common/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 685
    .local p0, fromIterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TF;>;"
    .local p1, function:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TF;+TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance v0, Lcom/google/common/collect/Iterables$8;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$8;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method public static tryFind(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Optional;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/Predicate",
            "<-TT;>;)",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p1, predicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->tryFind(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableIterable(Lcom/google/common/collect/ImmutableCollection;)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TE;>;)",
            "Ljava/lang/Iterable",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    .local p0, iterable:Lcom/google/common/collect/ImmutableCollection;,"Lcom/google/common/collect/ImmutableCollection<TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public static unmodifiableIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    instance-of v0, p0, Lcom/google/common/collect/Iterables$UnmodifiableIterable;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/common/collect/ImmutableCollection;

    if-eqz v0, :cond_1

    .line 71
    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :cond_1
    new-instance v0, Lcom/google/common/collect/Iterables$UnmodifiableIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Iterables$UnmodifiableIterable;-><init>(Ljava/lang/Iterable;Lcom/google/common/collect/Iterables$1;)V

    move-object p0, v0

    goto :goto_0
.end method
