.class Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;
.super Ljava/io/InputStream;
.source "Tee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/Tee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TeeSecondaryInputStream"
.end annotation


# instance fields
.field private mSharedStream:Lcom/google/android/speech/audio/Tee;

.field private final mStreamId:I


# direct methods
.method constructor <init>(Lcom/google/android/speech/audio/Tee;I)V
    .locals 0
    .parameter "sharedStream"
    .parameter "streamId"

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    .line 485
    iput p2, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mStreamId:I

    .line 486
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    iget v1, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mStreamId:I

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/Tee;->remove(I)V

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_0
    monitor-exit p0

    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Find some other app to be inefficient in."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    if-nez v1, :cond_0

    .line 496
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Secondary Tee stream closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 498
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    iget v2, p0, Lcom/google/android/speech/audio/Tee$TeeSecondaryInputStream;->mStreamId:I

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/speech/audio/Tee;->readSecondary(I[BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 499
    .local v0, bytesCopied:I
    if-nez v0, :cond_1

    .line 500
    const/4 v0, -0x1

    .line 502
    :cond_1
    monitor-exit p0

    return v0
.end method
