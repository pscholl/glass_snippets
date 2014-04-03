.class final Lcom/google/common/collect/mz;
.super Lcom/google/common/collect/hq;


# instance fields
.field final synthetic a:Lcom/google/common/collect/mx;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/mx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/mz;->a:Lcom/google/common/collect/mx;

    invoke-direct {p0}, Lcom/google/common/collect/hq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/mx;Lcom/google/common/collect/my;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/mz;-><init>(Lcom/google/common/collect/mx;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/mz;->a:Lcom/google/common/collect/mx;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/na;

    iget-object v1, p0, Lcom/google/common/collect/mz;->a:Lcom/google/common/collect/mx;

    invoke-virtual {v1}, Lcom/google/common/collect/mx;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/na;-><init>(Lcom/google/common/collect/mz;Ljava/util/Iterator;)V

    return-object v0
.end method
