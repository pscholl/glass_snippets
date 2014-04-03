.class public Lcom/google/glass/barcode/BarcodeScanner;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/barcode/BarcodeScanner$Builder;,
        Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;,
        Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

.field private bound:Z

.field private camera:Lcom/google/glass/camera/CameraConnection;

.field private final cameraClient:Lcom/google/glass/camera/SharedCameraClient;

.field private final cameraFrameModulus:I

.field private firstPreviewFrameTimeNanos:J

.field private final listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

.field private previewFrameCount:I

.field private final scanTimeoutNanos:J

.field private scanning:Z

.field private shouldIgnorePreviewFrames:Z

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/barcode/BarcodeScanner;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/barcode/BarcodeScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IJLcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 1
    .parameter "context"
    .parameter "cameraFrameModulus"
    .parameter "scanTimeoutNanos"
    .parameter "listener"
    .parameter "userEventHelper"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$1;

    invoke-direct {v0, p0}, Lcom/google/glass/barcode/BarcodeScanner$1;-><init>(Lcom/google/glass/barcode/BarcodeScanner;)V

    iput-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    .line 142
    iput p2, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraFrameModulus:I

    .line 143
    iput-wide p3, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanTimeoutNanos:J

    .line 144
    iput-object p5, p0, Lcom/google/glass/barcode/BarcodeScanner;->listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    .line 145
    iput-object p6, p0, Lcom/google/glass/barcode/BarcodeScanner;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 147
    new-instance v0, Lcom/google/glass/camera/CameraConnection;

    invoke-direct {v0, p1}, Lcom/google/glass/camera/CameraConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->camera:Lcom/google/glass/camera/CameraConnection;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/barcode/BarcodeScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/barcode/BarcodeScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/barcode/BarcodeScanner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/google/glass/barcode/BarcodeScanner;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/barcode/BarcodeScanner;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/glass/barcode/BarcodeScanner;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/glass/barcode/BarcodeScanner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraFrameModulus:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/barcode/BarcodeScanner;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanTimeoutNanos:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

    return-object v0
.end method

.method static synthetic access$700()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/barcode/BarcodeScanner;ZLcom/google/android/libraries/barhopper/Barcode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning(ZLcom/google/android/libraries/barhopper/Barcode;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getMillisSinceFirstPreview()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 239
    iget-wide v2, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 243
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "eventData"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private logFailure()V
    .locals 6

    .prologue
    .line 220
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->BARCODE_FAILED_SCAN:Lcom/google/glass/userevent/UserEventAction;

    const-string v1, "m"

    invoke-direct {p0}, Lcom/google/glass/barcode/BarcodeScanner;->getMillisSinceFirstPreview()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "f"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/barcode/BarcodeScanner;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method private logSuccess(Lcom/google/android/libraries/barhopper/Barcode;)V
    .locals 8
    .parameter "barcode"

    .prologue
    .line 230
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->BARCODE_SUCCESSFUL_SCAN:Lcom/google/glass/userevent/UserEventAction;

    const-string v1, "m"

    invoke-direct {p0}, Lcom/google/glass/barcode/BarcodeScanner;->getMillisSinceFirstPreview()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "f"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "s"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "b"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/google/android/libraries/barhopper/Barcode;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x2c

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/barcode/BarcodeScanner;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/barcode/BarcodeScanner$Builder;
    .locals 4

    .prologue
    .line 288
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$Builder;

    const/4 v1, 0x1

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/barcode/BarcodeScanner$Builder;-><init>(IJ)V

    return-object v0
.end method

.method private stopScanning(ZLcom/google/android/libraries/barhopper/Barcode;)V
    .locals 4
    .parameter "successfulScan"
    .parameter "barcode"

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    if-eqz v0, :cond_1

    .line 205
    if-eqz p1, :cond_0

    .line 206
    invoke-direct {p0, p2}, Lcom/google/glass/barcode/BarcodeScanner;->logSuccess(Lcom/google/android/libraries/barhopper/Barcode;)V

    .line 214
    :goto_0
    iput-boolean v3, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    .line 216
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->camera:Lcom/google/glass/camera/CameraConnection;

    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraConnection;->stopPreview(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 217
    return-void

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/barcode/BarcodeScanner;->logFailure()V

    goto :goto_0

    .line 211
    :cond_1
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Duplicate stopScanning calls."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public bindCamera()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->bound:Z

    .line 152
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->camera:Lcom/google/glass/camera/CameraConnection;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraConnection;->bind()Lcom/google/glass/camera/CameraConnection;

    .line 153
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->bound:Z

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "BarcodeScanner finalized while bound to camera service!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 166
    return-void
.end method

.method public setViewfinder(Landroid/view/TextureView;)V
    .locals 1
    .parameter "viewfinder"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/SharedCameraClient;->setViewfinder(Landroid/view/TextureView;)V

    .line 170
    return-void
.end method

.method public startScanning()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->bound:Z

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot scan unless bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraClient;->getViewfinder()Landroid/view/TextureView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot scan without a viewfinder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    if-eqz v0, :cond_2

    .line 182
    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Duplicate startScanning calls."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->scanning:Z

    .line 188
    new-instance v0, Lcom/google/glass/barcode/BarhopperRecognizer;

    invoke-direct {v0}, Lcom/google/glass/barcode/BarhopperRecognizer;-><init>()V

    iput-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;

    .line 191
    iput v3, p0, Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J

    .line 193
    iput-boolean v3, p0, Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z

    .line 196
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->camera:Lcom/google/glass/camera/CameraConnection;

    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner;->cameraClient:Lcom/google/glass/camera/SharedCameraClient;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/CameraConnection;->startPreview(Lcom/google/glass/camera/SharedCameraClient;)V

    .line 197
    return-void
.end method

.method public stopScanning()V
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/barcode/BarcodeScanner;->stopScanning(ZLcom/google/android/libraries/barhopper/Barcode;)V

    .line 201
    return-void
.end method

.method public unbindCamera()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->camera:Lcom/google/glass/camera/CameraConnection;

    invoke-virtual {v0}, Lcom/google/glass/camera/CameraConnection;->unbind()Lcom/google/glass/camera/CameraConnection;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->bound:Z

    .line 158
    return-void
.end method
