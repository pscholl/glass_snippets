.class final Lcom/google/common/collect/gj;
.super Lcom/google/common/collect/gr;


# instance fields
.field final synthetic a:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/gj;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/gr;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method

.method private b()Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/gj;->a()Lcom/google/common/collect/hj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/gj;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
