.class public Lcom/google/glass/camera/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field private static final THUMBNAIL_JPEG_QUALITY:I = 0x5a

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    const-string v0, "glasscamera"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildBitmapFromYuv420Sp([BII)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "input"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 37
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v0}, Lcom/google/glass/camera/CameraUtils;->populateBitmapFromYuv420Sp([BLandroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    sget-object v1, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "buildBitmapFromYuv420Sp failed! Result may be corrupted."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-object v0
.end method

.method public static native populateBitmapFromYuv420Sp([BLandroid/graphics/Bitmap;)Z
.end method


# virtual methods
.method public saveThumbnailToCachedFiles(Lcom/google/glass/util/CachedFilesManager;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cachedFilesManager"
    .parameter "thumbnail"
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 64
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to save thumbnail as CachedFilesManager is null."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :goto_0
    return-object v1

    .line 71
    :cond_0
    if-nez p2, :cond_1

    .line 72
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to save thumbnail as no thumbnail is present."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    new-instance v3, Lcom/google/glass/camera/CameraUtils$1;

    invoke-direct {v3, p0, p2}, Lcom/google/glass/camera/CameraUtils$1;-><init>(Lcom/google/glass/camera/CameraUtils;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2, p3, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v0

    .line 89
    .local v0, success:Z
    if-nez v0, :cond_2

    .line 90
    sget-object v2, Lcom/google/glass/camera/CameraUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to save file."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_2
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {p1, v1, p3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
