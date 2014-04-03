.class final Lcom/google/common/collect/MapMakerInternalMap$CleanupMapTask;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CleanupMapTask"
.end annotation


# instance fields
.field final mapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 3266
    .local p1, map:Lcom/google/common/collect/MapMakerInternalMap;,"Lcom/google/common/collect/MapMakerInternalMap<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3267
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    .line 3268
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3271
    iget-object v5, p0, Lcom/google/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap;

    .line 3272
    .local v3, map:Lcom/google/common/collect/MapMakerInternalMap;,"Lcom/google/common/collect/MapMakerInternalMap<**>;"
    if-nez v3, :cond_0

    .line 3273
    new-instance v5, Ljava/util/concurrent/CancellationException;

    invoke-direct {v5}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v5

    .line 3276
    :cond_0
    iget-object v0, v3, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .local v0, arr$:[Lcom/google/common/collect/MapMakerInternalMap$Segment;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 3277
    .local v4, segment:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<**>;"
    invoke-virtual {v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 3276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3279
    .end local v4           #segment:Lcom/google/common/collect/MapMakerInternalMap$Segment;,"Lcom/google/common/collect/MapMakerInternalMap$Segment<**>;"
    :cond_1
    return-void
.end method
