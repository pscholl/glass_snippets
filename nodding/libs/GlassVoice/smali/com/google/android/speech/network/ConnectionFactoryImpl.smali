.class public Lcom/google/android/speech/network/ConnectionFactoryImpl;
.super Ljava/lang/Object;
.source "ConnectionFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/network/ConnectionFactory;


# static fields
.field private static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final NPN_PROTOCOLS:[[B = null

.field private static final TAG:Ljava/lang/String; = "ConnectionFactoryImpl"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPlainSocketFactory:Ljavax/net/SocketFactory;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mUserAgentSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [[B

    sput-object v0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->NPN_PROTOCOLS:[[B

    .line 36
    sget-object v0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->NPN_PROTOCOLS:[[B

    const/4 v1, 0x0

    const/16 v2, 0xb

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    .line 37
    return-void

    .line 36
    :array_0
    .array-data 0x1
        0x76t
        0x6ft
        0x69t
        0x63t
        0x65t
        0x73t
        0x65t
        0x61t
        0x72t
        0x63t
        0x68t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, v0}, Lcom/google/android/speech/network/ConnectionFactoryImpl;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;)V
    .locals 0
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, userAgentSupplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mUserAgentSupplier:Lcom/google/common/base/Supplier;

    .line 55
    return-void
.end method

.method private declared-synchronized maybeInitSocketConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)V
    .locals 3
    .parameter "serverInfo"

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mPlainSocketFactory:Ljavax/net/SocketFactory;

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mPlainSocketFactory:Ljavax/net/SocketFactory;

    .line 60
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getConnectionTimeoutMsec()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 64
    iget-object v0, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/google/android/speech/network/ConnectionFactoryImpl;->maybeSetNpnProtocols(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :cond_1
    :try_start_1
    new-instance v0, Landroid/net/SSLSessionCache;

    iget-object v2, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static maybeSetNpnProtocols(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 116
    instance-of v0, p0, Landroid/net/SSLCertificateSocketFactory;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 118
    check-cast p0, Landroid/net/SSLCertificateSocketFactory;

    .end local p0
    sget-object v0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->NPN_PROTOCOLS:[[B

    invoke-virtual {p0, v0}, Landroid/net/SSLCertificateSocketFactory;->setNpnProtocols([[B)V

    .line 120
    :cond_0
    return-void
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
    .line 93
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/speech/network/ConnectionFactoryImpl;->openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter "httpServerInfo"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 101
    .local v0, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getReadTimeoutMsec()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 102
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getConnectionTimeoutMsec()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 103
    iget-object v1, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mUserAgentSupplier:Lcom/google/common/base/Supplier;

    if-eqz v1, :cond_0

    .line 104
    const-string v2, "User-Agent"

    iget-object v1, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mUserAgentSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasChunkSize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getChunkSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 112
    :goto_0
    return-object v0

    .line 110
    :cond_1
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_0
.end method

.method public openSocket(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)Ljava/net/Socket;
    .locals 6
    .parameter "serverInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/speech/network/ConnectionFactoryImpl;->maybeInitSocketConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)V

    .line 72
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, host:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getPort()I

    move-result v1

    .line 75
    .local v1, port:I
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getUseSsl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const-string v3, "ConnectionFactoryImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening SSL connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v3, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v3, v0, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    .line 83
    .local v2, socket:Ljava/net/Socket;
    :goto_0
    invoke-static {v2}, Lcom/google/android/speech/network/IoUtils;->tagSocket(Ljava/net/Socket;)V

    .line 84
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getOutBufferSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 85
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getInBufferSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 86
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getConnectionTimeoutMsec()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 88
    return-object v2

    .line 79
    .end local v2           #socket:Ljava/net/Socket;
    :cond_0
    const-string v3, "ConnectionFactoryImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening TCP connection:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v3, p0, Lcom/google/android/speech/network/ConnectionFactoryImpl;->mPlainSocketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v3, v0, v1}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    .restart local v2       #socket:Ljava/net/Socket;
    goto :goto_0
.end method
