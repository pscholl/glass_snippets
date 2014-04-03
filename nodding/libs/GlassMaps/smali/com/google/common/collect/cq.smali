.class final Lcom/google/common/collect/cq;
.super Lcom/google/common/collect/hq;


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/cq;->a:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/hq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/co;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/cq;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/cq;->a:Lcom/google/common/collect/HashBiMap;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/common/collect/cr;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cr;-><init>(Lcom/google/common/collect/cq;)V

    return-object v0
.end method
