.class public Lcom/x/google/masf/services/resume/ResumablePlainRequest;
.super Lcom/x/google/masf/services/resume/ResumableRequest;


# instance fields
.field private request:Lcom/x/google/masf/protocol/PlainRequest;


# direct methods
.method public constructor <init>(Lcom/x/google/masf/protocol/PlainRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ResumableRequest;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/services/resume/ResumablePlainRequest;->request:Lcom/x/google/masf/protocol/PlainRequest;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/x/google/masf/protocol/PlainRequest;

    invoke-direct {v0, p1}, Lcom/x/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/x/google/masf/services/resume/ResumablePlainRequest;-><init>(Lcom/x/google/masf/protocol/PlainRequest;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/x/google/masf/protocol/PlainRequest;

    invoke-direct {v0, p1, p2}, Lcom/x/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/x/google/masf/services/resume/ResumablePlainRequest;-><init>(Lcom/x/google/masf/protocol/PlainRequest;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 1

    new-instance v0, Lcom/x/google/masf/protocol/PlainRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/x/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    invoke-direct {p0, v0}, Lcom/x/google/masf/services/resume/ResumablePlainRequest;-><init>(Lcom/x/google/masf/protocol/PlainRequest;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ResumablePlainRequest;->request:Lcom/x/google/masf/protocol/PlainRequest;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/PlainRequest;->dispose()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ResumablePlainRequest;->request:Lcom/x/google/masf/protocol/PlainRequest;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/PlainRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ResumablePlainRequest;->request:Lcom/x/google/masf/protocol/PlainRequest;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/PlainRequest;->getPayload()[B

    move-result-object v0

    return-object v0
.end method

.method public getStreamLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ResumablePlainRequest;->request:Lcom/x/google/masf/protocol/PlainRequest;

    invoke-virtual {v0}, Lcom/x/google/masf/protocol/PlainRequest;->getStreamLength()I

    move-result v0

    return v0
.end method

.method public setPayload(Lcom/x/google/masf/InputStreamProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ResumablePlainRequest;->request:Lcom/x/google/masf/protocol/PlainRequest;

    invoke-virtual {v0, p1}, Lcom/x/google/masf/protocol/PlainRequest;->setPayload(Lcom/x/google/masf/InputStreamProvider;)V

    return-void
.end method

.method public setPayload([B)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ResumablePlainRequest;->request:Lcom/x/google/masf/protocol/PlainRequest;

    invoke-virtual {v0, p1}, Lcom/x/google/masf/protocol/PlainRequest;->setPayload([B)V

    return-void
.end method
