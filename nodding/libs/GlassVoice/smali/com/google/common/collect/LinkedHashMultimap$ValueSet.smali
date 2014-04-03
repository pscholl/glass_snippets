.class final Lcom/google/common/collect/LinkedHashMultimap$ValueSet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "LinkedHashMultimap.java"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private modCount:I

.field private size:I

.field final synthetic this$0:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V
    .locals 4
    .parameter
    .parameter
    .parameter "expectedValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    const/4 v2, 0x0

    .line 330
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    .line 322
    iput v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 323
    iput v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    .line 331
    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->key:Ljava/lang/Object;

    .line 332
    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 333
    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 335
    const-wide/high16 v2, 0x3ff0

    invoke-static {p3, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v1

    .line 338
    .local v1, tableSize:I
    new-array v0, v1, [Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 339
    .local v0, hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 340
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .locals 1
    .parameter "x0"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    return v0
.end method

.method static synthetic access$104(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 314
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    return v0
.end method

.method private rehashIfNecessary()V
    .locals 9

    .prologue
    .line 457
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    iget v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    iget-object v6, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v6, v6

    const-wide/high16 v7, 0x3ff0

    invoke-static {v5, v6, v7, v8}, Lcom/google/common/collect/Hashing;->needsResizing(IID)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 459
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 460
    .local v1, hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iput-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 461
    array-length v5, v1

    add-int/lit8 v2, v5, -0x1

    .line 462
    .local v2, mask:I
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .local v0, entry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    :goto_0
    if-eq v0, p0, :cond_0

    move-object v4, v0

    .line 464
    check-cast v4, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 465
    .local v4, valueEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget v5, v4, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->valueHash:I

    invoke-static {v5}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v5

    and-int v3, v5, v2

    .line 466
    .local v3, row:I
    aget-object v5, v1, v3

    iput-object v5, v4, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 467
    aput-object v4, v1, v3

    .line 462
    invoke-interface {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    goto :goto_0

    .line 470
    .end local v0           #entry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    .end local v1           #hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .end local v2           #mask:I
    .end local v3           #row:I
    .end local v4           #valueEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 8
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    const/4 v5, 0x0

    .line 434
    if-nez p1, :cond_0

    move v1, v5

    .line 435
    .local v1, hash:I
    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v6

    iget-object v7, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    and-int v3, v6, v7

    .line 437
    .local v3, row:I
    iget-object v6, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v4, v6, v3

    .line 438
    .local v4, rowHead:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    move-object v0, v4

    .local v0, entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 439
    iget v6, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->valueHash:I

    if-ne v1, v6, :cond_1

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 453
    :goto_2
    return v5

    .line 434
    .end local v0           #entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v3           #row:I
    .end local v4           #rowHead:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 438
    .restart local v0       #entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .restart local v1       #hash:I
    .restart local v3       #row:I
    .restart local v4       #rowHead:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    :cond_1
    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_1

    .line 444
    :cond_2
    new-instance v2, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->key:Ljava/lang/Object;

    invoke-direct {v2, v5, p1, v1, v4}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 445
    .local v2, newEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {v5, v2}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 446
    #calls: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {v2, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 447
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    #getter for: Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    invoke-static {v5}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getPredecessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v5

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {v5, v2}, Lcom/google/common/collect/LinkedHashMultimap;->access$700(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 448
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    #getter for: Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    invoke-static {v5}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object v5

    #calls: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {v2, v5}, Lcom/google/common/collect/LinkedHashMultimap;->access$700(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 449
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v2, v5, v3

    .line 450
    iget v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 451
    iget v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    .line 452
    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->rehashIfNecessary()V

    .line 453
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 498
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 499
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 500
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .local v0, entry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    :goto_0
    if-eq v0, p0, :cond_0

    move-object v1, v0

    .line 502
    check-cast v1, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 503
    .local v1, valueEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    #calls: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 500
    invoke-interface {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    goto :goto_0

    .line 505
    .end local v1           #valueEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    :cond_0
    #calls: Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {p0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 506
    iget v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    .line 507
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    const/4 v3, 0x0

    .line 421
    if-nez p1, :cond_1

    move v1, v3

    .line 422
    .local v1, hash:I
    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    and-int v2, v4, v5

    .line 424
    .local v2, row:I
    iget-object v4, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v0, v4, v2

    .local v0, entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 425
    iget v4, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->valueHash:I

    if-ne v1, v4, :cond_2

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    const/4 v3, 0x1

    .line 429
    :cond_0
    return v3

    .line 421
    .end local v0           #entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #row:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 424
    .restart local v0       #entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .restart local v1       #hash:I
    .restart local v2       #row:I
    :cond_2
    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_1
.end method

.method public getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method public getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    const/4 v4, 0x0

    .line 474
    if-nez p1, :cond_1

    move v1, v4

    .line 475
    .local v1, hash:I
    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    and-int v3, v5, v6

    .line 477
    .local v3, row:I
    const/4 v2, 0x0

    .line 478
    .local v2, prev:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v0, v5, v3

    .local v0, entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 479
    iget v5, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->valueHash:I

    if-ne v1, v5, :cond_3

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 480
    if-nez v2, :cond_2

    .line 482
    iget-object v4, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v5, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v5, v4, v3

    .line 486
    :goto_2
    #calls: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 487
    #calls: Lcom/google/common/collect/LinkedHashMultimap;->deleteFromMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 488
    iget v4, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 489
    iget v4, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    .line 490
    const/4 v4, 0x1

    .line 493
    :cond_0
    return v4

    .line 474
    .end local v0           #entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #prev:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .end local v3           #row:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 484
    .restart local v0       #entry:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .restart local v1       #hash:I
    .restart local v2       #prev:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .restart local v3       #row:I
    :cond_2
    iget-object v4, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object v4, v2, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_2

    .line 478
    :cond_3
    move-object v2, v0

    iget-object v0, v0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_1
.end method

.method public setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    .local p1, entry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 352
    return-void
.end method

.method public setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    .local p1, entry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 356
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 416
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>.ValueSet;"
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    return v0
.end method
