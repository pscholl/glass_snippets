.class abstract Lcom/google/common/cache/LocalCache$HashIterator;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field currentSegment:Lcom/google/common/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 1
    .parameter

    .prologue
    .line 4194
    .local p0, this:Lcom/google/common/cache/LocalCache$HashIterator;,"Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4195
    iget-object v0, p1, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    .line 4196
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4197
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->advance()V

    .line 4198
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    .prologue
    .line 4203
    .local p0, this:Lcom/google/common/cache/LocalCache$HashIterator;,"Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4205
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4223
    :cond_0
    :goto_0
    return-void

    .line 4209
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4213
    :cond_2
    iget v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_0

    .line 4214
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    .line 4215
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    iget v0, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_2

    .line 4216
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4217
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    .line 4218
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method advanceTo(Lcom/google/common/cache/LocalCache$ReferenceEntry;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 4259
    .local p0, this:Lcom/google/common/cache/LocalCache$HashIterator;,"Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    .local p1, entry:Lcom/google/common/cache/LocalCache$ReferenceEntry;,"Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :try_start_0
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v1

    .line 4260
    .local v1, now:J
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4261
    .local v0, key:Ljava/lang/Object;,"TK;"
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v4, p1, v1, v2}, Lcom/google/common/cache/LocalCache;->getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v3

    .line 4262
    .local v3, value:Ljava/lang/Object;,"TV;"
    if-eqz v3, :cond_0

    .line 4263
    new-instance v4, Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    iget-object v5, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {v4, v5, v0, v3}, Lcom/google/common/cache/LocalCache$WriteThroughEntry;-><init>(Lcom/google/common/cache/LocalCache;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4264
    const/4 v4, 0x1

    .line 4270
    iget-object v5, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v5}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    :goto_0
    return v4

    .line 4267
    :cond_0
    const/4 v4, 0x0

    .line 4270
    iget-object v5, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v5}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    .end local v0           #key:Ljava/lang/Object;,"TK;"
    .end local v1           #now:J
    .end local v3           #value:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentSegment:Lcom/google/common/cache/LocalCache$Segment;

    invoke-virtual {v5}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v4
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 4275
    .local p0, this:Lcom/google/common/cache/LocalCache$HashIterator;,"Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method nextEntry()Lcom/google/common/cache/LocalCache$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>.WriteThroughEntry;"
        }
    .end annotation

    .prologue
    .line 4279
    .local p0, this:Lcom/google/common/cache/LocalCache$HashIterator;,"Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    if-nez v0, :cond_0

    .line 4280
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 4282
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextExternal:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4283
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->advance()V

    .line 4284
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    return-object v0
.end method

.method nextInChain()Z
    .locals 1

    .prologue
    .line 4229
    .local p0, this:Lcom/google/common/cache/LocalCache$HashIterator;,"Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4230
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4231
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$HashIterator;->advanceTo(Lcom/google/common/cache/LocalCache$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4232
    const/4 v0, 0x1

    .line 4236
    :goto_1
    return v0

    .line 4230
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    goto :goto_0

    .line 4236
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method nextInTable()Z
    .locals 3

    .prologue
    .line 4243
    .local p0, this:Lcom/google/common/cache/LocalCache$HashIterator;,"Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    :cond_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    .line 4244
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextTableIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 4245
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->nextEntry:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$HashIterator;->advanceTo(Lcom/google/common/cache/LocalCache$ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4246
    :cond_1
    const/4 v0, 0x1

    .line 4250
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 4288
    .local p0, this:Lcom/google/common/cache/LocalCache$HashIterator;,"Lcom/google/common/cache/LocalCache<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4289
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$HashIterator;->lastReturned:Lcom/google/common/cache/LocalCache$WriteThroughEntry;

    .line 4291
    return-void

    .line 4288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
