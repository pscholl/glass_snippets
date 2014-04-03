.class public abstract Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;
.super Ljava/lang/Object;
.source "GlasswareResourceLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/GlasswareResourceLoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "CacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DecodedData:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private decodedData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDecodedData;"
        }
    .end annotation
.end field

.field private fingerprint:J

.field private isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private nextValidationTime:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 75
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;,"Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry<TDecodedData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->decodedData:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->isUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method abstract decode([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TDecodedData;"
        }
    .end annotation
.end method

.method final getFingerprint()J
    .locals 2

    .prologue
    .line 110
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;,"Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry<TDecodedData;>;"
    iget-wide v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->fingerprint:J

    return-wide v0
.end method

.method final declared-synchronized getNextValidationTime()J
    .locals 2

    .prologue
    .line 114
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;,"Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry<TDecodedData;>;"
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->nextValidationTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final populate([BJ)V
    .locals 1
    .parameter "data"
    .parameter "fingerprint"

    .prologue
    .line 100
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;,"Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry<TDecodedData;>;"
    iput-wide p2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->fingerprint:J

    .line 101
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->decode([B)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->decodedData:Ljava/lang/Object;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 105
    return-void
.end method

.method final declared-synchronized setNextValidationTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 118
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;,"Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry<TDecodedData;>;"
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->nextValidationTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final waitForDecodedData()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDecodedData;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;,"Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry<TDecodedData;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$CacheEntry;->decodedData:Ljava/lang/Object;

    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 93
    invoke-static {}, Lcom/google/glass/util/GlasswareResourceLoadingTask;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Interrupted in waitForBitmap"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
