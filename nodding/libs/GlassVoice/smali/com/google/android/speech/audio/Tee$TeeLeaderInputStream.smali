.class Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;
.super Ljava/io/InputStream;
.source "Tee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/Tee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TeeLeaderInputStream"
.end annotation


# instance fields
.field private final mSharedStream:Lcom/google/android/speech/audio/Tee;


# direct methods
.method constructor <init>(Lcom/google/android/speech/audio/Tee;)V
    .locals 0
    .parameter "sharedStream"

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    .line 455
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/Tee;->remove(I)V

    .line 475
    iget-object v0, p0, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/Tee;->close()V

    .line 476
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 459
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Find some other app to be inefficient in."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    iget-object v1, p0, Lcom/google/android/speech/audio/Tee$TeeLeaderInputStream;->mSharedStream:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/speech/audio/Tee;->readLeader([BII)I

    move-result v0

    .line 465
    .local v0, bytesCopied:I
    if-nez v0, :cond_0

    .line 466
    const/4 v0, -0x1

    .line 468
    :cond_0
    return v0
.end method
