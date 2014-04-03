.class public Lcom/x/google/masf/services/MobileSearchService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/masf/protocol/Request$Listener;


# static fields
.field private static final OUTPUT_ENCODING_XML:Ljava/lang/String; = "xml"

.field private static final OUTPUT_PARAM:Ljava/lang/String; = "output"

.field private static final QUERY_PARAM:Ljava/lang/String; = "q"

.field private static final SEARCH_URL:Ljava/lang/String; = "http://www.google.com/m/search"


# instance fields
.field output:Ljava/lang/String;

.field query:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/masf/services/MobileSearchService;->query:Ljava/lang/String;

    const-string v0, "xml"

    iput-object v0, p0, Lcom/x/google/masf/services/MobileSearchService;->output:Ljava/lang/String;

    return-void
.end method

.method private debugBufferAndDumpStreamToLog(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method


# virtual methods
.method public getRequestBytes()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeRequest(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "http://www.google.com/m/search"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "output"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/masf/services/MobileSearchService;->output:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/x/google/masf/protocol/PlainRequest;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/x/google/masf/services/MobileSearchService;->getRequestBytes()[B

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/x/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v1, p0}, Lcom/x/google/masf/protocol/Request;->setListener(Lcom/x/google/masf/protocol/Request$Listener;)V

    invoke-static {}, Lcom/x/google/masf/MobileServiceMux;->getSingleton()Lcom/x/google/masf/MobileServiceMux;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/x/google/masf/MobileServiceMux;->submitRequest(Lcom/x/google/masf/protocol/Request;Z)V

    return-void
.end method

.method public requestCompleted(Lcom/x/google/masf/protocol/Request;Lcom/x/google/masf/protocol/Response;)V
    .locals 2

    :try_start_0
    invoke-virtual {p2}, Lcom/x/google/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p2}, Lcom/x/google/masf/protocol/Response;->getStreamLength()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/x/google/masf/services/MobileSearchService;->debugBufferAndDumpStreamToLog(Ljava/io/InputStream;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestFailed(Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
