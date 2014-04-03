.class public final Lcom/google/common/collect/MapConstraints;
.super Ljava/lang/Object;


# direct methods
.method static synthetic a(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/fr;)Ljava/util/Collection;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/MapConstraints;->b(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/fr;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;Lcom/google/common/collect/fr;)Ljava/util/Collection;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->b(Ljava/util/Collection;Lcom/google/common/collect/fr;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map$Entry;Lcom/google/common/collect/fr;)Ljava/util/Map$Entry;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->c(Ljava/util/Map$Entry;Lcom/google/common/collect/fr;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/Set;Lcom/google/common/collect/fr;)Ljava/util/Set;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->b(Ljava/util/Set;Lcom/google/common/collect/fr;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/fr;)Ljava/util/Collection;
    .locals 3

    invoke-static {p1}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, p0, v2}, Lcom/google/common/collect/fr;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/util/Collection;Lcom/google/common/collect/fr;)Ljava/util/Collection;
    .locals 1

    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->c(Ljava/util/Set;Lcom/google/common/collect/fr;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/fz;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fz;-><init>(Ljava/util/Collection;Lcom/google/common/collect/fr;)V

    goto :goto_0
.end method

.method static synthetic b(Ljava/util/Map$Entry;Lcom/google/common/collect/fr;)Ljava/util/Map$Entry;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->d(Ljava/util/Map$Entry;Lcom/google/common/collect/fr;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Set;Lcom/google/common/collect/fr;)Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/fv;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fv;-><init>(Ljava/util/Set;Lcom/google/common/collect/fr;)V

    return-object v0
.end method

.method private static c(Ljava/util/Map$Entry;Lcom/google/common/collect/fr;)Ljava/util/Map$Entry;
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/fs;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fs;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/fr;)V

    return-object v0
.end method

.method private static c(Ljava/util/Set;Lcom/google/common/collect/fr;)Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/gb;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/gb;-><init>(Ljava/util/Set;Lcom/google/common/collect/fr;)V

    return-object v0
.end method

.method private static d(Ljava/util/Map$Entry;Lcom/google/common/collect/fr;)Ljava/util/Map$Entry;
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/ft;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ft;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/fr;)V

    return-object v0
.end method
