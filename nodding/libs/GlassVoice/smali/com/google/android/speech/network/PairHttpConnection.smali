.class public Lcom/google/android/speech/network/PairHttpConnection;
.super Ljava/lang/Object;
.source "PairHttpConnection.java"

# interfaces
.implements Lcom/google/android/speech/network/S3Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/network/PairHttpConnection$1;,
        Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;,
        Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;,
        Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final READER_DOWN_THREAD_NAME:Ljava/lang/String; = "PairHttpReaderDown"

.field public static final READER_UP_THREAD_NAME:Ljava/lang/String; = "PairHttpReaderUp"

.field private static final TAG:Ljava/lang/String; = "PairHttpConnection"


# instance fields
.field private final mAcceptUpstreamResponses:Z

.field private mCallback:Lcom/google/android/speech/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionFactory:Lcom/google/android/speech/network/ConnectionFactory;

.field private mDownloadThread:Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;

.field private mOutput:Lcom/google/android/speech/message/S3RequestStream;

.field private final mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

.field private mResponseState:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mSameThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

.field private mUpResponseThread:Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;

.field private mUpUrl:Ljava/net/URL;

.field private mUploadConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;Lcom/google/android/speech/network/ConnectionFactory;Z)V
    .locals 1
    .parameter "httpServerInfo"
    .parameter "connectionFactory"
    .parameter "acceptUpstreamResponses"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mSameThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 87
    iput-object p1, p0, Lcom/google/android/speech/network/PairHttpConnection;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 88
    iput-object p2, p0, Lcom/google/android/speech/network/PairHttpConnection;->mConnectionFactory:Lcom/google/android/speech/network/ConnectionFactory;

    .line 89
    iput-boolean p3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mAcceptUpstreamResponses:Z

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/network/ConnectionFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mConnectionFactory:Lcom/google/android/speech/network/ConnectionFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/speech/network/PairHttpConnection;Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/speech/network/PairHttpConnection;->maybeSetCompressionHeader(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/speech/network/PairHttpConnection;)Lcom/google/android/speech/callback/Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mCallback:Lcom/google/android/speech/callback/Callback;

    return-object v0
.end method

