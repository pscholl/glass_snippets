.class public Lcom/google/glass/timeline/AttachmentUploader;
.super Ljava/lang/Object;
.source "AttachmentUploader.java"


# static fields
.field private static final PARSER:Lcom/google/glass/net/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private final context:Landroid/content/Context;

.field private uploadSession:Lcom/google/glass/net/upload/UploadSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/AttachmentUploader;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 43
    new-instance v0, Lcom/google/glass/net/ProtoParser;

    new-instance v1, Lcom/google/glass/timeline/AttachmentUploader$1;

    invoke-direct {v1}, Lcom/google/glass/timeline/AttachmentUploader$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/ProtoParser;-><init>(Lcom/google/glass/net/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/timeline/AttachmentUploader;->PARSER:Lcom/google/glass/net/ProtoParser;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/google/glass/auth/AuthUtils;

    invoke-direct {v0, p1}, Lcom/google/glass/auth/AuthUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/auth/AuthUtils;)V
    .locals 0
    .parameter "context"
    .parameter "authUtils"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 70
    iput-object p1, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/google/glass/timeline/AttachmentUploader;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 72
    return-void
.end method

.method private getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abortResumableInsert()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v0}, Lcom/google/glass/net/upload/UploadSession;->cancel()V

    .line 181
    :cond_0
    return-void
.end method

.method getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public insertAttachmentToServer(Ljava/lang/String;[BLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "mimeType"
    .parameter "content"
    .parameter "filename"
    .parameter "creationTime"
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/timeline/UploadException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 87
    sget-object v7, Lcom/google/glass/timeline/AttachmentUploader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Uploading attachment of %s bytes to server, mimeType: %s, filename: %s, source: %s"

    const/4 v6, 0x4

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz p2, :cond_2

    array-length v6, p2

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object p1, v9, v6

    const/4 v6, 0x2

    aput-object p3, v9, v6

    const/4 v6, 0x3

    aput-object p6, v9, v6

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v3, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;-><init>()V

    .line 92
    .local v3, request:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    iput-object p1, v3, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->mimeType:Ljava/lang/String;

    .line 93
    iput-object p2, v3, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->content:[B

    .line 94
    iput-object p3, v3, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->name:Ljava/lang/String;

    .line 95
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v3, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->creationTime:Ljava/lang/Long;

    .line 96
    move-object/from16 v0, p6

    iput-object v0, v3, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->source:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v6

    if-nez v6, :cond_0

    .line 99
    new-instance v6, Lcom/google/glass/util/SettingsSecure;

    iget-object v7, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v7, "android_id"

    invoke-virtual {v6, v7}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;->deviceId:Ljava/lang/String;

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/timeline/AttachmentUploader;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v6

    sget-object v7, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_INSERT:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v8, Lcom/google/glass/timeline/AttachmentUploader;->PARSER:Lcom/google/glass/net/ProtoParser;

    invoke-virtual {v6, v7, v3, v8}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v4

    .line 108
    .local v4, response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_4

    .line 109
    :cond_1
    if-nez v4, :cond_3

    const/4 v2, 0x4

    .line 111
    .local v2, errorCode:I
    :goto_1
    new-instance v6, Lcom/google/glass/timeline/UploadException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed to upload."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, p1, v7}, Lcom/google/glass/timeline/UploadException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 87
    .end local v2           #errorCode:I
    .end local v3           #request:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .end local v4           #response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;>;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 109
    .restart local v3       #request:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertRequest;
    .restart local v4       #response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;>;"
    :cond_3
    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getErrorCode()I

    move-result v2

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    .line 117
    .local v5, responseProto:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    iget v6, v5, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    if-nez v6, :cond_5

    .line 118
    iget-object v1, v5, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    .line 119
    .local v1, attachmentId:Ljava/lang/String;
    sget-object v6, Lcom/google/glass/timeline/AttachmentUploader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Successfully inserted attachment to server: %s, %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    if-eqz v1, :cond_5

    .line 122
    return-object v1

    .line 125
    .end local v1           #attachmentId:Ljava/lang/String;
    :cond_5
    new-instance v6, Lcom/google/glass/timeline/UploadException;

    const/4 v7, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed to upload with server response code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, p1, v8}, Lcom/google/glass/timeline/UploadException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v6
.end method

.method public insertAttachmentViaSessionManager(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .parameter "mimeType"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/auth/InvalidCredentialsException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/net/HttpRequestDispatcherManager;->getSharedDispatcher(Landroid/content/Context;)Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v1

    .line 143
    .local v1, dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;
    new-instance v3, Lcom/google/glass/net/upload/SessionTracker;

    iget-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-direct {v3, v2}, Lcom/google/glass/net/upload/SessionTracker;-><init>(Landroid/content/Context;)V

    .line 144
    .local v3, tracker:Lcom/google/glass/net/upload/SessionTracker;
    new-instance v0, Lcom/google/glass/net/upload/SessionManager;

    iget-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->authUtils:Lcom/google/glass/auth/AuthUtils;

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getResumableUploadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iget-object v7, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/glass/timeline/AttachmentUploader;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v8

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/net/upload/SessionManager;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/auth/AuthUtils;Lcom/google/glass/net/upload/SessionTracker;Ljava/net/URI;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 148
    .local v0, manager:Lcom/google/glass/net/upload/SessionManager;
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->init()V

    .line 150
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->isUploadSuccessful()Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->getUploadSession()Lcom/google/glass/net/upload/UploadSession;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    .line 152
    iget-object v2, p0, Lcom/google/glass/timeline/AttachmentUploader;->uploadSession:Lcom/google/glass/net/upload/UploadSession;

    invoke-virtual {v2}, Lcom/google/glass/net/upload/UploadSession;->upload()V

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/net/upload/SessionManager;->getUploadResult()Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v9

    .line 157
    .local v9, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    if-nez v9, :cond_1

    .line 158
    new-instance v2, Ljava/net/ProtocolException;

    const-string v4, "Somehow we completed the upload successfully and no response was returned! BUG!"

    invoke-direct {v2, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_1
    iget-object v2, v9, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-nez v2, :cond_2

    .line 163
    new-instance v2, Ljava/net/ProtocolException;

    const-string v4, "Somehow we completed successfully, but the body is null! BUG!"

    invoke-direct {v2, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_2
    new-instance v2, Ljava/lang/String;

    iget-object v4, v9, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    sget-object v5, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method
