.class abstract Lcom/google/common/collect/hs;
.super Ljava/util/AbstractMap;


# instance fields
.field private a:Ljava/util/Set;

.field private b:Ljava/util/Set;

.field private c:Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract b()Ljava/util/Set;
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/hs;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/hs;->b()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hs;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/hs;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/ht;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ht;-><init>(Lcom/google/common/collect/hs;)V

    iput-object v0, p0, Lcom/google/common/collect/hs;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/hs;->c:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/hu;

    invoke-direct {v0, p0}, Lcom/google/common/collect/hu;-><init>(Lcom/google/common/collect/hs;)V

    iput-object v0, p0, Lcom/google/common/collect/hs;->c:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
