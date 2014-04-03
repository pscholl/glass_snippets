.class public Lcom/google/glass/html/Thumbnailer;
.super Ljava/lang/Object;
.source "Thumbnailer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;
    }
.end annotation


# static fields
.field private static final JPEG_COMPRESSION_QUALITY:I = 0x5f

.field private static final PNG_COMPRESSION_QUALITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = null

.field private static final THUMBNAIL_SIZE:I = 0x280

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/html/Thumbnailer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/html/Thumbnailer;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 40
    return-void
.end method

.method private static computeSampleSize(II)I
    .locals 3
    .parameter "inputWidth"
    .parameter "inputHeight"

    .prologue
    const/16 v2, 0x500

    .line 192
    const/4 v0, 0x1

    .line 194
    .local v0, sampleSize:I
    :goto_0
    div-int v1, p0, v0

    if-ge v1, v2, :cond_0

    div-int v1, p1, v0

    if-lt v1, v2, :cond_1

    .line 195
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 197
    :cond_1
    return v0
.end method

.method private static isSupportedImageContentType(Ljava/lang/String;)Z
    .locals 5
    .parameter "contentType"

    .prologue
    .line 183
    sget-object v0, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 184
    .local v3, type:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    const/4 v4, 0x1

    .line 188
    .end local v3           #type:Ljava/lang/String;
    :goto_1
    return v4

    .line 183
    .restart local v3       #type:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v3           #type:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public createThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/lang/String;Z)Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;
    .locals 16
    .parameter "attachment"
    .parameter "imagePath"
    .parameter "skipCreatingThumbnail"

    .prologue
    .line 88
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 89
    new-instance v9, Lcom/google/glass/html/Timer;

    invoke-direct {v9}, Lcom/google/glass/html/Timer;-><init>()V

    .line 90
    .local v9, timer:Lcom/google/glass/html/Timer;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/glass/html/Thumbnailer;->isSupportedImageContentType(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 91
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    .line 179
    :goto_0
    return-object v11

    .line 95
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/glass/html/Thumbnailer;->getThumbnailFile(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/io/File;

    move-result-object v7

    .line 96
    .local v7, thumbnailFile:Ljava/io/File;
    if-nez v7, :cond_1

    .line 97
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Unable to determine filename for thumbnail"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 101
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 105
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Interrupted!"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 110
    :cond_3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput v11, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    const/4 v11, 0x1

    iput-boolean v11, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 113
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 114
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v11, :cond_4

    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v11, :cond_5

    .line 115
    :cond_4
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Unable to decode file: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 118
    :cond_5
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 119
    .local v4, originalWidth:I
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 122
    .local v3, originalHeight:I
    const/16 v11, 0x280

    if-gt v4, v11, :cond_6

    const/16 v11, 0x280

    if-gt v3, v11, :cond_6

    .line 123
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 127
    :cond_6
    if-eqz p3, :cond_7

    .line 128
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_SKIPPED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto :goto_0

    .line 131
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 132
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Interrupted!"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 138
    :cond_8
    invoke-static {v4, v3}, Lcom/google/glass/html/Thumbnailer;->computeSampleSize(II)I

    move-result v11

    iput v11, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 139
    const/4 v11, 0x0

    iput-boolean v11, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 140
    const/4 v11, 0x0

    iput-boolean v11, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 141
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 142
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 143
    .local v6, thumbnail:Landroid/graphics/Bitmap;
    if-nez v6, :cond_9

    .line 144
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Unable to decode file: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 148
    :cond_9
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v12, 0x280

    if-eq v11, v12, :cond_a

    .line 149
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 150
    .local v10, width:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 151
    .local v1, height:I
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Resampling thumbnail: %sx%s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    if-le v10, v1, :cond_b

    .line 153
    mul-int/lit16 v11, v1, 0x280

    div-int v1, v11, v10

    .line 154
    const/16 v10, 0x280

    .line 159
    :goto_1
    invoke-static {v6, v10, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 162
    .end local v1           #height:I
    .end local v10           #width:I
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 163
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "Interrupted!"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 156
    .restart local v1       #height:I
    .restart local v10       #width:I
    :cond_b
    mul-int/lit16 v11, v10, 0x280

    div-int v10, v11, v1

    .line 157
    const/16 v1, 0x280

    goto :goto_1

    .line 168
    .end local v1           #height:I
    .end local v10           #width:I
    :cond_c
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    const-string v11, "image/jpeg"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->contentType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 170
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5f

    invoke-virtual {v6, v11, v12, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 174
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/google/glass/timeline/TimelineHelper;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, thumbnailName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/html/Thumbnailer;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v12, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-static {v13}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v13

    invoke-virtual {v11, v12, v8, v13}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 177
    sget-object v11, Lcom/google/glass/html/Thumbnailer;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Generated thumbnail: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/glass/html/Timer;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v11, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    goto/16 :goto_0

    .line 172
    .end local v8           #thumbnailName:Ljava/lang/String;
    :cond_d
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v6, v11, v12, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_2
.end method

.method public getThumbnailFile(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/io/File;
    .locals 4
    .parameter "attachment"

    .prologue
    .line 44
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, thumbnailName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 48
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/glass/html/Thumbnailer;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
