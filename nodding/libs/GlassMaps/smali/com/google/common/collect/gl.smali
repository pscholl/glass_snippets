.class final Lcom/google/common/collect/gl;
.super Ljava/util/AbstractQueue;


# instance fields
.field final a:Lcom/google/common/collect/gu;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Lcom/google/common/collect/gm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/gm;-><init>(Lcom/google/common/collect/gl;)V

    iput-object v0, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    return-void
.end method

.method private a()Lcom/google/common/collect/gu;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    invoke-interface {v0}, Lcom/google/common/collect/gu;->getNextEvictable()Lcom/google/common/collect/gu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/google/common/collect/gu;)Z
    .locals 2

    invoke-interface {p1}, Lcom/google/common/collect/gu;->getPreviousEvictable()Lcom/google/common/collect/gu;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/gu;->getNextEvictable()Lcom/google/common/collect/gu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->connectEvictables(Lcom/google/common/collect/gu;Lcom/google/common/collect/gu;)V

    iget-object v0, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    invoke-interface {v0}, Lcom/google/common/collect/gu;->getPreviousEvictable()Lcom/google/common/collect/gu;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->connectEvictables(Lcom/google/common/collect/gu;Lcom/google/common/collect/gu;)V

    iget-object v0, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->connectEvictables(Lcom/google/common/collect/gu;Lcom/google/common/collect/gu;)V

    const/4 v0, 0x1

    return v0
.end method

.method private b()Lcom/google/common/collect/gu;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    invoke-interface {v0}, Lcom/google/common/collect/gu;->getNextEvictable()Lcom/google/common/collect/gu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/gl;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    invoke-interface {v0}, Lcom/google/common/collect/gu;->getNextEvictable()Lcom/google/common/collect/gu;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    if-eq v0, v1, :cond_0

    invoke-interface {v0}, Lcom/google/common/collect/gu;->getNextEvictable()Lcom/google/common/collect/gu;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyEvictable(Lcom/google/common/collect/gu;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    iget-object v1, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    invoke-interface {v0, v1}, Lcom/google/common/collect/gu;->setNextEvictable(Lcom/google/common/collect/gu;)V

    iget-object v0, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    iget-object v1, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    invoke-interface {v0, v1}, Lcom/google/common/collect/gu;->setPreviousEvictable(Lcom/google/common/collect/gu;)V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/google/common/collect/gu;

    invoke-interface {p1}, Lcom/google/common/collect/gu;->getNextEvictable()Lcom/google/common/collect/gu;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    invoke-interface {v0}, Lcom/google/common/collect/gu;->getNextEvictable()Lcom/google/common/collect/gu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/gn;

    invoke-direct {p0}, Lcom/google/common/collect/gl;->a()Lcom/google/common/collect/gu;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/gn;-><init>(Lcom/google/common/collect/gl;Lcom/google/common/collect/gu;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/common/collect/gu;

    invoke-direct {p0, p1}, Lcom/google/common/collect/gl;->a(Lcom/google/common/collect/gu;)Z

    move-result v0

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/gl;->a()Lcom/google/common/collect/gu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/gl;->b()Lcom/google/common/collect/gu;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/google/common/collect/gu;

    invoke-interface {p1}, Lcom/google/common/collect/gu;->getPreviousEvictable()Lcom/google/common/collect/gu;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/gu;->getNextEvictable()Lcom/google/common/collect/gu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->connectEvictables(Lcom/google/common/collect/gu;Lcom/google/common/collect/gu;)V

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->nullifyEvictable(Lcom/google/common/collect/gu;)V

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    invoke-interface {v0}, Lcom/google/common/collect/gu;->getNextEvictable()Lcom/google/common/collect/gu;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/gl;->a:Lcom/google/common/collect/gu;

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Lcom/google/common/collect/gu;->getNextEvictable()Lcom/google/common/collect/gu;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method
