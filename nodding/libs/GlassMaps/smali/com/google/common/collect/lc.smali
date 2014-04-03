.class final Lcom/google/common/collect/lc;
.super Lcom/google/common/collect/AbstractIterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/la;


# direct methods
.method constructor <init>(Lcom/google/common/collect/la;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/lc;->b:Lcom/google/common/collect/la;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    iget-object v0, p0, Lcom/google/common/collect/lc;->b:Lcom/google/common/collect/la;

    iget-object v0, v0, Lcom/google/common/collect/la;->d:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/lc;->a:Ljava/util/Iterator;

    return-void
.end method

.method private c()Ljava/util/Map$Entry;
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/lc;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/lc;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/lc;->b:Lcom/google/common/collect/la;

    iget-object v2, v2, Lcom/google/common/collect/la;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/common/collect/ld;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ld;-><init>(Lcom/google/common/collect/lc;Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/lc;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/lc;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
