.class final Lcom/google/common/collect/le;
.super Lcom/google/common/collect/kl;


# instance fields
.field final synthetic a:Lcom/google/common/collect/la;


# direct methods
.method constructor <init>(Lcom/google/common/collect/la;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/la;

    invoke-direct {p0}, Lcom/google/common/collect/kl;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/la;

    invoke-virtual {v0}, Lcom/google/common/collect/la;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/la;

    iget-object v0, v0, Lcom/google/common/collect/la;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/la;

    iget-object v1, v1, Lcom/google/common/collect/la;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/la;

    iget-object v0, v0, Lcom/google/common/collect/la;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/la;

    iget-object v1, v1, Lcom/google/common/collect/la;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/la;

    invoke-virtual {v0}, Lcom/google/common/collect/la;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/la;

    iget-object v0, v0, Lcom/google/common/collect/la;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/la;

    iget-object v1, v1, Lcom/google/common/collect/la;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/lf;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/lf;-><init>(Lcom/google/common/collect/le;Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/la;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/la;->a(Lcom/google/common/base/aj;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/le;->a:Lcom/google/common/collect/la;

    invoke-virtual {v0}, Lcom/google/common/collect/la;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
