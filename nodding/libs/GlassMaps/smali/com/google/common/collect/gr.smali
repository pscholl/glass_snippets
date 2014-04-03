.class abstract Lcom/google/common/collect/gr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field b:I

.field c:I

.field d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field f:Lcom/google/common/collect/gu;

.field g:Lcom/google/common/collect/hj;

.field h:Lcom/google/common/collect/hj;

.field final synthetic i:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/gr;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/gr;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/gr;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/gr;->b()V

    return-void
.end method

.method private a(Lcom/google/common/collect/gu;)Z
    .locals 4

    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/gu;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/gr;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->getLiveValue(Lcom/google/common/collect/gu;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/common/collect/hj;

    iget-object v3, p0, Lcom/google/common/collect/gr;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/common/collect/hj;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/gr;->g:Lcom/google/common/collect/hj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/gr;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/gr;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/collect/gr;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v0
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/gr;->g:Lcom/google/common/collect/hj;

    invoke-direct {p0}, Lcom/google/common/collect/gr;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/gr;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget v0, p0, Lcom/google/common/collect/gr;->b:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/gr;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/gr;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/gr;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/gr;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, p0, Lcom/google/common/collect/gr;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/gr;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/gr;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v0, p0, Lcom/google/common/collect/gr;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/gr;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/gr;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gr;->f:Lcom/google/common/collect/gu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/gr;->f:Lcom/google/common/collect/gu;

    invoke-interface {v0}, Lcom/google/common/collect/gu;->getNext()Lcom/google/common/collect/gu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gr;->f:Lcom/google/common/collect/gu;

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/gr;->f:Lcom/google/common/collect/gu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/gr;->f:Lcom/google/common/collect/gu;

    invoke-direct {p0, v0}, Lcom/google/common/collect/gr;->a(Lcom/google/common/collect/gu;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/gr;->f:Lcom/google/common/collect/gu;

    invoke-interface {v0}, Lcom/google/common/collect/gu;->getNext()Lcom/google/common/collect/gu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gr;->f:Lcom/google/common/collect/gu;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()Z
    .locals 3

    :cond_0
    iget v0, p0, Lcom/google/common/collect/gr;->c:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/gr;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/gr;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/gr;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gu;

    iput-object v0, p0, Lcom/google/common/collect/gr;->f:Lcom/google/common/collect/gu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/gr;->f:Lcom/google/common/collect/gu;

    invoke-direct {p0, v0}, Lcom/google/common/collect/gr;->a(Lcom/google/common/collect/gu;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/common/collect/gr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/google/common/collect/hj;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gr;->g:Lcom/google/common/collect/hj;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/gr;->g:Lcom/google/common/collect/hj;

    iput-object v0, p0, Lcom/google/common/collect/gr;->h:Lcom/google/common/collect/hj;

    invoke-direct {p0}, Lcom/google/common/collect/gr;->b()V

    iget-object v0, p0, Lcom/google/common/collect/gr;->h:Lcom/google/common/collect/hj;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/gr;->g:Lcom/google/common/collect/hj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/gr;->h:Lcom/google/common/collect/hj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    iget-object v0, p0, Lcom/google/common/collect/gr;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/gr;->h:Lcom/google/common/collect/hj;

    invoke-virtual {v1}, Lcom/google/common/collect/hj;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/gr;->h:Lcom/google/common/collect/hj;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
