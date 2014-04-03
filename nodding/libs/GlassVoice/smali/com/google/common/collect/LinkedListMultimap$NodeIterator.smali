.class Lcom/google/common/collect/LinkedListMultimap$NodeIterator;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<",
        "Lcom/google/common/collect/LinkedListMultimap$Node",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field current:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field next:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field previous:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 1
    .parameter

    .prologue
    .line 312
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    .line 313
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 314
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;I)V
    .locals 3
    .parameter
    .parameter "index"

    .prologue
    .line 316
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->modCount:I
    invoke-static {v2}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v2

    iput v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    .line 317
    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v1

    .line 318
    .local v1, size:I
    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 319
    div-int/lit8 v2, v1, 0x2

    if-lt p2, v2, :cond_0

    .line 320
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 321
    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    move v0, p2

    .line 322
    .end local p2
    .local v0, index:I
    :goto_0
    add-int/lit8 p2, v0, 0x1

    .end local v0           #index:I
    .restart local p2
    if-ge v0, v1, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous()Lcom/google/common/collect/LinkedListMultimap$Node;

    move v0, p2

    .end local p2
    .restart local v0       #index:I
    goto :goto_0

    .line 326
    .end local v0           #index:I
    .restart local p2
    :cond_0
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    move v0, p2

    .line 327
    .end local p2
    .restart local v0       #index:I
    :goto_1
    add-int/lit8 p2, v0, -0x1

    .end local v0           #index:I
    .restart local p2
    if-lez v0, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next()Lcom/google/common/collect/LinkedListMultimap$Node;

    move v0, p2

    .end local p2
    .restart local v0       #index:I
    goto :goto_1

    .line 331
    .end local v0           #index:I
    .restart local p2
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 332
    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .prologue
    .line 335
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 336
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, e:Lcom/google/common/collect/LinkedListMultimap$Node;,"Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 305
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    check-cast p1, Lcom/google/common/collect/LinkedListMultimap$Node;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->add(Lcom/google/common/collect/LinkedListMultimap$Node;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 342
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 343
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 370
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 371
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 348
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 350
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 351
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 352
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 305
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next()Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 384
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    return v0
.end method

.method public previous()Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 376
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 378
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 379
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 380
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 305
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous()Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 388
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 356
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->checkForConcurrentModification()V

    .line 357
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 358
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eq v0, v1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 360
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->nextIndex:I

    .line 364
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/LinkedListMultimap$Node;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$Node;)V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 366
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$000(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->expectedModCount:I

    .line 367
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1
.end method

.method public set(Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, e:Lcom/google/common/collect/LinkedListMultimap$Node;,"Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 305
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    check-cast p1, Lcom/google/common/collect/LinkedListMultimap$Node;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->set(Lcom/google/common/collect/LinkedListMultimap$Node;)V

    return-void
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 401
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 402
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
