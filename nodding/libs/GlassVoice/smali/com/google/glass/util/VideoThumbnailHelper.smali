.class public Lcom/google/glass/util/VideoThumbnailHelper;
.super Ljava/lang/Object;
.source "VideoThumbnailHelper.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final cameraUtils:Lcom/google/glass/camera/CameraUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/glass/camera/CameraUtils;

    invoke-direct {v0}, Lcom/google/glass/camera/CameraUtils;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cameraUtils:Lcom/google/glass/camera/CameraUtils;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0
    .parameter "cachedBitmapFactory"
    .parameter "cachedFilesManager"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/util/VideoThumbnailHelper;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 29
    iput-object p2, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 30
    return-void
.end method

.method private getVideoFilePath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;
    .locals 3
    .parameter "attachment"

    .prologue
    .line 134
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    .line 144
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 128
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 129
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCachedThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 46
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 48
    iget-object v2, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    if-nez v2, :cond_1

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cache not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    .local v0, thumbnailFilename:Ljava/lang/String;
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->thumbnailUrl:Ljava/lang/String;

    .line 58
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    sget-object v2, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to find thumbnail filename in attachment: %s"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :goto_1
    return-object v1

    .line 56
    :cond_2
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_3
    iget-object v2, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v3, v4, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method public loadThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "attachment"
    .parameter "isCancelled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 82
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 84
    iget-object v5, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    if-nez v5, :cond_1

    .line 85
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cache not initialized."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    :cond_1
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, thumbnailFilename:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    sget-object v5, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to find thumbnail filename in attachment: %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v4

    .line 115
    :cond_2
    :goto_0
    return-object v1

    .line 94
    :cond_3
    iget-object v5, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v6, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v5, v6, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 95
    invoke-direct {p0, p1}, Lcom/google/glass/util/VideoThumbnailHelper;->getVideoFilePath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, videoFilePath:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 97
    sget-object v5, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to find video file path in attachment: %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v4

    .line 98
    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/glass/util/VideoThumbnailHelper;->createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 102
    .local v1, thumbnail:Landroid/graphics/Bitmap;
    if-nez v1, :cond_5

    .line 103
    sget-object v5, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to create thumbnail for video: %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v4

    .line 104
    goto :goto_0

    .line 107
    :cond_5
    iget-object v4, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cameraUtils:Lcom/google/glass/camera/CameraUtils;

    iget-object v5, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v4, v5, v1, v2}, Lcom/google/glass/camera/CameraUtils;->saveThumbnailToCachedFiles(Lcom/google/glass/util/CachedFilesManager;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    sget-object v4, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to save thumbnail to: %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #thumbnail:Landroid/graphics/Bitmap;
    .end local v3           #videoFilePath:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v5, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v6, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v5, v6, v2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8, p2}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method
