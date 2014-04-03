.class public Lcom/x/google/masf/protocol/EncodedPayload;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/masf/InputStreamProvider;


# instance fields
.field private payloadLength:I

.field private theInputStream:Lcom/x/google/masf/DelimitedInputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/x/google/masf/DelimitedInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_1

    iput p2, p0, Lcom/x/google/masf/protocol/EncodedPayload;->payloadLength:I

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    :goto_1
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p3}, Lcom/x/google/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/protocol/EncodedPayload;->payloadLength:I

    goto :goto_0

    :cond_2
    const-string v2, "n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognised encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lez p2, :cond_5

    new-instance v0, Lcom/x/google/masf/DelimitedInputStream;

    iget v1, p0, Lcom/x/google/masf/protocol/EncodedPayload;->payloadLength:I

    invoke-direct {v0, p3, v1}, Lcom/x/google/masf/DelimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/x/google/masf/protocol/EncodedPayload;->theInputStream:Lcom/x/google/masf/DelimitedInputStream;

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance v0, Lcom/x/google/masf/DelimitedInputStream;

    const v1, 0x7fffffff

    invoke-direct {v0, p3, v1}, Lcom/x/google/masf/DelimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/x/google/masf/protocol/EncodedPayload;->theInputStream:Lcom/x/google/masf/DelimitedInputStream;

    goto :goto_2
.end method


# virtual methods
.method public bufferAndDetach()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/protocol/EncodedPayload;->theInputStream:Lcom/x/google/masf/DelimitedInputStream;

    invoke-virtual {v0}, Lcom/x/google/masf/DelimitedInputStream;->bufferAndDetach()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/masf/protocol/EncodedPayload;->theInputStream:Lcom/x/google/masf/DelimitedInputStream;

    return-object v0
.end method

.method public getStreamLength()I
    .locals 1

    iget v0, p0, Lcom/x/google/masf/protocol/EncodedPayload;->payloadLength:I

    return v0
.end method
