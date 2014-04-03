.class final Lcom/google/common/collect/ib;
.super Lcom/google/common/collect/hw;

# interfaces
.implements Ljava/util/SortedMap;


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lcom/google/common/collect/hr;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/hw;-><init>(Ljava/util/Map;Lcom/google/common/collect/hr;)V

    return-void
.end method

.method private a()Ljava/util/SortedMap;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ib;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ib;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ib;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/ib;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ib;->b:Lcom/google/common/collect/hr;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/SortedMap;Lcom/google/common/collect/hr;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ib;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/ib;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ib;->b:Lcom/google/common/collect/hr;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/SortedMap;Lcom/google/common/collect/hr;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/ib;->a()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ib;->b:Lcom/google/common/collect/hr;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/SortedMap;Lcom/google/common/collect/hr;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
