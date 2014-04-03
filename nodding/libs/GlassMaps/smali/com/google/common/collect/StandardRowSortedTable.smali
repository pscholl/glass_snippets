.class Lcom/google/common/collect/StandardRowSortedTable;
.super Lcom/google/common/collect/StandardTable;

# interfaces
.implements Lcom/google/common/collect/kf;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient rowKeySet:Ljava/util/SortedSet;

.field private transient rowMap:Lcom/google/common/collect/kw;


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lcom/google/common/base/aw;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/StandardTable;-><init>(Ljava/util/Map;Lcom/google/common/base/aw;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method private sortedBackingMap()Ljava/util/SortedMap;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->backingMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/StandardRowSortedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/SortedSet;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->rowKeySet:Ljava/util/SortedSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/kv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/kv;-><init>(Lcom/google/common/collect/StandardRowSortedTable;Lcom/google/common/collect/ku;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->rowKeySet:Ljava/util/SortedSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/SortedMap;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->rowMap:Lcom/google/common/collect/kw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/kw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/kw;-><init>(Lcom/google/common/collect/StandardRowSortedTable;Lcom/google/common/collect/ku;)V

    iput-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->rowMap:Lcom/google/common/collect/kw;

    :cond_0
    return-object v0
.end method
