.class public Lcom/x/google/common/io/android/CountingByteChannel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/common/io/android/CountingByteChannel$Counter;
    }
.end annotation


# instance fields
.field private final channel:Ljava/nio/channels/ByteChannel;

.field private final counter:Lcom/x/google/common/io/android/CountingByteChannel$Counter;


# direct methods
.method constructor <init>(Ljava/nio/channels/ByteChannel;Lcom/x/google/common/io/android/CountingByteChannel$Counter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/common/io/android/CountingByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    iput-object p2, p0, Lcom/x/google/common/io/android/CountingByteChannel;->counter:Lcom/x/google/common/io/android/CountingByteChannel$Counter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/io/android/CountingByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/android/CountingByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/io/android/CountingByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/x/google/common/io/android/CountingByteChannel;->counter:Lcom/x/google/common/io/android/CountingByteChannel$Counter;

    invoke-interface {v1, v0}, Lcom/x/google/common/io/android/CountingByteChannel$Counter;->bytesRead(I)V

    :cond_0
    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/io/android/CountingByteChannel;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/x/google/common/io/android/CountingByteChannel;->counter:Lcom/x/google/common/io/android/CountingByteChannel$Counter;

    invoke-interface {v1, v0}, Lcom/x/google/common/io/android/CountingByteChannel$Counter;->bytesWritten(I)V

    :cond_0
    return v0
.end method
