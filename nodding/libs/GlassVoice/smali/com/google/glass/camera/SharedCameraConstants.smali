.class public Lcom/google/glass/camera/SharedCameraConstants;
.super Ljava/lang/Object;
.source "SharedCameraConstants.java"


# static fields
.field public static final ACTION_HANDLE_BARCODE:Ljava/lang/String; = "com.google.glass.action.HANDLE_BARCODE"

.field public static final ACTION_SHUTTER:Ljava/lang/String; = "com.google.glass.camera.action.SHUTTER"

.field public static final EXTRA_BARCODE:Ljava/lang/String; = "barcode"

.field public static final FADE_VIEWFINDER_DURATION_MILLIS:J = 0xc8L

.field public static final GCAM_POSTVIEW_BITS_PER_PIXEL:I = 0x20

.field public static final PICTURE_FILENAME_EXTENSION:Ljava/lang/String; = ".jpg"

.field public static final PICTURE_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final PICTURE_SIZE:Lcom/google/glass/camera/Size; = null

#the value of this static final field might be set in the static constructor
.field public static final POSTVIEW_FORMAT:I = 0x0

.field public static final POSTVIEW_SIZE:Lcom/google/glass/camera/Size; = null

.field public static final PREVIEW_FORMAT:I = 0x11

.field public static final PREVIEW_SIZE:Lcom/google/glass/camera/Size; = null

.field public static final RECORD_AUDIO_BIT_RATE:I = 0x17700

.field public static final RECORD_AUDIO_ENCODER:I = 0x3

.field public static final RECORD_AUDIO_SAMPLING_RATE:I = 0xac44

.field public static final RECORD_VIDEO_BIT_RATE:I = 0x4c4b40

.field public static final RECORD_VIDEO_ENCODER:I = 0x2

.field public static final RECORD_VIDEO_FRAME_RATE:I = 0x1e

.field public static final RECORD_VIDEO_OUTPUT_FORMAT:I = 0x2

.field public static final RECORD_VIDEO_SIZE:Lcom/google/glass/camera/Size; = null

.field public static final VIDEO_FILENAME_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/mp4"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v1, 0x1e0

    const/16 v4, 0x168

    const/16 v3, 0x280

    .line 21
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/glass/camera/Size;

    invoke-direct {v0, v3, v1}, Lcom/google/glass/camera/Size;-><init>(II)V

    :goto_0
    sput-object v0, Lcom/google/glass/camera/SharedCameraConstants;->PREVIEW_SIZE:Lcom/google/glass/camera/Size;

    .line 27
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    sput v0, Lcom/google/glass/camera/SharedCameraConstants;->POSTVIEW_FORMAT:I

    .line 35
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/glass/camera/Size;

    invoke-direct {v0, v3, v1}, Lcom/google/glass/camera/Size;-><init>(II)V

    :goto_2
    sput-object v0, Lcom/google/glass/camera/SharedCameraConstants;->PICTURE_SIZE:Lcom/google/glass/camera/Size;

    .line 39
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GCAM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/glass/camera/Size;

    const/16 v1, 0x270

    const/16 v2, 0x160

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/Size;-><init>(II)V

    :goto_3
    sput-object v0, Lcom/google/glass/camera/SharedCameraConstants;->POSTVIEW_SIZE:Lcom/google/glass/camera/Size;

    .line 55
    new-instance v0, Lcom/google/glass/camera/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/Size;-><init>(II)V

    sput-object v0, Lcom/google/glass/camera/SharedCameraConstants;->RECORD_VIDEO_SIZE:Lcom/google/glass/camera/Size;

    return-void

    .line 21
    :cond_0
    new-instance v0, Lcom/google/glass/camera/Size;

    invoke-direct {v0, v3, v4}, Lcom/google/glass/camera/Size;-><init>(II)V

    goto :goto_0

    .line 27
    :cond_1
    const/16 v0, 0x11

    goto :goto_1

    .line 35
    :cond_2
    new-instance v0, Lcom/google/glass/camera/Size;

    const/16 v1, 0x9e0

    const/16 v2, 0x740

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/Size;-><init>(II)V

    goto :goto_2

    .line 39
    :cond_3
    new-instance v0, Lcom/google/glass/camera/Size;

    invoke-direct {v0, v3, v4}, Lcom/google/glass/camera/Size;-><init>(II)V

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method
