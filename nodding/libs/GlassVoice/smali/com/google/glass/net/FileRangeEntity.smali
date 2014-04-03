.class Lcom/google/glass/net/FileRangeEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "FileRangeEntity.java"


# instance fields
.field private final begin:J

.field private final end:J

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "file"
    .parameter "contentType"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/glass/net/FileRangeEntity;->file:Ljava/io/File;

    .line 35
    iput-wide p3, p0, Lcom/google/glass/net/FileRangeEntity;->begin:J

    .line 36
    iput-wide p5, p0, Lcom/google/glass/net/FileRangeEntity;->end:J

    .line 37
    invoke-virtual {p0, p2}, Lcom/google/glass/net/FileRangeEntity;->setContentType(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/google/glass/net/FileRangeInputStream;

    iget-object v1, p0, Lcom/google/glass/net/FileRangeEntity;->file:Ljava/io/File;

    iget-wide v2, p0, Lcom/google/glass/net/FileRangeEntity;->begin:J

    iget-wide v4, p0, Lcom/google/glass/net/FileRangeEntity;->end:J

    iget-wide v6, p0, Lcom/google/glass/net/FileRangeEntity;->begin:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/net/FileRangeInputStream;-><init>(Ljava/io/File;JJ)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 4

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/glass/net/FileRangeEntity;->end:J

    iget-wide v2, p0, Lcom/google/glass/net/FileRangeEntity;->begin:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/glass/net/FileRangeEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 44
    .local v0, source:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 48
    return-void

    .line 46
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method
