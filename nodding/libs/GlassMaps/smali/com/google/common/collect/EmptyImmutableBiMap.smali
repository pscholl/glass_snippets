.class final Lcom/google/common/collect/EmptyImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;


# static fields
.field static final INSTANCE:Lcom/google/common/collect/EmptyImmutableBiMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/EmptyImmutableBiMap;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableBiMap;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableBiMap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableBiMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method


# virtual methods
.method final createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final entrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableBiMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic inverse()Lcom/google/common/collect/az;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableBiMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method final readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/EmptyImmutableBiMap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableBiMap;

    return-object v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
