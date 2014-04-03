.class public final Lcom/google/common/collect/Constraints;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/util/Collection;Lcom/google/common/collect/bo;)Ljava/util/Collection;
    .locals 1

    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/SortedSet;Lcom/google/common/collect/bo;)Ljava/util/SortedSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/Set;Lcom/google/common/collect/bo;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/List;Lcom/google/common/collect/bo;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->c(Ljava/util/Collection;Lcom/google/common/collect/bo;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Lcom/google/common/collect/bo;)Ljava/util/List;
    .locals 1

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/bs;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bs;-><init>(Ljava/util/List;Lcom/google/common/collect/bo;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/bq;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bq;-><init>(Ljava/util/List;Lcom/google/common/collect/bo;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/ListIterator;Lcom/google/common/collect/bo;)Ljava/util/ListIterator;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->b(Ljava/util/ListIterator;Lcom/google/common/collect/bo;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Set;Lcom/google/common/collect/bo;)Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/bt;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bt;-><init>(Ljava/util/Set;Lcom/google/common/collect/bo;)V

    return-object v0
.end method

.method public static a(Ljava/util/SortedSet;Lcom/google/common/collect/bo;)Ljava/util/SortedSet;
    .locals 1

    new-instance v0, Lcom/google/common/collect/bu;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bu;-><init>(Ljava/util/SortedSet;Lcom/google/common/collect/bo;)V

    return-object v0
.end method

.method static synthetic b(Ljava/util/Collection;Lcom/google/common/collect/bo;)Ljava/util/Collection;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/common/collect/Constraints;->d(Ljava/util/Collection;Lcom/google/common/collect/bo;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/ListIterator;Lcom/google/common/collect/bo;)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/common/collect/br;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/br;-><init>(Ljava/util/ListIterator;Lcom/google/common/collect/bo;)V

    return-object v0
.end method

.method private static c(Ljava/util/Collection;Lcom/google/common/collect/bo;)Ljava/util/Collection;
    .locals 1

    new-instance v0, Lcom/google/common/collect/bp;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bp;-><init>(Ljava/util/Collection;Lcom/google/common/collect/bo;)V

    return-object v0
.end method

.method private static d(Ljava/util/Collection;Lcom/google/common/collect/bo;)Ljava/util/Collection;
    .locals 3

    invoke-static {p0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/common/collect/bo;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
