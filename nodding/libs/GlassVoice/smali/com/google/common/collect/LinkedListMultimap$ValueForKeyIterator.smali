.class Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;
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
    name = "ValueForKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TV;>;"
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

.field final key:Ljava/lang/Object;

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
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "key"

    .prologue
    .line 454
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->key:Ljava/lang/Object;

    .line 456
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;

    .line 457
    .local v0, keyList:Lcom/google/common/collect/LinkedListMultimap$KeyList;,"Lcom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 458
    return-void

    .line 457
    :cond_0
    iget-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$KeyList;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V
    .locals 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "key"
    .end parameter
    .parameter "index"

    .prologue
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    const/4 v4, 0x0

    .line 469
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/LinkedListMultimap$KeyList;

    .line 471
    .local v1, keyList:Lcom/google/common/collect/LinkedListMultimap$KeyList;,"Lcom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 472
    .local v2, size:I
    :goto_0
    invoke-static {p3, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 473
    div-int/lit8 v3, v2, 0x2

    if-lt p3, v3, :cond_2

    .line 474
    if-nez v1, :cond_1

    move-object v3, v4

    :goto_1
    iput-object v3, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 475
    iput v2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    move v0, p3

    .line 476
    .end local p3
    .local v0, index:I
    :goto_2
    add-int/lit8 p3, v0, 0x1

    .end local v0           #index:I
    .restart local p3
    if-ge v0, v2, :cond_4

    .line 477
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous()Ljava/lang/Object;

    move v0, p3

    .end local p3
    .restart local v0       #index:I
    goto :goto_2

    .line 471
    .end local v0           #index:I
    .end local v2           #size:I
    .restart local p3
    :cond_0
    iget v2, v1, Lcom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    goto :goto_0

    .line 474
    .restart local v2       #size:I
    :cond_1
    iget-object v3, v1, Lcom/google/common/collect/LinkedListMultimap$KeyList;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1

    .line 480
    :cond_2
    if-nez v1, :cond_3

    move-object v3, v4

    :goto_3
    iput-object v3, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    move v0, p3

    .line 481
    .end local p3
    .restart local v0       #index:I
    :goto_4
    add-int/lit8 p3, v0, -0x1

    .end local v0           #index:I
    .restart local p3
    if-lez v0, :cond_4

    .line 482
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next()Ljava/lang/Object;

    move v0, p3

    .end local p3
    .restart local v0       #index:I
    goto :goto_4

    .line 480
    .end local v0           #index:I
    .restart local p3
    :cond_3
    iget-object v3, v1, Lcom/google/common/collect/LinkedListMultimap$KeyList;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_3

    .line 485
    :cond_4
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->key:Ljava/lang/Object;

    .line 486
    iput-object v4, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 487
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;
    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->access$700(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 541
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 543
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 490
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

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
    .line 502
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 496
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 497
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 498
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 514
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 508
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 509
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 510
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 518
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 522
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 523
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eq v0, v1, :cond_1

    .line 524
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 525
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 529
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/LinkedListMultimap$Node;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$Node;)V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 531
    return-void

    .line 522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 535
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 536
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
