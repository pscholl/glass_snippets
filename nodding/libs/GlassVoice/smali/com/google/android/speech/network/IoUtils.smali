.class public Lcom/google/android/speech/network/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IoUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHttpHeaders(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V
    .locals 3
    .parameter "conn"
    .parameter "httpServerInfo"

    .prologue
    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHttpHeaderKeyCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHttpHeaderKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHttpHeaderValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 1
    .parameter "socket"

    .prologue
    .line 27
    if-eqz p0, :cond_0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 3
    .parameter "socket"

    .prologue
    .line 48
    :try_start_0
    invoke-static {p0}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/net/SocketException;
    const-string v1, "IoUtils"

    const-string v2, "Unable to untag socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static uncompress([B)[B
    .locals 8
    .parameter "input"

    .prologue
    const/4 v6, 0x0

    .line 63
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v7, p0

    invoke-direct {v4, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 64
    .local v4, os:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    .local v3, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 67
    .local v1, counter:I
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 69
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, read:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 70
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 71
    add-int/2addr v1, v5

    goto :goto_0

    .line 74
    :cond_0
    if-lez v1, :cond_1

    .line 75
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 80
    .end local v0           #buffer:[B
    .end local v1           #counter:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/ByteArrayOutputStream;
    .end local v5           #read:I
    :cond_1
    :goto_1
    return-object v6

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, e:Ljava/io/IOException;
    goto :goto_1
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 3
    .parameter "socket"

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 39
    :try_start_0
    invoke-static {p0}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/net/SocketException;
    const-string v1, "IoUtils"

    const-string v2, "Unable to untag socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
