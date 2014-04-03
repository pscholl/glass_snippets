.class public Lcom/x/google/masf/protocol/MultipartResponse;
.super Lcom/x/google/masf/protocol/Response;


# instance fields
.field private final bodyParts:[Lcom/x/google/masf/protocol/BodyPart;

.field private final numBodyParts:I

.field private final root:Lcom/x/google/masf/protocol/BodyPart;


# direct methods
.method public constructor <init>(IILcom/x/google/masf/protocol/BodyPart;[Lcom/x/google/masf/protocol/BodyPart;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/x/google/masf/protocol/Response;-><init>(II)V

    iput-object p3, p0, Lcom/x/google/masf/protocol/MultipartResponse;->root:Lcom/x/google/masf/protocol/BodyPart;

    iput-object p4, p0, Lcom/x/google/masf/protocol/MultipartResponse;->bodyParts:[Lcom/x/google/masf/protocol/BodyPart;

    array-length v0, p4

    iput v0, p0, Lcom/x/google/masf/protocol/MultipartResponse;->numBodyParts:I

    return-void
.end method

.method public constructor <init>(Lcom/x/google/masf/DelimitedInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/x/google/masf/protocol/Response;-><init>(Lcom/x/google/masf/DelimitedInputStream;)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v1}, Lcom/x/google/masf/protocol/BodyPart;->fromInputStream(Ljava/io/InputStream;)Lcom/x/google/masf/protocol/BodyPart;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/masf/protocol/MultipartResponse;->root:Lcom/x/google/masf/protocol/BodyPart;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lcom/x/google/masf/protocol/MultipartResponse;->numBodyParts:I

    iget v0, p0, Lcom/x/google/masf/protocol/MultipartResponse;->numBodyParts:I

    new-array v0, v0, [Lcom/x/google/masf/protocol/BodyPart;

    iput-object v0, p0, Lcom/x/google/masf/protocol/MultipartResponse;->bodyParts:[Lcom/x/google/masf/protocol/BodyPart;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/x/google/masf/protocol/MultipartResponse;->numBodyParts:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/x/google/masf/protocol/MultipartResponse;->bodyParts:[Lcom/x/google/masf/protocol/BodyPart;

    invoke-static {v1}, Lcom/x/google/masf/protocol/BodyPart;->fromInputStream(Ljava/io/InputStream;)Lcom/x/google/masf/protocol/BodyPart;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBodyParts()[Lcom/x/google/masf/protocol/BodyPart;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/protocol/MultipartResponse;->bodyParts:[Lcom/x/google/masf/protocol/BodyPart;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/masf/protocol/MultipartResponse;->root:Lcom/x/google/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/BodyPart;->getPayloadProvider()Lcom/x/google/masf/InputStreamProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/x/google/masf/protocol/BodyPart;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/protocol/MultipartResponse;->root:Lcom/x/google/masf/protocol/BodyPart;

    return-object v0
.end method

.method public getStreamLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/masf/protocol/MultipartResponse;->root:Lcom/x/google/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/BodyPart;->getPayloadProvider()Lcom/x/google/masf/InputStreamProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    return v0
.end method
