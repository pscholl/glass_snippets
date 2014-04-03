.class public abstract Lcom/google/common/collect/ImmutableBiMap;
.super Lcom/google/common/collect/ImmutableMap;

# interfaces
.implements Lcom/google/common/collect/az;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/common/collect/dc;
    .locals 1

    new-instance v0, Lcom/google/common/collect/dc;

    invoke-direct {v0}, Lcom/google/common/collect/dc;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap;
    .locals 2

    instance-of v0, p0, Lcom/google/common/collect/ImmutableBiMap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableBiMap;->fromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    goto :goto_0
.end method

.method static fromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableBiMap;
    .locals 3

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableBiMap;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/google/common/collect/ec;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/common/collect/SingletonImmutableBiMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/SingletonImmutableBiMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static of()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    sget-object v0, Lcom/google/common/collect/EmptyImmutableBiMap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableBiMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "null key in entry: null=%s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "null value in entry: %s=null"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p1, v0, v1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/SingletonImmutableBiMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/SingletonImmutableBiMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    new-instance v0, Lcom/google/common/collect/dc;

    invoke-direct {v0}, Lcom/google/common/collect/dc;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/dc;->a()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    new-instance v0, Lcom/google/common/collect/dc;

    invoke-direct {v0}, Lcom/google/common/collect/dc;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/dc;->a()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    new-instance v0, Lcom/google/common/collect/dc;

    invoke-direct {v0}, Lcom/google/common/collect/dc;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/dc;->a()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;
    .locals 1

    new-instance v0, Lcom/google/common/collect/dc;

    invoke-direct {v0}, Lcom/google/common/collect/dc;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0, p8, p9}, Lcom/google/common/collect/dc;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/dc;->a()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract inverse()Lcom/google/common/collect/ImmutableBiMap;
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/az;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->values()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->values()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap;->values()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableBiMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableBiMap;)V

    return-object v0
.end method
