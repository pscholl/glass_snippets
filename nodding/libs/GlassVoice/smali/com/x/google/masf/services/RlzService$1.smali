.class final Lcom/x/google/masf/services/RlzService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/google/masf/services/RlzService;->updateRlz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/x/google/masf/protocol/Request;Lcom/x/google/masf/protocol/Response;)V
    .locals 2

    invoke-virtual {p2}, Lcom/x/google/masf/protocol/Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/x/google/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/services/RlzService;->setRlz(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
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
