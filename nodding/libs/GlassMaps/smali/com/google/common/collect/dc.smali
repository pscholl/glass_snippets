.class public final Lcom/google/common/collect/dc;
.super Lcom/google/common/collect/dn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/dn;-><init>()V

    return-void
.end method

.method private b(Ljava/util/Map;)Lcom/google/common/collect/dc;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/dn;->a(Ljava/util/Map;)Lcom/google/common/collect/dn;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/dc;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableBiMap;->fromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/dn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dn;

    return-object p0
.end method

.method public final synthetic a(Ljava/util/Map;)Lcom/google/common/collect/dn;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/collect/dc;->b(Ljava/util/Map;)Lcom/google/common/collect/dc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/dc;->a()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    return-object v0
.end method
