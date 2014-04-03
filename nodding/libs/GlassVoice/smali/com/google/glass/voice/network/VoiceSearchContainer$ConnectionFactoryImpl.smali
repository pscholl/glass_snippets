.class Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"

# interfaces
.implements Lcom/google/android/speech/network/ConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/VoiceSearchContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionFactoryImpl"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private plainSocketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->context:Landroid/content/Context;

    .line 483
    return-void
.end method

.method private declared-synchronized maybeInitSocketConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)V
    .locals 3
    .parameter "serverInfo"

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->plainSocketFactory:Ljavax/net/SocketFactory;

    if-nez v0, :cond_0

    .line 488
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->plainSocketFactory:Ljavax/net/SocketFactory;

    .line 489
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getConnectionTimeoutMsec()I

    move-result v1

    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_0
    monitor-exit p0

    return-void

    .line 489
    :cond_1
    :try_start_1
    new-instance v0, Landroid/net/SSLSessionCache;

    iget-object v2, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Ljava/net/HttpURLConnection;
    .locals 2
    .parameter "httpServerInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter "httpServerInfo"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Opening HTTP connection to: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 530
    .local v0, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getReadTimeoutMsec()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 531
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getConnectionTimeoutMsec()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 532
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasChunkSize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getChunkSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 535
    :cond_0
    return-object v0
.end method

.method public openSocket(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)Ljava/net/Socket;
    .locals 8
    .parameter "serverInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 497
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->maybeInitSocketConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)V

    .line 499
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, host:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getPort()I

    move-result v1

    .line 502
    .local v1, port:I
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getUseSsl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Opening SSL connection: %s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3, v0, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    .line 510
    .local v2, socket:Ljava/net/Socket;
    :goto_0
    invoke-static {v2}, Lcom/google/android/speech/network/IoUtils;->tagSocket(Ljava/net/Socket;)V

    .line 511
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getOutBufferSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 512
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getInBufferSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 513
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getConnectionTimeoutMsec()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 515
    return-object v2

    .line 506
    .end local v2           #socket:Ljava/net/Socket;
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/VoiceSearchContainer;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Opening TCP connection: %s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    iget-object v3, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$ConnectionFactoryImpl;->plainSocketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v3, v0, v1}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    .restart local v2       #socket:Ljava/net/Socket;
    goto :goto_0
.end method
