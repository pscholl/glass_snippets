.class public final Lcom/google/glass/voice/network/ListenerStreamWrapper;
.super Ljava/io/InputStream;
.source "ListenerStreamWrapper.java"


# instance fields
.field private final delegate:Ljava/io/InputStream;

.field private final listener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;)V
    .locals 0
    .parameter "delegate"
    .parameter "listener"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/glass/voice/network/ListenerStreamWrapper;->delegate:Ljava/io/InputStream;

    .line 22
    iput-object p2, p0, Lcom/google/glass/voice/network/ListenerStreamWrapper;->listener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

    .line 23
    return-void
.end method

.method private dispatchingRead(Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;[BII)I
    .locals 3
    .parameter "listener"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/glass/voice/network/ListenerStreamWrapper;->delegate:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/network/ListenerStreamWrapper;->delegate:Ljava/io/InputStream;

    invoke-virtual {v1, p2, p3, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 47
    .local v0, read:I
    if-eqz p1, :cond_1

    .line 48
    invoke-interface {p1, p2, p3, v0}, Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;->onResampledAudioData([BII)V

    .line 50
    :cond_1
    return v0
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Single-byte read not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/voice/network/ListenerStreamWrapper;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/voice/network/ListenerStreamWrapper;->listener:Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/glass/voice/network/ListenerStreamWrapper;->dispatchingRead(Lcom/google/glass/voice/ResampleInputStream$ResampleInputStreamListener;[BII)I

    move-result v0

    return v0
.end method
