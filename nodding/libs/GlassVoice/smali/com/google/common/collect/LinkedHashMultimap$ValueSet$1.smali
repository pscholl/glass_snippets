.class Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

.field toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)V
    .locals 1
    .parameter

    .prologue
    .line 360
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    #getter for: Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->access$000(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 363
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    #getter for: Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->access$100(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    return-void
.end method

.method private checkForComodification()V
    .locals 2

    .prologue
    .line 366
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSet.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    #getter for: Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->access$100(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 367
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 369
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 372
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSet.1;"
    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->checkForComodification()V

    .line 373
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSet.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 381
    .local v0, entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 382
    .local v1, result:Ljava/lang/Object;,"TV;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 383
    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->nextEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 384
    return-object v1
.end method

.method public remove()V
    .locals 7

    .prologue
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSet.1;"
    const/4 v6, 0x0

    .line 388
    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->checkForComodification()V

    .line 389
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/google/common/collect/Iterators;->checkRemove(Z)V

    .line 390
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-virtual {v5}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 391
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_2

    move v1, v6

    .line 392
    .local v1, hash:I
    :goto_1
    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    iget-object v6, v6, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    and-int v4, v5, v6

    .line 393
    .local v4, row:I
    const/4 v3, 0x0

    .line 394
    .local v3, prev:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    iget-object v5, v5, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v0, v5, v4

    .local v0, entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    :goto_2
    if-eqz v0, :cond_0

    .line 395
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    if-ne v0, v5, :cond_4

    .line 396
    if-nez v3, :cond_3

    .line 398
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    iget-object v5, v5, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v6, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v6, v5, v4

    .line 402
    :goto_3
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {v5}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 403
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {v5}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 404
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    invoke-static {v5}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->access$410(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)I

    .line 405
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->this$1:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    invoke-static {v5}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->access$104(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)I

    move-result v5

    iput v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    .line 409
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;->toRemove:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 410
    return-void

    .end local v0           #entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #prev:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .end local v4           #row:I
    :cond_1
    move v5, v6

    .line 389
    goto :goto_0

    .line 391
    .restart local v2       #o:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    .line 400
    .restart local v0       #entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .restart local v1       #hash:I
    .restart local v3       #prev:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .restart local v4       #row:I
    :cond_3
    iget-object v5, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object v5, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_3

    .line 394
    :cond_4
    move-object v3, v0

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_2
.end method
