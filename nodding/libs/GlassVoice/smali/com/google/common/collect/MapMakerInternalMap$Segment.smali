.class Lcom/google/common/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field volatile count:I

.field final evictionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final expirationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final map:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field threshold:I

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 2
    .parameter
    .parameter "initialCapacity"
    .parameter "maxSegmentSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, map:Lcom/google/common/collect/MapMakerInternalMap;,"Lcom/google/common/collect/MapMakerInternalMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1999
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1983
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2000
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2001
    iput p3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    .line 2002
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2004
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2006
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_0
    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2008
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2011
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    .line 2014
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;-><init>()V

    :goto_3
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    .line 2016
    return-void

    :cond_2
    move-object v0, v1

    .line 2004
    goto :goto_0

    .line 2008
    :cond_3
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2011
    :cond_4
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 2014
    :cond_5
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method clear()V
    .locals 5

    .prologue
    .line 2722
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v3, :cond_4

    .line 2723
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2725
    :try_start_0
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2726
    .local v2, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v3, v3, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v4, Lcom/google/common/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v3, v4, :cond_2

    .line 2727
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2728
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 2730
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2731
    sget-object v3, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2728
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 2727
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2736
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v1           #i:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2737
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2736
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2739
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clearReferenceQueues()V

    .line 2740
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 2741
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 2742
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2744
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2745
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2747
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2748
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    .line 2751
    .end local v1           #i:I
    .end local v2           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :cond_4
    return-void

    .line 2747
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2748
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v3
.end method

.method clearKeyReferenceQueue()V
    .locals 1

    .prologue
    .line 2139
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2140
    return-void
.end method

.method clearReferenceQueues()V
    .locals 1

    .prologue
    .line 2130
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2131
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clearKeyReferenceQueue()V

    .line 2133
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2134
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clearValueReferenceQueue()V

    .line 2136
    :cond_1
    return-void
.end method

.method clearValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z
    .locals 9
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    const/4 v7, 0x0

    .line 2864
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2866
    :try_start_0
    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2867
    .local v5, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int v3, p2, v8

    .line 2868
    .local v3, index:I
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2870
    .local v2, first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v2

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 2871
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2872
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v8

    if-ne v8, p2, :cond_1

    if-eqz v1, :cond_1

    iget-object v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v8, v8, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2874
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v6

    .line 2875
    .local v6, v:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    if-ne v6, p3, :cond_0

    .line 2876
    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    .line 2877
    .local v4, newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2878
    const/4 v7, 0x1

    .line 2886
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2887
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v4           #newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v6           #v:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :goto_1
    return v7

    .line 2886
    .restart local v1       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v6       #v:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2887
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2870
    .end local v6           #v:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2886
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2887
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2886
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v2           #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v3           #index:I
    .end local v5           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2887
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v7
.end method

.method clearValueReferenceQueue()V
    .locals 1

    .prologue
    .line 2143
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2144
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 3
    .parameter "key"
    .parameter "hash"

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v1, 0x0

    .line 2357
    :try_start_0
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 2358
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2359
    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2367
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    return v1

    .line 2362
    .restart local v0       #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 2367
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 6
    .parameter "value"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2378
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    :try_start_0
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v5, :cond_3

    .line 2379
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2380
    .local v4, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    .line 2381
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2382
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 2383
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v1

    .line 2384
    .local v1, entryValue:Ljava/lang/Object;,"TV;"
    if-nez v1, :cond_1

    .line 2382
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 2387
    :cond_1
    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v5, v5, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v5, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 2388
    const/4 v5, 0x1

    .line 2396
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v1           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :goto_2
    return v5

    .line 2381
    .restart local v0       #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v4       #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2394
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :cond_3
    const/4 v5, 0x0

    .line 2396
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v5
.end method

.method copyEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, original:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p2, newNext:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 2042
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2056
    :cond_0
    :goto_0
    return-object v0

    .line 2047
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    .line 2048
    .local v2, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2049
    .local v1, value:Ljava/lang/Object;,"TV;"
    if-nez v1, :cond_2

    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2054
    :cond_2
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v3, v3, Lcom/google/common/collect/MapMakerInternalMap;->entryFactory:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v3, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2055
    .local v0, newEntry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v2, v3, v1, v0}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    goto :goto_0
.end method

