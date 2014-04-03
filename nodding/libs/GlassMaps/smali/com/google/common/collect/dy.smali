.class public final Lcom/google/common/collect/dy;
.super Lcom/google/common/collect/dn;


# instance fields
.field private final b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/dn;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/dy;->b:Ljava/util/Comparator;

    return-void
.end method

.method private b(Ljava/util/Map;)Lcom/google/common/collect/dy;
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/dy;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSortedMap;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/dy;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/dy;->b:Ljava/util/Comparator;

    #calls: Lcom/google/common/collect/ImmutableSortedMap;->sortEntries(Ljava/util/List;Ljava/util/Comparator;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$000(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/google/common/collect/dy;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/dy;->b:Ljava/util/Comparator;

    #calls: Lcom/google/common/collect/ImmutableSortedMap;->validateEntries(Ljava/util/List;Ljava/util/Comparator;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$100(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/google/common/collect/dy;->b:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/collect/dy;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->fromSortedEntries(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/util/Map;)Lcom/google/common/collect/dn;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/dy;->b(Ljava/util/Map;)Lcom/google/common/collect/dy;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/dy;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final synthetic b()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/dy;->a()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/dy;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    return-object v0
.end method
