.class abstract Lcom/google/common/collect/cy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field b:I

.field c:Lcom/google/common/collect/cp;

.field d:Lcom/google/common/collect/cp;

.field e:I

.field final synthetic f:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/common/collect/cy;->f:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/cy;->b:I

    iput-object v1, p0, Lcom/google/common/collect/cy;->c:Lcom/google/common/collect/cp;

    iput-object v1, p0, Lcom/google/common/collect/cy;->d:Lcom/google/common/collect/cp;

    iget-object v0, p0, Lcom/google/common/collect/cy;->f:Lcom/google/common/collect/HashBiMap;

    #getter for: Lcom/google/common/collect/HashBiMap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/cy;->e:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/cy;->f:Lcom/google/common/collect/HashBiMap;

    #getter for: Lcom/google/common/collect/HashBiMap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/cy;->e:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method abstract a(Lcom/google/common/collect/cp;)Ljava/lang/Object;
.end method

.method public hasNext()Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/common/collect/cy;->a()V

    iget-object v1, p0, Lcom/google/common/collect/cy;->c:Lcom/google/common/collect/cp;

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/common/collect/cy;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/cy;->b:I

    :cond_1
    iget v1, p0, Lcom/google/common/collect/cy;->b:I

    iget-object v2, p0, Lcom/google/common/collect/cy;->f:Lcom/google/common/collect/HashBiMap;

    #getter for: Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/cp;
    invoke-static {v2}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/cp;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/cy;->f:Lcom/google/common/collect/HashBiMap;

    #getter for: Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/cp;
    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/cp;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/cy;->b:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/cy;->f:Lcom/google/common/collect/HashBiMap;

    #getter for: Lcom/google/common/collect/HashBiMap;->hashTableKToV:[Lcom/google/common/collect/cp;
    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/cp;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/cy;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/collect/cy;->b:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/common/collect/cy;->c:Lcom/google/common/collect/cp;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/cy;->a()V

    invoke-virtual {p0}, Lcom/google/common/collect/cy;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/cy;->c:Lcom/google/common/collect/cp;

    iget-object v1, v0, Lcom/google/common/collect/cp;->e:Lcom/google/common/collect/cp;

    iput-object v1, p0, Lcom/google/common/collect/cy;->c:Lcom/google/common/collect/cp;

    iput-object v0, p0, Lcom/google/common/collect/cy;->d:Lcom/google/common/collect/cp;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/cy;->a(Lcom/google/common/collect/cp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/cy;->a()V

    iget-object v0, p0, Lcom/google/common/collect/cy;->d:Lcom/google/common/collect/cp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Only one remove() call allowed per call to next"

    invoke-static {v0, v1}, Lcom/google/common/base/ai;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/cy;->f:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/cy;->d:Lcom/google/common/collect/cp;

    #calls: Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/cp;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/cp;)V

    iget-object v0, p0, Lcom/google/common/collect/cy;->f:Lcom/google/common/collect/HashBiMap;

    #getter for: Lcom/google/common/collect/HashBiMap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/cy;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/cy;->d:Lcom/google/common/collect/cp;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
