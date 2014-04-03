.class public Lcom/x/google/masf/services/resume/ResumableRawRequest;
.super Lcom/x/google/masf/services/resume/ResumableRequest;


# instance fields
.field private inputStreamProvider:Lcom/x/google/masf/InputStreamProvider;


# direct methods
.method public constructor <init>(Lcom/x/google/masf/InputStreamProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ResumableRequest;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/services/resume/ResumableRawRequest;->inputStreamProvider:Lcom/x/google/masf/InputStreamProvider;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/ResumableRequest;-><init>()V

    new-instance v0, Lcom/x/google/masf/ByteArrayInputStreamProvider;

    invoke-direct {v0, p1}, Lcom/x/google/masf/ByteArrayInputStreamProvider;-><init>([B)V

    iput-object v0, p0, Lcom/x/google/masf/services/resume/ResumableRawRequest;->inputStreamProvider:Lcom/x/google/masf/InputStreamProvider;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ResumableRawRequest;->inputStreamProvider:Lcom/x/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/x/google/masf/InputStreamProvider;->dispose()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ResumableRawRequest;->inputStreamProvider:Lcom/x/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/x/google/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

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

    iget-object v0, p0, Lcom/x/google/masf/services/resume/ResumableRawRequest;->inputStreamProvider:Lcom/x/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/x/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    return v0
.end method
