.class final Lcom/google/common/collect/au;
.super Lcom/google/common/collect/am;


# instance fields
.field final synthetic a:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 2

    iput-object p1, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableMap;
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->access$400(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/am;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/al;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/al;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/au;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method

.method private static a(ILjava/util/Map;)Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private c(I)Ljava/util/Map;
    .locals 2

    new-instance v0, Lcom/google/common/collect/at;

    iget-object v1, p0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/at;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/google/common/collect/au;->a(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Column"

    return-object v0
.end method

.method final synthetic b(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/au;->c(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/google/common/collect/au;->a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
