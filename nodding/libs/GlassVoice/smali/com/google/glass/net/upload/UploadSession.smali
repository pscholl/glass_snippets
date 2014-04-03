.class public Lcom/google/glass/net/upload/UploadSession;
.super Ljava/lang/Object;
.source "UploadSession.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private currentRequest:Lcom/google/glass/net/PendingHttpRequest;

.field private final dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

.field private final fileToUpload:Ljava/io/File;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final manager:Lcom/google/glass/net/upload/SessionManager;

.field private final mimeType:Ljava/lang/String;

.field private final obfuscatedIdentifier:Ljava/lang/String;

.field private final offset:J

.field private final uploadUri:Ljava/net/URI;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/upload/UploadSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/net/upload/SessionManager;Ljava/net/URI;Ljava/io/File;JLjava/lang/String;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V
    .locals 1
    .parameter "authUtils"
    .parameter "dispatcher"
    .parameter "manager"
    .parameter "uploadUri"
    .parameter "fileToUpload"
    .parameter "offset"
    .parameter "mimeType"
    .parameter "userEventHelper"
    .parameter "obfuscatedIdentifier"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/google/glass/net/upload/UploadSession;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 59
    iput-object p1, p0, Lcom/google/glass/net/upload/UploadSession;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 60
    iput-object p2, p0, Lcom/google/glass/net/upload/UploadSession;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 61
    iput-object p3, p0, Lcom/google/glass/net/upload/UploadSession;->manager:Lcom/google/glass/net/upload/SessionManager;

    .line 63
    iput-object p4, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    .line 64
    iput-object p5, p0, Lcom/google/glass/net/upload/UploadSession;->fileToUpload:Ljava/io/File;

    .line 65
    iput-object p8, p0, Lcom/google/glass/net/upload/UploadSession;->mimeType:Ljava/lang/String;

    .line 66
    iput-wide p6, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    .line 68
    iput-object p9, p0, Lcom/google/glass/net/upload/UploadSession;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 69
    iput-object p10, p0, Lcom/google/glass/net/upload/UploadSession;->obfuscatedIdentifier:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private logEvent(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    const-string v1, "m"

    iget-object v2, p0, Lcom/google/glass/net/upload/UploadSession;->obfuscatedIdentifier:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 147
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "[%s] Cancel requested -- breaking upload."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/net/upload/UploadSession;->fileToUpload:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_CANCELLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 141
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->cancel()V

    .line 142
    return-void
.end method

.method getOffset()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 78
    iget-wide v0, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    return-wide v0
.end method

.method public upload()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 84
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->authUtils:Lcom/google/glass/auth/AuthUtils;

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;->UPLOAD:Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;

    iget-object v3, p0, Lcom/google/glass/net/upload/UploadSession;->fileToUpload:Ljava/io/File;

    invoke-static {v0, v1, v3}, Lcom/google/glass/net/upload/ScottyHelper;->makeBaseHeaders(Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/ScottyHelper$UploadCommand;Ljava/io/File;)Ljava/util/Map;

    move-result-object v9

    .line 86
    .local v9, baseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 87
    .local v2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "X-Goog-Upload-Offset"

    iget-wide v3, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-interface {v2, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 90
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "[%s] Uploading file via PUT for session %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/net/upload/UploadSession;->fileToUpload:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 93
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    iget-object v1, p0, Lcom/google/glass/net/upload/UploadSession;->uploadUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/net/upload/UploadSession;->fileToUpload:Ljava/io/File;

    iget-object v4, p0, Lcom/google/glass/net/upload/UploadSession;->mimeType:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    iget-object v7, p0, Lcom/google/glass/net/upload/UploadSession;->fileToUpload:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    iget-wide v11, p0, Lcom/google/glass/net/upload/UploadSession;->offset:J

    sub-long/2addr v7, v11

    invoke-interface/range {v0 .. v8}, Lcom/google/glass/net/HttpRequestDispatcher;->putWithFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;JJ)Lcom/google/glass/net/PendingHttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    .line 95
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v10

    .line 97
    .local v10, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->currentRequest:Lcom/google/glass/net/PendingHttpRequest;

    invoke-virtual {v0}, Lcom/google/glass/net/PendingHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Upload was cancelled."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-nez v10, :cond_1

    .line 102
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 103
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Connection failed or no response received from server!"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iget v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v1, 0x193

    if-eq v0, v1, :cond_2

    iget v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_3

    .line 109
    :cond_2
    new-instance v0, Lorg/apache/http/auth/InvalidCredentialsException;

    const-string v1, "Bad credentials or credentials expired."

    invoke-direct {v0, v1}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    iget v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    .line 113
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 114
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scotty returned with an unexpected status code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_4
    iget-object v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "X-Goog-Upload-Status"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 118
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 119
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scotty did not respond with an upload status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_5
    invoke-static {v10}, Lcom/google/glass/net/upload/ScottyHelper;->getSessionStatus(Lcom/google/glass/net/SimplifiedHttpResponse;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->FINAL:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    if-eq v0, v1, :cond_6

    .line 123
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 124
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scotty did not finalize our upload session as requested: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_6
    iget-object v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v0, :cond_7

    iget-object v0, v10, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v0, v0

    if-nez v0, :cond_8

    .line 129
    :cond_7
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_SERVER_FAILED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 130
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client proxy did not respond with an upload id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_8
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->UPLOAD_SESSION_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/net/upload/UploadSession;->logEvent(Lcom/google/glass/userevent/UserEventAction;)V

    .line 134
    iget-object v0, p0, Lcom/google/glass/net/upload/UploadSession;->manager:Lcom/google/glass/net/upload/SessionManager;

    invoke-virtual {v0, v10}, Lcom/google/glass/net/upload/SessionManager;->onUploadSuccess(Lcom/google/glass/net/SimplifiedHttpResponse;)V

    .line 135
    return-void
.end method
