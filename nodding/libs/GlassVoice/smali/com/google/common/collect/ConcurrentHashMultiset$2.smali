.class Lcom/google/common/collect/ConcurrentHashMultiset$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private mapEntries:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 1
    .parameter

    .prologue
    .line 511
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$2;,"Lcom/google/common/collect/ConcurrentHashMultiset.2;"
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$2;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 512
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$2;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    #getter for: Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$2;->mapEntries:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected computeNext()Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$2;,"Lcom/google/common/collect/ConcurrentHashMultiset.2;"
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$2;->mapEntries:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$2;->endOfData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Multiset$Entry;

    .line 523
    :goto_0
    return-object v2

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$2;->mapEntries:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 521
    .local v1, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 522
    .local v0, count:I
    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 511
    .local p0, this:Lcom/google/common/collect/ConcurrentHashMultiset$2;,"Lcom/google/common/collect/ConcurrentHashMultiset.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$2;->computeNext()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
