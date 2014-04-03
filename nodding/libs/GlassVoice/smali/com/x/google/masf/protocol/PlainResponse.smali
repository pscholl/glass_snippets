.class public Lcom/x/google/masf/protocol/PlainResponse;
.super Lcom/x/google/masf/protocol/Response;


# instance fields
.field private payload:Lcom/x/google/masf/protocol/EncodedPayload;


# direct methods
.method public constructor <init>(Lcom/x/google/masf/DelimitedInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/x/google/masf/protocol/Response;-><init>(Lcom/x/google/masf/DelimitedInputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v2, Lcom/x/google/masf/protocol/EncodedPayload;

    invoke-direct {v2, v1, v0, p1}, Lcom/x/google/masf/protocol/EncodedPayload;-><init>(Ljava/lang/String;ILcom/x/google/masf/DelimitedInputStream;)V

    iput-object v2, p0, Lcom/x/google/masf/protocol/PlainResponse;->payload:Lcom/x/google/masf/protocol/EncodedPayload;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/masf/protocol/PlainResponse;->payload:Lcom/x/google/masf/protocol/EncodedPayload;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/EncodedPayload;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getStreamLength()I
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/protocol/PlainResponse;->payload:Lcom/x/google/masf/protocol/EncodedPayload;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/EncodedPayload;->getStreamLength()I

    move-result v0

    return v0
.end method
