.class final Lcom/google/common/collect/im;
.super Lcom/google/common/collect/af;


# instance fields
.field final a:Lcom/google/common/collect/ig;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ig;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/af;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0, p1}, Lcom/google/common/collect/ig;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final count(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0
.end method

.method final createEntrySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ip;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ip;-><init>(Lcom/google/common/collect/im;)V

    return-object v0
.end method

.method final distinctElements()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final elementSet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/common/collect/in;

    iget-object v1, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    invoke-interface {v1}, Lcom/google/common/collect/ig;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/in;-><init>(Lcom/google/common/collect/im;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 3

    const/4 v1, 0x0

    if-ltz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/im;->count(Ljava/lang/Object;)I

    move-result v1

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/im;->a:Lcom/google/common/collect/ig;

    invoke-interface {v0}, Lcom/google/common/collect/ig;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-lt p2, v2, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    if-ge v1, p2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
