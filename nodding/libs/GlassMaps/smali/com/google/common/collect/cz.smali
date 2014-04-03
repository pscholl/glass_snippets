.class final Lcom/google/common/collect/cz;
.super Lcom/google/common/collect/hv;


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/cz;->a:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/hv;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/co;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/cz;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Lcom/google/common/collect/HashBiMap;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/common/collect/da;

    invoke-direct {v0, p0}, Lcom/google/common/collect/da;-><init>(Lcom/google/common/collect/cz;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/cz;->a:Lcom/google/common/collect/HashBiMap;

    #calls: Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$400(Ljava/lang/Object;)I

    move-result v1

    #calls: Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/cp;
    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$500(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/cp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/cz;->a:Lcom/google/common/collect/HashBiMap;

    #calls: Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/cp;)V
    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/cp;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
