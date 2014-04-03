.class final Lcom/google/common/collect/fo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field c:Lcom/google/common/collect/fm;

.field d:Lcom/google/common/collect/fm;

.field e:Lcom/google/common/collect/fm;

.field final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/fo;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/fo;->a:Ljava/lang/Object;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/fo;->c:Lcom/google/common/collect/fm;

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/fm;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V
    .locals 4

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/common/collect/fo;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fh;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p3, v1}, Lcom/google/common/base/ai;->b(II)I

    div-int/lit8 v3, v1, 0x2

    if-lt p3, v3, :cond_2

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/fo;->e:Lcom/google/common/collect/fm;

    iput v1, p0, Lcom/google/common/collect/fo;->b:I

    :goto_2
    add-int/lit8 v0, p3, 0x1

    if-ge p3, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/common/collect/fo;->previous()Ljava/lang/Object;

    move p3, v0

    goto :goto_2

    :cond_0
    iget v1, v0, Lcom/google/common/collect/fh;->c:I

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/common/collect/fh;->b:Lcom/google/common/collect/fm;

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lcom/google/common/collect/fo;->c:Lcom/google/common/collect/fm;

    :goto_4
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_4

    invoke-virtual {p0}, Lcom/google/common/collect/fo;->next()Ljava/lang/Object;

    move p3, v0

    goto :goto_4

    :cond_3
    iget-object v0, v0, Lcom/google/common/collect/fh;->a:Lcom/google/common/collect/fm;

    goto :goto_3

    :cond_4
    iput-object p2, p0, Lcom/google/common/collect/fo;->a:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/fo;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fo;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/fo;->c:Lcom/google/common/collect/fm;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fm;)Lcom/google/common/collect/fm;
    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->access$700(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fm;)Lcom/google/common/collect/fm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fo;->e:Lcom/google/common/collect/fm;

    iget v0, p0, Lcom/google/common/collect/fo;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/fo;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fo;->c:Lcom/google/common/collect/fm;

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

    iget-object v0, p0, Lcom/google/common/collect/fo;->e:Lcom/google/common/collect/fm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fo;->c:Lcom/google/common/collect/fm;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/fo;->c:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fo;->e:Lcom/google/common/collect/fm;

    iget-object v0, p0, Lcom/google/common/collect/fo;->c:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fo;->c:Lcom/google/common/collect/fm;

    iget v0, p0, Lcom/google/common/collect/fo;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/fo;->b:I

    iget-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/fo;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fo;->e:Lcom/google/common/collect/fm;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/fo;->e:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fo;->c:Lcom/google/common/collect/fm;

    iget-object v0, p0, Lcom/google/common/collect/fo;->e:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->f:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fo;->e:Lcom/google/common/collect/fm;

    iget v0, p0, Lcom/google/common/collect/fo;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fo;->b:I

    iget-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/fo;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    iget-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    iget-object v1, p0, Lcom/google/common/collect/fo;->c:Lcom/google/common/collect/fm;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->f:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fo;->e:Lcom/google/common/collect/fm;

    iget v0, p0, Lcom/google/common/collect/fo;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fo;->b:I

    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/fo;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/fm;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fm;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    iget-object v0, v0, Lcom/google/common/collect/fm;->e:Lcom/google/common/collect/fm;

    iput-object v0, p0, Lcom/google/common/collect/fo;->c:Lcom/google/common/collect/fm;

    goto :goto_1
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    iget-object v0, p0, Lcom/google/common/collect/fo;->d:Lcom/google/common/collect/fm;

    iput-object p1, v0, Lcom/google/common/collect/fm;->b:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
