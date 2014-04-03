.class Lcom/google/glass/barcode/BarcodeScanner$1;
.super Lcom/google/glass/camera/SharedCameraClient;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/barcode/BarcodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/barcode/BarcodeScanner;


# direct methods
.method constructor <init>(Lcom/google/glass/barcode/BarcodeScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-direct {p0}, Lcom/google/glass/camera/SharedCameraClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/google/glass/barcode/BarcodeScanner;->access$900()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lcom/google/glass/util/remote/ParcelableException;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    #getter for: Lcom/google/glass/barcode/BarcodeScanner;->listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
    invoke-static {v0}, Lcom/google/glass/barcode/BarcodeScanner;->access$500(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    move-result-object v0

    sget-object v1, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->CAMERA:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    invoke-interface {v0, v1}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;->onError(Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;)V

    .line 132
    return-void
.end method

.method public onPreviewFrame([BJ)V
    .locals 5
    .parameter "frame"
    .parameter "captureTimeNanos"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    #getter for: Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z
    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$000(Lcom/google/glass/barcode/BarcodeScanner;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    #getter for: Lcom/google/glass/barcode/BarcodeScanner;->previewFrameCount:I
    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$100(Lcom/google/glass/barcode/BarcodeScanner;)I

    move-result v1

    if-nez v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    #setter for: Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J
    invoke-static {v1, p2, p3}, Lcom/google/glass/barcode/BarcodeScanner;->access$202(Lcom/google/glass/barcode/BarcodeScanner;J)J

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$108(Lcom/google/glass/barcode/BarcodeScanner;)I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    #getter for: Lcom/google/glass/barcode/BarcodeScanner;->cameraFrameModulus:I
    invoke-static {v2}, Lcom/google/glass/barcode/BarcodeScanner;->access$300(Lcom/google/glass/barcode/BarcodeScanner;)I

    move-result v2

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    #getter for: Lcom/google/glass/barcode/BarcodeScanner;->firstPreviewFrameTimeNanos:J
    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$200(Lcom/google/glass/barcode/BarcodeScanner;)J

    move-result-wide v1

    sub-long v1, p2, v1

    iget-object v3, p0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    #getter for: Lcom/google/glass/barcode/BarcodeScanner;->scanTimeoutNanos:J
    invoke-static {v3}, Lcom/google/glass/barcode/BarcodeScanner;->access$400(Lcom/google/glass/barcode/BarcodeScanner;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    #getter for: Lcom/google/glass/barcode/BarcodeScanner;->listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
    invoke-static {v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$500(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    move-result-object v1

    sget-object v2, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->TIMEOUT:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    invoke-interface {v1, v2}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;->onError(Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;)V

    .line 98
    :cond_3
    sget-object v0, Lcom/google/glass/camera/SharedCameraConstants;->PREVIEW_SIZE:Lcom/google/glass/camera/Size;

    .line 99
    .local v0, previewSize:Lcom/google/glass/camera/Size;
    new-instance v1, Lcom/google/glass/barcode/BarcodeScanner$1$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/glass/barcode/BarcodeScanner$1$1;-><init>(Lcom/google/glass/barcode/BarcodeScanner$1;[BLcom/google/glass/camera/Size;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/glass/barcode/BarcodeScanner$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
