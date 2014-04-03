.class public final Lcom/google/common/collect/dv;
.super Lcom/google/common/collect/dp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/dp;-><init>()V

    new-instance v0, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/ig;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/dv;->b:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;-><init>()V

    iget-object v0, p0, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/dv;->b:Ljava/util/Comparator;

    invoke-static {v2}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v2

    new-instance v3, Lcom/google/common/collect/dw;

    invoke-direct {v3, p0}, Lcom/google/common/collect/dw;-><init>(Lcom/google/common/collect/dv;)V

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/v;)Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v1, v3, v0}, Lcom/google/common/collect/ig;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/ig;

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/ig;

    iget-object v1, p0, Lcom/google/common/collect/dv;->c:Ljava/util/Comparator;

    #calls: Lcom/google/common/collect/ImmutableSetMultimap;->copyOf(Lcom/google/common/collect/ig;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSetMultimap;->access$000(Lcom/google/common/collect/ig;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/ig;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/ig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final synthetic b()Lcom/google/common/collect/ImmutableMultimap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/dv;->a()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dp;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    move-result-object v0

    return-object v0
.end method
