.class Lcom/x/google/common/io/android/J2SeTcpConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/io/GoogleTcpConnection;


# instance fields
.field private final channel:Ljava/nio/channels/ByteChannel;

.field private dis:Ljava/io/DataInputStream;

.field private dos:Ljava/io/DataOutputStream;


# direct methods
.method constructor <init>(Lcom/x/google/common/io/android/J2SeTcpConnectionFactory;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/x/google/common/io/android/CountingByteChannel;

    invoke-static {v0}, Ljava/nio/channels/SocketChannel;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/x/google/common/io/android/CountingByteChannel;-><init>(Ljava/nio/channels/ByteChannel;Lcom/x/google/common/io/android/CountingByteChannel$Counter;)V

    iput-object v1, p0, Lcom/x/google/common/io/android/J2SeTcpConnection;->channel:Ljava/nio/channels/ByteChannel;

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

    iget-object v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnection;->channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    return-void
.end method

.method public notifyTimeout()V
    .locals 0

    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnection;->dis:Ljava/io/DataInputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/x/google/common/io/android/J2SeTcpConnection;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v1}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnection;->dis:Ljava/io/DataInputStream;

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnection;->dis:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnection;->dos:Ljava/io/DataOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/x/google/common/io/android/J2SeTcpConnection;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnection;->dos:Ljava/io/DataOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/io/android/J2SeTcpConnection;->dos:Ljava/io/DataOutputStream;

    return-object v0
.end method
