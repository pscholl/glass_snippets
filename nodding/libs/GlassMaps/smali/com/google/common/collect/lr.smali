.class final Lcom/google/common/collect/lr;
.super Lcom/google/common/collect/hq;


# instance fields
.field final synthetic a:Lcom/google/common/collect/lp;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/lp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/lr;->a:Lcom/google/common/collect/lp;

    invoke-direct {p0}, Lcom/google/common/collect/hq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/lp;Lcom/google/common/collect/kx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/lr;-><init>(Lcom/google/common/collect/lp;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/lr;->a:Lcom/google/common/collect/lp;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/lr;->a:Lcom/google/common/collect/lp;

    invoke-virtual {v0}, Lcom/google/common/collect/lp;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ef;->b()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v0, Lcom/google/common/collect/ls;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ls;-><init>(Lcom/google/common/collect/lr;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/lr;->a:Lcom/google/common/collect/lp;

    invoke-virtual {v0}, Lcom/google/common/collect/lp;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method
