.class public abstract Lcom/google/glass/util/ImageProxyDownloadTask;
.super Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
.source "ImageProxyDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CACHE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type; = null

.field public static final DIMENSION_NOT_SET:I = -0x1

.field private static final PARSER:Lcom/google/glass/net/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final cropType:I

.field private height:I

.field private imageUrl:Ljava/lang/String;

.field private final requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    new-instance v0, Lcom/google/glass/net/ProtoParser;

    new-instance v1, Lcom/google/glass/util/ImageProxyDownloadTask$1;

    invoke-direct {v1}, Lcom/google/glass/util/ImageProxyDownloadTask$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/ProtoParser;-><init>(Lcom/google/glass/net/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/util/ImageProxyDownloadTask;->PARSER:Lcom/google/glass/net/ProtoParser;

    .line 47
    sget-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    sput-object v0, Lcom/google/glass/util/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 2
    .parameter "context"
    .parameter "imageUrl"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/glass/util/DeferredContentLoader$LoadingTask;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    .line 80
    iput p3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    .line 81
    iput p4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    .line 82
    iput p5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:I

    .line 83
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 84
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    .line 85
    .local v0, app:Lcom/google/glass/app/GlassApplication;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getPooledRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 86
    return-void
.end method

.method private downloadImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "filename"

    .prologue
    .line 149
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 151
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;-><init>()V

    .line 153
    .local v0, dimensions:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
    iget v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 154
    iget v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->widthPixels:Ljava/lang/Integer;

    .line 156
    :cond_0
    iget v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 157
    iget v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->heightPixels:Ljava/lang/Integer;

    .line 159
    :cond_1
    new-instance v3, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;-><init>()V

    .line 160
    .local v3, request:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    iput-object v0, v3, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .line 161
    iget-object v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iput-object v7, v3, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->url:Ljava/lang/String;

    .line 162
    iget v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:I

    iput v7, v3, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->cropType:I

    .line 164
    sget-object v7, Lcom/google/glass/util/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Downloading image [filename=%s, request=%s]."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const/4 v4, 0x0

    .line 167
    .local v4, response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;>;"
    new-instance v6, Lcom/google/glass/util/Stopwatch;

    invoke-direct {v6}, Lcom/google/glass/util/Stopwatch;-><init>()V

    .line 168
    .local v6, stopwatch:Lcom/google/glass/util/Stopwatch;
    invoke-virtual {v6}, Lcom/google/glass/util/Stopwatch;->start()Lcom/google/glass/util/Stopwatch;

    .line 170
    :try_start_0
    iget-object v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v8, Lcom/google/glass/net/ServerConstants$Action;->DOWNLOAD_IMAGE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v9, Lcom/google/glass/util/ImageProxyDownloadTask;->PARSER:Lcom/google/glass/net/ProtoParser;

    invoke-virtual {v7, v8, v3, v9}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;)Lcom/google/glass/net/ProtoResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 176
    invoke-virtual {v6}, Lcom/google/glass/util/Stopwatch;->stop()Lcom/google/glass/util/Stopwatch;

    .line 178
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v7

    if-nez v7, :cond_3

    .line 179
    :cond_2
    sget-object v7, Lcom/google/glass/util/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "No response - network may be disconnected"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    const/4 v2, 0x0

    .line 215
    :goto_0
    return-object v2

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Ljava/lang/InterruptedException;
    sget-object v7, Lcom/google/glass/util/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Interrupted while downloading image from clientproxy"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v1, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const/4 v2, 0x0

    goto :goto_0

    .line 183
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_3
    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    .line 185
    .local v5, responseProto:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    iget v7, v5, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    if-eqz v7, :cond_4

    .line 187
    sget-object v7, Lcom/google/glass/util/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Server status: %s for: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v5, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    const/4 v2, 0x0

    goto :goto_0

    .line 191
    :cond_4
    iget-object v7, v5, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    invoke-static {v7}, Lcom/google/glass/util/ArrayUtils;->isEmpty([B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 193
    sget-object v7, Lcom/google/glass/util/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "No image download data for %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    const/4 v2, 0x0

    goto :goto_0

    .line 197
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/util/ImageProxyDownloadTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 199
    sget-object v7, Lcom/google/glass/util/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Image download cancelled for %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const/4 v2, 0x0

    goto :goto_0

    .line 204
    :cond_6
    new-instance v7, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/util/ImageProxyDownloadTask;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->IMAGE_DOWNLOAD_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    const-string v9, "l"

    invoke-virtual {v6}, Lcom/google/glass/util/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "b"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v5, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 212
    iget-object v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v8, Lcom/google/glass/util/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v7, v8, p1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, filePath:Ljava/lang/String;
    sget-object v7, Lcom/google/glass/util/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Saving %s under %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v7, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v8, Lcom/google/glass/util/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v9, v5, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    invoke-static {v9}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v9

    invoke-virtual {v7, v8, p1, v9}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    goto/16 :goto_0
.end method

.method public static getFilename(Ljava/lang/String;III)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    .local v4, name:Ljava/lang/StringBuilder;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 240
    .local v3, md:Ljava/security/MessageDigest;
    const-string v5, "UTF-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 242
    .local v1, digest:[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 243
    .local v0, bi:Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 244
    .end local v0           #bi:Ljava/math/BigInteger;
    .end local v1           #digest:[B
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 246
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 247
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 249
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public checkCache()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 106
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v1

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    iget v4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    iget v5, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:I

    invoke-static {v2, v3, v4, v5}, Lcom/google/glass/util/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, filename:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/util/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/util/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "ip"

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/glass/util/ImageProxyDownloadTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/String;
    .locals 5
    .parameter "isCancelled"

    .prologue
    .line 132
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 133
    iget-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 144
    :goto_0
    return-object v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    iget v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    iget v4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/util/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, filename:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/util/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    invoke-direct {p0, v0}, Lcom/google/glass/util/ImageProxyDownloadTask;->downloadImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/util/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected loadContentFromCache()Ljava/lang/String;
    .locals 5

    .prologue
    .line 120
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 121
    iget-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    iget v3, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    iget v4, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cropType:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/util/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, filename:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/util/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setImageDimensions(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 223
    iput p1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->width:I

    .line 224
    iput p2, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->height:I

    .line 225
    return-void
.end method

.method protected setImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/util/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    return-object p1
.end method
