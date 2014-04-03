.class final Lcom/google/common/collect/fg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Set;

.field b:Lcom/google/common/collect/fm;

.field c:Lcom/google/common/collect/fm;

.field d:I

.field final synthetic e:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/fg;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/common/collect/fg;->e:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fg;->a:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/common/collect/fg;->e:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fm;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fg;->b:Lcom/google/common/collect/fm;

    iget-object v0, p0, Lcom/google/common/collect/fg;->e:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/fg;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/ew;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/fg;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/fg;->e:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/fg;->d:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/fg;->a()V

    iget-object v0, p0, Lcom/google/common/collect/fg;->b:Lcom/google/common/collect/fm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/fg;->a()V

    iget-object v0, p0, Lcom/google/common/collect/fg;->b:Lcom/google/common/collect/fm;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/fg;->b:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fg;->c:Lcom/google/common/collect/fm;

    iget-object v0, p0, Lcom/google/common/collect/fg;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/fg;->c:Lcom/google/common/collect/fm;

    iget-object v1, v1, Lcom/google/common/collect/fm;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/fg;->b:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fg;->b:Lcom/google/common/collect/fm;

    iget-object v0, p0, Lcom/google/common/collect/fg;->b:Lcom/google/common/collect/fm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/fg;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/fg;->b:Lcom/google/common/collect/fm;

    iget-object v1, v1, Lcom/google/common/collect/fm;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/fg;->c:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/fg;->a()V

    iget-object v0, p0, Lcom/google/common/collect/fg;->c:Lcom/google/common/collect/fm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    iget-object v0, p0, Lcom/google/common/collect/fg;->e:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fg;->c:Lcom/google/common/collect/fm;

    iget-object v1, v1, Lcom/google/common/collect/fm;->a:Ljava/lang/Object;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fg;->c:Lcom/google/common/collect/fm;

    iget-object v0, p0, Lcom/google/common/collect/fg;->e:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/fg;->d:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