.method private static generateKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleEndOfData()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 181
    const/4 v11, -0x1

    .line 183
    .local v11, upResponseCode:I
    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mOutput:Lcom/google/android/speech/message/S3RequestStream;

    invoke-virtual {v0}, Lcom/google/android/speech/message/S3RequestStream;->close()V

    .line 184
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mOutput:Lcom/google/android/speech/message/S3RequestStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    invoke-direct {p0, v11}, Lcom/google/android/speech/network/PairHttpConnection;->verifyResponseCodeAndUrl(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mCallback:Lcom/google/android/speech/callback/Callback;

    new-instance v1, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v3, "[Upload] bad response"

    invoke-direct {v1, v3}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V

    .line 238
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v7

    .line 187
    .local v7, ioe:Ljava/io/IOException;
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mCallback:Lcom/google/android/speech/callback/Callback;

    new-instance v1, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v3, "[Upload] Failed to send request"

    invoke-direct {v1, v3, v7}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    .end local v7           #ioe:Ljava/io/IOException;
    :cond_0
    const/4 v8, 0x0

    .line 199
    .local v8, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 200
    .local v2, responseStream:Lcom/google/android/speech/message/S3ResponseStream;
    const/4 v5, 0x0

    .line 201
    .local v5, response:Lcom/google/speech/s3/S3$S3Response;
    const/4 v10, 0x0

    .line 209
    .local v10, upHasResponse:Z
    :try_start_1
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 210
    new-instance v9, Lcom/google/android/speech/message/S3ResponseStream;

    invoke-direct {v9, v8}, Lcom/google/android/speech/message/S3ResponseStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    .end local v2           #responseStream:Lcom/google/android/speech/message/S3ResponseStream;
    .local v9, responseStream:Lcom/google/android/speech/message/S3ResponseStream;
    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/speech/message/S3ResponseStream;->read()Lcom/google/speech/s3/S3$S3Response;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 214
    const/4 v10, 0x1

    move-object v2, v9

    .line 221
    .end local v9           #responseStream:Lcom/google/android/speech/message/S3ResponseStream;
    .restart local v2       #responseStream:Lcom/google/android/speech/message/S3ResponseStream;
    :goto_1
    if-eqz v10, :cond_1

    .line 223
    sget-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UP:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {p0, v0}, Lcom/google/android/speech/network/PairHttpConnection;->setResponseState(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z

    .line 224
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v0, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;

    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Lcom/google/android/speech/network/PairHttpConnection;->mCallback:Lcom/google/android/speech/callback/Callback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;-><init>(Lcom/google/android/speech/network/PairHttpConnection;Lcom/google/android/speech/message/S3ResponseStream;Ljava/net/HttpURLConnection;Lcom/google/android/speech/callback/Callback;Lcom/google/speech/s3/S3$S3Response;)V

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUpResponseThread:Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;

    .line 232
    iput-object v12, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    .line 234
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUpResponseThread:Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;

    invoke-virtual {v0}, Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;->start()V

    goto :goto_0

    .line 216
    :catch_1
    move-exception v6

    .line 218
    .local v6, ignored:Ljava/io/IOException;
    :goto_2
    invoke-static {v8}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 236
    .end local v6           #ignored:Ljava/io/IOException;
    :cond_1
    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 216
    .end local v2           #responseStream:Lcom/google/android/speech/message/S3ResponseStream;
    .restart local v9       #responseStream:Lcom/google/android/speech/message/S3ResponseStream;
    :catch_2
    move-exception v6

    move-object v2, v9

    .end local v9           #responseStream:Lcom/google/android/speech/message/S3ResponseStream;
    .restart local v2       #responseStream:Lcom/google/android/speech/message/S3ResponseStream;
    goto :goto_2
.end method

.method private maybeSetCompressionHeader(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V
    .locals 2
    .parameter "conn"
    .parameter "info"

    .prologue
    .line 537
    invoke-virtual {p2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getDisableCompression()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    const-string v0, "X-S3-Send-Compressible"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    return-void
.end method

.method private verifyResponseCodeAndUrl(I)Z
    .locals 4
    .parameter "responseCode"

    .prologue
    const/4 v0, 0x0

    .line 241
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    .line 242
    const-string v1, "PairHttpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Upload] response code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return v0

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUpUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    const-string v1, "PairHttpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Upload] unexpected redirect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mSameThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 150
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mOutput:Lcom/google/android/speech/message/S3RequestStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUpResponseThread:Lcom/google/android/speech/network/PairHttpConnection$UpResponseThread;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mDownloadThread:Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 158
    return-void
.end method

.method public connect(Lcom/google/android/speech/callback/Callback;Lcom/google/speech/s3/S3$S3Request;)V
    .locals 7
    .parameter
    .parameter "initial"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/speech/s3/S3$S3Request;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    .local p1, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/exception/RecognizeException;>;"
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mSameThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v3}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 97
    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UNKNOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {p0, v3}, Lcom/google/android/speech/network/PairHttpConnection;->setResponseState(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z

    .line 98
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/speech/callback/Callback;

    iput-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mCallback:Lcom/google/android/speech/callback/Callback;

    .line 99
    invoke-static {}, Lcom/google/android/speech/network/PairHttpConnection;->generateKey()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, key:Ljava/lang/String;
    :try_start_0
    new-instance v3, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;

    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/android/speech/network/PairHttpConnection;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;-><init>(Lcom/google/android/speech/network/PairHttpConnection;Ljava/net/URL;Lcom/google/android/speech/network/PairHttpConnection$1;)V

    iput-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mDownloadThread:Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;

    .line 104
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mDownloadThread:Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;

    invoke-virtual {v3}, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->start()V

    .line 108
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mPairHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getUp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v2

    .line 109
    .local v2, upHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUpUrl:Ljava/net/URL;

    .line 112
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mConnectionFactory:Lcom/google/android/speech/network/ConnectionFactory;

    iget-object v4, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUpUrl:Ljava/net/URL;

    invoke-interface {v3, v2, v4}, Lcom/google/android/speech/network/ConnectionFactory;->openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    .line 113
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-static {v3, v2}, Lcom/google/android/speech/network/IoUtils;->addHttpHeaders(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V

    .line 114
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v3, v2}, Lcom/google/android/speech/network/PairHttpConnection;->maybeSetCompressionHeader(Ljava/net/HttpURLConnection;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)V

    .line 115
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 116
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 117
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 122
    new-instance v3, Lcom/google/android/speech/message/S3RequestStream;

    iget-object v4, p0, Lcom/google/android/speech/network/PairHttpConnection;->mUploadConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getHeader()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/speech/message/S3RequestStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mOutput:Lcom/google/android/speech/message/S3RequestStream;

    .line 124
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mOutput:Lcom/google/android/speech/message/S3RequestStream;

    invoke-virtual {v3, p2}, Lcom/google/android/speech/message/S3RequestStream;->writeHeader(Lcom/google/speech/s3/S3$S3Request;)V

    .line 127
    iget-object v3, p0, Lcom/google/android/speech/network/PairHttpConnection;->mDownloadThread:Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;

    invoke-virtual {v3}, Lcom/google/android/speech/network/PairHttpConnection$DownloadThread;->waitForConnection()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Timed out / error during connect"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2           #upHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PairHttpConnection"

    const-string v4, "[Upload] Connection error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    invoke-virtual {p0}, Lcom/google/android/speech/network/PairHttpConnection;->close()V

    .line 138
    throw v0

    .line 140
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #upHttpServerInfo:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    :cond_0
    return-void
.end method

.method public send(Lcom/google/speech/s3/S3$S3Request;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/google/android/speech/network/PairHttpConnection;->mSameThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v1}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 163
    iget-object v1, p0, Lcom/google/android/speech/network/PairHttpConnection;->mOutput:Lcom/google/android/speech/message/S3RequestStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string v2, "call to send() after close() / error / end of data"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/network/PairHttpConnection;->mOutput:Lcom/google/android/speech/message/S3RequestStream;

    invoke-virtual {v1, p1}, Lcom/google/android/speech/message/S3RequestStream;->write(Lcom/google/speech/s3/S3$S3Request;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/speech/network/PairHttpConnection;->mOutput:Lcom/google/android/speech/message/S3RequestStream;

    invoke-virtual {v1}, Lcom/google/android/speech/message/S3RequestStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Request;->getEndOfData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/google/android/speech/network/PairHttpConnection;->handleEndOfData()V

    .line 178
    :cond_0
    :goto_1
    return-void

    .line 163
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/android/speech/network/PairHttpConnection;->mCallback:Lcom/google/android/speech/callback/Callback;

    new-instance v2, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v3, "Failed to send request"

    invoke-direct {v2, v3, v0}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method declared-synchronized setResponseState(Lcom/google/android/speech/network/PairHttpConnection$ResponseState;)Z
    .locals 4
    .parameter "state"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 266
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/google/android/speech/network/PairHttpConnection$1;->$SwitchMap$com$google$android$speech$network$PairHttpConnection$ResponseState:[I

    invoke-virtual {p1}, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 313
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 268
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection;->mResponseState:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    if-ne v2, v3, :cond_1

    .line 269
    const-string v1, "PairHttpConnection"

    const-string v2, "The response is sent in the up and down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 273
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UP:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mResponseState:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    move v0, v1

    .line 274
    goto :goto_0

    .line 279
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection;->mResponseState:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    if-eq v2, v3, :cond_2

    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 280
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection;->mResponseState:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UP:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    if-ne v2, v3, :cond_3

    .line 281
    const-string v1, "PairHttpConnection"

    const-string v2, "The response is sent in the up and down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v0

    .line 279
    goto :goto_1

    .line 285
    :cond_3
    sget-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mResponseState:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    move v0, v1

    .line 286
    goto :goto_0

    .line 290
    :pswitch_2
    iget-boolean v2, p0, Lcom/google/android/speech/network/PairHttpConnection;->mAcceptUpstreamResponses:Z

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/google/android/speech/network/PairHttpConnection;->mResponseState:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    sget-object v3, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    if-ne v2, v3, :cond_4

    .line 292
    sget-object v1, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    iput-object v1, p0, Lcom/google/android/speech/network/PairHttpConnection;->mResponseState:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    goto :goto_0

    .line 294
    :cond_4
    iget-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mResponseState:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    sget-object v2, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UP:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    if-ne v0, v2, :cond_5

    move v0, v1

    .line 297
    goto :goto_0

    .line 299
    :cond_5
    sget-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mResponseState:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    move v0, v1

    .line 300
    goto :goto_0

    .line 309
    :pswitch_3
    sget-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UNKNOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/speech/network/PairHttpConnection;->mResponseState:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 310
    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
