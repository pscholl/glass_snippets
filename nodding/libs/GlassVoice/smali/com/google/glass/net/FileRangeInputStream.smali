.class public Lcom/google/glass/net/FileRangeInputStream;
.super Ljava/io/InputStream;
.source "FileRangeInputStream.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private bytesToRead:J

.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/FileRangeInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JJ)V
    .locals 2
    .parameter "file"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    iput-wide p4, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    .line 31
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/net/FileRangeInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 32
    iget-object v0, p0, Lcom/google/glass/net/FileRangeInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/google/glass/net/FileRangeInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stream closed with %s bytes left unread"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/google/glass/net/FileRangeInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 63
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 37
    iget-wide v2, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/google/glass/net/FileRangeInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 39
    .local v0, byteRead:I
    if-eq v0, v1, :cond_0

    .line 40
    iget-wide v1, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    .line 44
    .end local v0           #byteRead:I
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-wide v1, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/google/glass/net/FileRangeInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    int-to-long v3, p3

    iget-wide v5, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 51
    .local v0, bytesRead:I
    if-lez v0, :cond_0

    .line 52
    iget-wide v1, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    .line 56
    .end local v0           #bytesRead:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
