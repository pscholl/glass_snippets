.class public abstract Lcom/x/google/masf/protocol/Response;
.super Lcom/x/google/masf/protocol/Block;

# interfaces
.implements Lcom/x/google/masf/InputStreamProvider;


# static fields
.field private static logger:Lcom/x/google/debug/LogSource;


# instance fields
.field protected delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/x/google/masf/protocol/Response;

    invoke-static {v0}, Lcom/x/google/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/x/google/debug/LogSource;

    move-result-object v0

    sput-object v0, Lcom/x/google/masf/protocol/Response;->logger:Lcom/x/google/debug/LogSource;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/x/google/masf/protocol/Block;-><init>()V

    invoke-virtual {p0, p1}, Lcom/x/google/masf/protocol/Response;->setId(I)V

    iput p2, p0, Lcom/x/google/masf/protocol/Response;->statusCode:I

    return-void
.end method

.method public constructor <init>(Lcom/x/google/masf/DelimitedInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/x/google/masf/protocol/Block;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/protocol/Response;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/x/google/masf/protocol/Response;->setId(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/x/google/masf/protocol/Response;->statusCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/x/google/masf/protocol/Response;->logger:Lcom/x/google/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/x/google/masf/protocol/Response;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/x/google/masf/protocol/Response;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/x/google/masf/protocol/Response;->logger:Lcom/x/google/debug/LogSource;

    const-string v2, "Response() - IOException when reading block payload"

    invoke-virtual {v1, v2, v0}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public bufferAndDetach()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/protocol/Response;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/protocol/Response;->delimitedInputStream:Lcom/x/google/masf/DelimitedInputStream;

    invoke-virtual {v0}, Lcom/x/google/masf/DelimitedInputStream;->bufferAndDetach()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/x/google/masf/protocol/Response;->statusCode:I

    return v0
.end method

.method public abstract getStreamLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
