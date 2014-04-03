.class final Lcom/google/common/collect/fn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field a:I

.field b:Lcom/google/common/collect/fm;

.field c:Lcom/google/common/collect/fm;

.field d:Lcom/google/common/collect/fm;

.field e:I

.field final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/fn;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/common/collect/fn;->f:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/fn;->e:I

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fm;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fn;->b:Lcom/google/common/collect/fm;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;I)V
    .locals 2

    iput-object p1, p0, Lcom/google/common/collect/fn;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/common/collect/fn;->f:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/fn;->e:I

    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v1

    invoke-static {p2, v1}, Lcom/google/common/base/ai;->b(II)I

    div-int/lit8 v0, v1, 0x2

    if-lt p2, v0, :cond_0

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/fm;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fn;->d:Lcom/google/common/collect/fm;

    iput v1, p0, Lcom/google/common/collect/fn;->a:I

    :goto_0
    add-int/lit8 v0, p2, 0x1

    if-ge p2, v1, :cond_1

    invoke-direct {p0}, Lcom/google/common/collect/fn;->c()Lcom/google/common/collect/fm;

    move p2, v0

    goto :goto_0

    :cond_0
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/fm;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/fm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fn;->b:Lcom/google/common/collect/fm;

    :goto_1
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_1

    invoke-direct {p0}, Lcom/google/common/collect/fn;->b()Lcom/google/common/collect/fm;

    move p2, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/fn;->f:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/fn;->e:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/common/collect/fm;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private b()Lcom/google/common/collect/fm;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/fn;->a()V

    iget-object v0, p0, Lcom/google/common/collect/fn;->b:Lcom/google/common/collect/fm;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/fn;->b:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fn;->d:Lcom/google/common/collect/fm;

    iget-object v0, p0, Lcom/google/common/collect/fn;->b:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fn;->b:Lcom/google/common/collect/fm;

    iget v0, p0, Lcom/google/common/collect/fn;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/fn;->a:I

    iget-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    return-object v0
.end method

.method private static b(Lcom/google/common/collect/fm;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private c()Lcom/google/common/collect/fm;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/fn;->a()V

    iget-object v0, p0, Lcom/google/common/collect/fn;->d:Lcom/google/common/collect/fm;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/fn;->d:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fn;->b:Lcom/google/common/collect/fm;

    iget-object v0, p0, Lcom/google/common/collect/fn;->d:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fn;->d:Lcom/google/common/collect/fm;

    iget v0, p0, Lcom/google/common/collect/fn;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fn;->a:I

    iget-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    iget-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    iput-object p1, v0, Lcom/google/common/collect/fm;->b:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/fm;

    invoke-static {p1}, Lcom/google/common/collect/fn;->b(Lcom/google/common/collect/fm;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/fn;->a()V

    iget-object v0, p0, Lcom/google/common/collect/fn;->b:Lcom/google/common/collect/fm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/fn;->a()V

    iget-object v0, p0, Lcom/google/common/collect/fn;->d:Lcom/google/common/collect/fm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/fn;->b()Lcom/google/common/collect/fm;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/fn;->a:I

    return v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/fn;->c()Lcom/google/common/collect/fm;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/fn;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/collect/fn;->a()V

    iget-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    iget-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    iget-object v1, p0, Lcom/google/common/collect/fn;->b:Lcom/google/common/collect/fm;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->d:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fn;->d:Lcom/google/common/collect/fm;

    iget v0, p0, Lcom/google/common/collect/fn;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fn;->a:I

    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/fn;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/fm;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fm;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    iget-object v0, p0, Lcom/google/common/collect/fn;->f:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/fn;->e:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/fn;->c:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->c:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fn;->b:Lcom/google/common/collect/fm;

    goto :goto_1
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/fm;

    invoke-static {p1}, Lcom/google/common/collect/fn;->a(Lcom/google/common/collect/fm;)V

    return-void
.end method