.method drainKeyReferenceQueue()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2101
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v1, 0x0

    .line 2102
    .local v1, i:I
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    .local v2, ref:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+TK;>;"
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 2104
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2105
    .local v0, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 2106
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    .line 2110
    .end local v0           #entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_1
    return-void
.end method

.method drainRecencyQueue()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2206
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 2211
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2212
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2214
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2215
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2218
    :cond_2
    return-void
.end method

.method drainReferenceQueues()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2090
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2091
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainKeyReferenceQueue()V

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2094
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainValueReferenceQueue()V

    .line 2096
    :cond_1
    return-void
.end method

.method drainValueReferenceQueue()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2115
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .line 2116
    .local v0, i:I
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .local v1, ref:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+TV;>;"
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 2118
    check-cast v2, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    .line 2119
    .local v2, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimValue(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    .line 2120
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 2124
    .end local v2           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_1
    return-void
.end method

.method enqueueNotification(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .locals 3
    .parameter
    .parameter "cause"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMaker$RemovalCause;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2262
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2263
    return-void
.end method

.method enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "hash"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "cause"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;",
            "Lcom/google/common/collect/MapMaker$RemovalCause;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2266
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v1, v2, :cond_0

    .line 2267
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/common/collect/MapMaker$RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2268
    .local v0, notification:Lcom/google/common/collect/MapMaker$RemovalNotification;,"Lcom/google/common/collect/MapMaker$RemovalNotification<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2270
    .end local v0           #notification:Lcom/google/common/collect/MapMaker$RemovalNotification;,"Lcom/google/common/collect/MapMaker$RemovalNotification<TK;TV;>;"
    :cond_0
    return-void
.end method

.method evictEntries()Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2280
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-lt v1, v2, :cond_1

    .line 2281
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2283
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2284
    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->SIZE:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;ILcom/google/common/collect/MapMaker$RemovalCause;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2285
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2287
    :cond_0
    const/4 v1, 0x1

    .line 2289
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method expand()V
    .locals 18
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2473
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2474
    .local v14, oldTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v12

    .line 2475
    .local v12, oldCapacity:I
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-lt v12, v0, :cond_0

    .line 2538
    :goto_0
    return-void

    .line 2489
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2490
    .local v5, newCount:I
    shl-int/lit8 v17, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v10

    .line 2491
    .local v10, newTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v17

    mul-int/lit8 v17, v17, 0x3

    div-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2492
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    .line 2493
    .local v8, newMask:I
    const/4 v13, 0x0

    .local v13, oldIndex:I
    :goto_1
    if-ge v13, v12, :cond_6

    .line 2496
    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2498
    .local v3, head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-eqz v3, :cond_1

    .line 2499
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v11

    .line 2500
    .local v11, next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v17

    and-int v4, v17, v8

    .line 2503
    .local v4, headIndex:I
    if-nez v11, :cond_2

    .line 2504
    invoke-virtual {v10, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2493
    .end local v4           #headIndex:I
    .end local v11           #next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2509
    .restart local v4       #headIndex:I
    .restart local v11       #next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_2
    move-object v15, v3

    .line 2510
    .local v15, tail:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move/from16 v16, v4

    .line 2511
    .local v16, tailIndex:I
    move-object v2, v11

    .local v2, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_2
    if-eqz v2, :cond_4

    .line 2512
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v17

    and-int v7, v17, v8

    .line 2513
    .local v7, newIndex:I
    move/from16 v0, v16

    if-eq v7, v0, :cond_3

    .line 2515
    move/from16 v16, v7

    .line 2516
    move-object v15, v2

    .line 2511
    :cond_3
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v2

    goto :goto_2

    .line 2519
    .end local v7           #newIndex:I
    :cond_4
    move/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2522
    move-object v2, v3

    :goto_3
    if-eq v2, v15, :cond_1

    .line 2523
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v17

    and-int v7, v17, v8

    .line 2524
    .restart local v7       #newIndex:I
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2525
    .local v9, newNext:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v6

    .line 2526
    .local v6, newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-eqz v6, :cond_5

    .line 2527
    invoke-virtual {v10, v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2522
    :goto_4
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v2

    goto :goto_3

    .line 2529
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeCollectedEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 2530
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 2536
    .end local v2           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v3           #head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v4           #headIndex:I
    .end local v6           #newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v7           #newIndex:I
    .end local v9           #newNext:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v11           #next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v15           #tail:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v16           #tailIndex:I
    :cond_6
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2537
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    goto/16 :goto_0
.end method

.method expireEntries()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2243
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2245
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2257
    :cond_0
    return-void

    .line 2250
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v3, v3, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v1

    .line 2252
    .local v1, now:J
    :cond_2
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2253
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v3

    sget-object v4, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;ILcom/google/common/collect/MapMaker$RemovalCause;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2254
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 2338
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2339
    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2340
    const/4 v1, 0x0

    .line 2351
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    :goto_0
    return-object v1

    .line 2343
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2344
    .local v1, value:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_1

    .line 2345
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2351
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2347
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2351
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v1           #value:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v2
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 3
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2304
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v2, :cond_3

    .line 2305
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getFirst(I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 2306
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 2305
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2310
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2311
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    if-nez v1, :cond_2

    .line 2312
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    goto :goto_1

    .line 2316
    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2322
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getFirst(I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 2
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2297
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2298
    .local v0, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v1
.end method

.method getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 3
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v1, 0x0

    .line 2326
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2327
    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_1

    move-object v0, v1

    .line 2333
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 2329
    .restart local v0       #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2330
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryExpireEntries()V

    move-object v0, v1

    .line 2331
    goto :goto_0
.end method

.method getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 2929
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2930
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    move-object v0, v1

    .line 2943
    :cond_0
    :goto_0
    return-object v0

    .line 2933
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2934
    .local v0, value:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_2

    .line 2935
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    move-object v0, v1

    .line 2936
    goto :goto_0

    .line 2939
    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2940
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryExpireEntries()V

    move-object v0, v1

    .line 2941
    goto :goto_0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2023
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, newTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2024
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-ne v0, v1, :cond_0

    .line 2026
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2028
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2029
    return-void
.end method

.method isCollected(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    const/4 v0, 0x0

    .line 2918
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2921
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .parameter
    .end parameter
    .parameter "hash"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2033
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryFactory:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2019
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .locals 1

    .prologue
    .line 2952
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 2953
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 2955
    :cond_0
    return-void
.end method

.method postWriteCleanup()V
    .locals 0

    .prologue
    .line 2972
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2973
    return-void
.end method

.method preWriteCleanup()V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2965
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2966
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter "hash"
    .parameter
    .parameter "onlyIfAbsent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    const/4 v9, 0x0

    .line 2401
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2403
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2405
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v10, 0x1

    .line 2406
    .local v5, newCount:I
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v5, v10, :cond_0

    .line 2407
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expand()V

    .line 2408
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v10, 0x1

    .line 2411
    :cond_0
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2412
    .local v7, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    and-int v4, p2, v10

    .line 2413
    .local v4, index:I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2416
    .local v3, first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v3

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_6

    .line 2417
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2418
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v10

    if-ne v10, p2, :cond_5

    if-eqz v1, :cond_5

    iget-object v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v10, v10, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v10, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2422
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v8

    .line 2423
    .local v8, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v8}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2425
    .local v2, entryValue:Ljava/lang/Object;,"TV;"
    if-nez v2, :cond_3

    .line 2426
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2427
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2428
    invoke-interface {v8}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v10

    if-nez v10, :cond_2

    .line 2429
    sget-object v10, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v2, v10}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2430
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2434
    :cond_1
    :goto_1
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2463
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2464
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v2, v9

    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v8           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :goto_2
    return-object v2

    .line 2431
    .restart local v1       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v2       #entryValue:Ljava/lang/Object;,"TV;"
    .restart local v8       #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictEntries()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2432
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v10, 0x1

    goto :goto_1

    .line 2436
    :cond_3
    if-eqz p4, :cond_4

    .line 2440
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordLockedRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2463
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2464
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 2444
    :cond_4
    :try_start_2
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2445
    sget-object v9, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v2, v9}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2446
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2463
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2464
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 2416
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v8           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_5
    :try_start_3
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2453
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_6
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2454
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v6

    .line 2455
    .local v6, newEntry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, v6, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2456
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2457
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictEntries()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2458
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v10, 0x1

    .line 2460
    :cond_7
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2463
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2464
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v2, v9

    goto :goto_2

    .line 2463
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v3           #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v4           #index:I
    .end local v5           #newCount:I
    .end local v6           #newEntry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v7           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2464
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v9
.end method

.method reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;I)Z
    .locals 9
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 2795
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2797
    :try_start_0
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v6, -0x1

    .line 2798
    .local v3, newCount:I
    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2799
    .local v5, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int v2, p2, v6

    .line 2800
    .local v2, index:I
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2802
    .local v1, first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v1

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 2803
    if-ne v0, p1, :cond_0

    .line 2804
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2805
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v6, p2, v7, v8}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2807
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    .line 2808
    .local v4, newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v6, -0x1

    .line 2809
    invoke-virtual {v5, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2810
    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    const/4 v6, 0x1

    .line 2817
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2818
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    .end local v4           #newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_1
    return v6

    .line 2802
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2815
    :cond_1
    const/4 v6, 0x0

    .line 2817
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2818
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2817
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v1           #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v2           #index:I
    .end local v3           #newCount:I
    .end local v5           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2818
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v6
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z
    .locals 10
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    const/4 v8, 0x0

    .line 2826
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2828
    :try_start_0
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v4, v9, -0x1

    .line 2829
    .local v4, newCount:I
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2830
    .local v6, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v3, p2, v9

    .line 2831
    .local v3, index:I
    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2833
    .local v2, first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v2

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 2834
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2835
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v9

    if-ne v9, p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v9, v9, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v9, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2837
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v7

    .line 2838
    .local v7, v:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    if-ne v7, p3, :cond_1

    .line 2839
    iget v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2840
    invoke-interface {p3}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v8, v9}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2841
    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v5

    .line 2842
    .local v5, newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v4, v8, -0x1

    .line 2843
    invoke-virtual {v6, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2844
    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2845
    const/4 v8, 0x1

    .line 2853
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2854
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2855
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v5           #newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v7           #v:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_0
    :goto_1
    return v8

    .line 2853
    .restart local v1       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v7       #v:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2854
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2855
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2833
    .end local v7           #v:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2853
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2854
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2855
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2853
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v2           #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v3           #index:I
    .end local v4           #newCount:I
    .end local v6           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2854
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2855
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    :cond_4
    throw v8
.end method

.method recordExpirationTime(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V
    .locals 2
    .parameter
    .parameter "expirationNanos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2224
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setExpirationTime(J)V

    .line 2225
    return-void
.end method

.method recordLockedRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2171
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2172
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 2174
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2176
    :cond_0
    return-void
.end method

.method recordRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2156
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 2159
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2160
    return-void
.end method

.method recordWrite(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2185
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2186
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2187
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2190
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v2, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    .line 2192
    .local v0, expiration:J
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 2193
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2195
    .end local v0           #expiration:J
    :cond_0
    return-void

    .line 2190
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v2, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    goto :goto_0
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 12
    .parameter "key"
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v10, 0x0

    .line 2636
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2638
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2640
    iget v11, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v6, v11, -0x1

    .line 2641
    .local v6, newCount:I
    iget-object v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2642
    .local v8, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v5, p2, v11

    .line 2643
    .local v5, index:I
    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2645
    .local v4, first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v1, v4

    .local v1, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_3

    .line 2646
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2647
    .local v2, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v11

    if-ne v11, p2, :cond_2

    if-eqz v2, :cond_2

    iget-object v11, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v11, v11, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v11, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2649
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v9

    .line 2650
    .local v9, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v9}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 2653
    .local v3, entryValue:Ljava/lang/Object;,"TV;"
    if-eqz v3, :cond_0

    .line 2654
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 2661
    .local v0, cause:Lcom/google/common/collect/MapMaker$RemovalCause;
    :goto_1
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2662
    invoke-virtual {p0, v2, p2, v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2663
    invoke-virtual {p0, v4, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v7

    .line 2664
    .local v7, newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v6, v10, -0x1

    .line 2665
    invoke-virtual {v8, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2666
    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2673
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2674
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    .end local v0           #cause:Lcom/google/common/collect/MapMaker$RemovalCause;
    .end local v2           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v3           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v7           #newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v9           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :goto_2
    return-object v3

    .line 2655
    .restart local v2       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v3       #entryValue:Ljava/lang/Object;,"TV;"
    .restart local v9       #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p0, v9}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2656
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #cause:Lcom/google/common/collect/MapMaker$RemovalCause;
    goto :goto_1

    .line 2673
    .end local v0           #cause:Lcom/google/common/collect/MapMaker$RemovalCause;
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2674
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v3, v10

    goto :goto_2

    .line 2645
    .end local v3           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v9           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2673
    .end local v2           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2674
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v3, v10

    goto :goto_2

    .line 2673
    .end local v1           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v4           #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v5           #index:I
    .end local v6           #newCount:I
    .end local v8           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2674
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v10
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 12
    .parameter "key"
    .parameter "hash"
    .parameter "value"

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    const/4 v10, 0x0

    .line 2679
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2681
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2683
    iget v11, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v6, v11, -0x1

    .line 2684
    .local v6, newCount:I
    iget-object v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2685
    .local v8, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v5, p2, v11

    .line 2686
    .local v5, index:I
    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2688
    .local v4, first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v1, v4

    .local v1, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_4

    .line 2689
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2690
    .local v2, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v11

    if-ne v11, p2, :cond_3

    if-eqz v2, :cond_3

    iget-object v11, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v11, v11, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v11, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2692
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v9

    .line 2693
    .local v9, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v9}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 2696
    .local v3, entryValue:Ljava/lang/Object;,"TV;"
    iget-object v11, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v11, v11, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v11, p3, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2697
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 2704
    .local v0, cause:Lcom/google/common/collect/MapMaker$RemovalCause;
    :goto_1
    iget v11, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2705
    invoke-virtual {p0, v2, p2, v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2706
    invoke-virtual {p0, v4, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v7

    .line 2707
    .local v7, newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v11, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v6, v11, -0x1

    .line 2708
    invoke-virtual {v8, v5, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2709
    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2710
    sget-object v11, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v11, :cond_0

    const/4 v10, 0x1

    .line 2716
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2717
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    .end local v0           #cause:Lcom/google/common/collect/MapMaker$RemovalCause;
    .end local v2           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v3           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v7           #newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v9           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :goto_2
    return v10

    .line 2698
    .restart local v2       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v3       #entryValue:Ljava/lang/Object;,"TV;"
    .restart local v9       #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p0, v9}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2699
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #cause:Lcom/google/common/collect/MapMaker$RemovalCause;
    goto :goto_1

    .line 2716
    .end local v0           #cause:Lcom/google/common/collect/MapMaker$RemovalCause;
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2717
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 2688
    .end local v3           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v9           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_3
    :try_start_2
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2716
    .end local v2           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2717
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 2716
    .end local v1           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v4           #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v5           #index:I
    .end local v6           #newCount:I
    .end local v8           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2717
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v10
.end method

.method removeCollectedEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2786
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2787
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2788
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2789
    return-void
.end method

.method removeEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;ILcom/google/common/collect/MapMaker$RemovalCause;)Z
    .locals 8
    .parameter
    .parameter "hash"
    .parameter "cause"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;I",
            "Lcom/google/common/collect/MapMaker$RemovalCause;",
            ")Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2893
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v6, -0x1

    .line 2894
    .local v3, newCount:I
    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2895
    .local v5, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int v2, p2, v6

    .line 2896
    .local v2, index:I
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2898
    .local v1, first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v1

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 2899
    if-ne v0, p1, :cond_0

    .line 2900
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2901
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, p2, v7, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2902
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    .line 2903
    .local v4, newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v6, -0x1

    .line 2904
    invoke-virtual {v5, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2905
    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2906
    const/4 v6, 0x1

    .line 2910
    .end local v4           #newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_1
    return v6

    .line 2898
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2910
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2767
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p2, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v4, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2768
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v4, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2770
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2771
    .local v1, newCount:I
    invoke-interface {p2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v2

    .line 2772
    .local v2, newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, p1

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eq v0, p2, :cond_1

    .line 2773
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v3

    .line 2774
    .local v3, next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 2775
    move-object v2, v3

    .line 2772
    :goto_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2777
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeCollectedEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 2778
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2781
    .end local v3           #next:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_1
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2782
    return-object v2
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    const/4 v9, 0x0

    .line 2592
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2594
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2596
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2597
    .local v7, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    and-int v4, p2, v10

    .line 2598
    .local v4, index:I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2600
    .local v3, first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v3

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 2601
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2602
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v10

    if-ne v10, p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v10, v10, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v10, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2606
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v8

    .line 2607
    .local v8, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v8}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2608
    .local v2, entryValue:Ljava/lang/Object;,"TV;"
    if-nez v2, :cond_1

    .line 2609
    invoke-virtual {p0, v8}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2610
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v10, -0x1

    .line 2611
    .local v5, newCount:I
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2612
    sget-object v10, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v1, p2, v2, v10}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2613
    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v6

    .line 2614
    .local v6, newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v10, -0x1

    .line 2615
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2616
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2630
    .end local v5           #newCount:I
    .end local v6           #newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2631
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v2, v9

    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v8           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :goto_1
    return-object v2

    .line 2621
    .restart local v1       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v2       #entryValue:Ljava/lang/Object;,"TV;"
    .restart local v8       #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2622
    sget-object v9, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v2, v9}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2623
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2630
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2631
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2600
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v8           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2630
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2631
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v2, v9

    goto :goto_1

    .line 2630
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v3           #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v4           #index:I
    .end local v7           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2631
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v9
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .parameter
    .parameter "hash"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, oldValue:Ljava/lang/Object;,"TV;"
    .local p4, newValue:Ljava/lang/Object;,"TV;"
    const/4 v9, 0x0

    .line 2541
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2543
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2545
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2546
    .local v7, table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    and-int v4, p2, v10

    .line 2547
    .local v4, index:I
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2549
    .local v3, first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    move-object v0, v3

    .local v0, e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_4

    .line 2550
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2551
    .local v1, entryKey:Ljava/lang/Object;,"TK;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v10

    if-ne v10, p2, :cond_3

    if-eqz v1, :cond_3

    iget-object v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v10, v10, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v10, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2555
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v8

    .line 2556
    .local v8, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {v8}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2557
    .local v2, entryValue:Ljava/lang/Object;,"TV;"
    if-nez v2, :cond_1

    .line 2558
    invoke-virtual {p0, v8}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2559
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v10, -0x1

    .line 2560
    .local v5, newCount:I
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2561
    sget-object v10, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v1, p2, v2, v10}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2562
    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v6

    .line 2563
    .local v6, newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iget v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v5, v10, -0x1

    .line 2564
    invoke-virtual {v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2565
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2586
    .end local v5           #newCount:I
    .end local v6           #newFirst:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2587
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v8           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :goto_1
    return v9

    .line 2570
    .restart local v1       #entryKey:Ljava/lang/Object;,"TK;"
    .restart local v2       #entryValue:Ljava/lang/Object;,"TV;"
    .restart local v8       #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v10, v10, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v10, p3, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2571
    iget v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2572
    sget-object v9, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v2, v9}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2573
    invoke-virtual {p0, v0, p4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2574
    const/4 v9, 0x1

    .line 2586
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2587
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2578
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordLockedRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2586
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2587
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2549
    .end local v2           #entryValue:Ljava/lang/Object;,"TV;"
    .end local v8           #valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    :cond_3
    :try_start_3
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 2586
    .end local v1           #entryKey:Ljava/lang/Object;,"TK;"
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2587
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2586
    .end local v0           #e:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v3           #first:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .end local v4           #index:I
    .end local v7           #table:Ljava/util/concurrent/atomic/AtomicReferenceArray;,"Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2587
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v9
.end method

.method runCleanup()V
    .locals 0

    .prologue
    .line 2976
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2977
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2978
    return-void
.end method

.method runLockedCleanup()V
    .locals 2

    .prologue
    .line 2981
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2983
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainReferenceQueues()V

    .line 2984
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expireEntries()V

    .line 2985
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2987
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2990
    :cond_0
    return-void

    .line 2987
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method runUnlockedCleanup()V
    .locals 1

    .prologue
    .line 2994
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2995
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->processPendingNotifications()V

    .line 2997
    :cond_0
    return-void
.end method

.method setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2064
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;,"Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->referenceValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    .line 2065
    .local v0, valueReference:Lcom/google/common/collect/MapMakerInternalMap$ValueReference;,"Lcom/google/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-interface {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    .line 2066
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordWrite(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 2067
    return-void
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .prologue
    .line 2075
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2077
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2079
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2082
    :cond_0
    return-void

    .line 2079
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method tryExpireEntries()V
    .locals 1

    .prologue
    .line 2231
    .local p0, this:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2233
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expireEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2235
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2239
    :cond_0
    return-void

    .line 2235
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method
