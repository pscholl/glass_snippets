.class public Lcom/x/google/masf/protocol/ProtocolReader;
.super Ljava/lang/Object;


# instance fields
.field private dataInputStream:Ljava/io/DataInputStream;

.field private delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognised protocol version"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/x/google/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/x/google/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    :cond_0
    iget-object v0, p0, Lcom/x/google/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iput-object v1, p0, Lcom/x/google/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    return-void
.end method

.method public getNextResponse()Lcom/x/google/masf/protocol/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/x/google/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/x/google/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    invoke-virtual {v1}, Lcom/x/google/masf/DelimitedInputStream;->waitForCompletion()V

    iput-object v0, p0, Lcom/x/google/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    :cond_0
    iget-object v1, p0, Lcom/x/google/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/x/google/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    const v3, 0x8100

    if-ne v2, v3, :cond_1

    new-instance v0, Lcom/x/google/masf/DelimitedInputStream;

    iget-object v2, p0, Lcom/x/google/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-direct {v0, v2, v1}, Lcom/x/google/masf/DelimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/x/google/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    new-instance v0, Lcom/x/google/masf/protocol/PlainResponse;

    iget-object v1, p0, Lcom/x/google/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    invoke-direct {v0, v1}, Lcom/x/google/masf/protocol/PlainResponse;-><init>(Lcom/x/google/masf/DelimitedInputStream;)V

    :goto_0
    return-object v0

    :cond_1
    const v3, 0x8101

    if-ne v2, v3, :cond_2

    new-instance v0, Lcom/x/google/masf/DelimitedInputStream;

    iget-object v2, p0, Lcom/x/google/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-direct {v0, v2, v1}, Lcom/x/google/masf/DelimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/x/google/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    new-instance v0, Lcom/x/google/masf/protocol/MultipartResponse;

    iget-object v1, p0, Lcom/x/google/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    invoke-direct {v0, v1}, Lcom/x/google/masf/protocol/MultipartResponse;-><init>(Lcom/x/google/masf/DelimitedInputStream;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/x/google/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_0
.end method
