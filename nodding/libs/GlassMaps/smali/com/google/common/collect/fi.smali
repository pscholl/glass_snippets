.class final Lcom/google/common/collect/fi;
.super Lcom/google/common/collect/af;


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/fi;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/af;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/ew;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/fi;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method


# virtual methods
.method public final count(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fi;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/google/common/collect/fh;->c:I

    goto :goto_0
.end method

.method final distinctElements()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/fi;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final elementSet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fi;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .locals 4

    new-instance v0, Lcom/google/common/collect/fj;

    new-instance v1, Lcom/google/common/collect/fg;

    iget-object v2, p0, Lcom/google/common/collect/fi;->a:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/fg;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/ew;)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/fj;-><init>(Lcom/google/common/collect/fi;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lcom/google/common/collect/fl;

    new-instance v1, Lcom/google/common/collect/fn;

    iget-object v2, p0, Lcom/google/common/collect/fi;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v1, v2}, Lcom/google/common/collect/fn;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/fl;-><init>(Lcom/google/common/collect/fi;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 4

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/fi;->count(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Lcom/google/common/collect/fo;

    iget-object v0, p0, Lcom/google/common/collect/fi;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v2, v0, p1}, Lcom/google/common/collect/fo;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move p2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fi;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->size:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$1000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    return v0
.end method
