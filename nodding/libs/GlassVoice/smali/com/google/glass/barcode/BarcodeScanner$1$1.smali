.class Lcom/google/glass/barcode/BarcodeScanner$1$1;
.super Landroid/os/AsyncTask;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/barcode/BarcodeScanner$1;->onPreviewFrame([BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/libraries/barhopper/Barcode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/barcode/BarcodeScanner$1;

.field final synthetic val$frame:[B

.field final synthetic val$previewSize:Lcom/google/glass/camera/Size;


# direct methods
.method constructor <init>(Lcom/google/glass/barcode/BarcodeScanner$1;[BLcom/google/glass/camera/Size;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/barcode/BarcodeScanner$1$1;->this$1:Lcom/google/glass/barcode/BarcodeScanner$1;

    iput-object p2, p0, Lcom/google/glass/barcode/BarcodeScanner$1$1;->val$frame:[B

    iput-object p3, p0, Lcom/google/glass/barcode/BarcodeScanner$1$1;->val$previewSize:Lcom/google/glass/camera/Size;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/libraries/barhopper/Barcode;
    .locals 4
    .parameter "params"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner$1$1;->this$1:Lcom/google/glass/barcode/BarcodeScanner$1;

    iget-object v0, v0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    #getter for: Lcom/google/glass/barcode/BarcodeScanner;->barcodeRecognizer:Lcom/google/glass/barcode/BarcodeRecognizer;
    invoke-static {v0}, Lcom/google/glass/barcode/BarcodeScanner;->access$600(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeRecognizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/barcode/BarcodeScanner$1$1;->val$frame:[B

    iget-object v2, p0, Lcom/google/glass/barcode/BarcodeScanner$1$1;->val$previewSize:Lcom/google/glass/camera/Size;

    iget v2, v2, Lcom/google/glass/camera/Size;->width:I

    iget-object v3, p0, Lcom/google/glass/barcode/BarcodeScanner$1$1;->val$previewSize:Lcom/google/glass/camera/Size;

    iget v3, v3, Lcom/google/glass/camera/Size;->height:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/barcode/BarcodeRecognizer;->recognize([BII)Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/barcode/BarcodeScanner$1$1;->doInBackground([Ljava/lang/Void;)Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/libraries/barhopper/Barcode;)V
    .locals 4
    .parameter "barcode"

    .prologue
    const/4 v3, 0x0

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-static {}, Lcom/google/glass/barcode/BarcodeScanner;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Recognized a barcode!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner$1$1;->this$1:Lcom/google/glass/barcode/BarcodeScanner$1;

    iget-object v0, v0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    #getter for: Lcom/google/glass/barcode/BarcodeScanner;->listener:Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
    invoke-static {v0}, Lcom/google/glass/barcode/BarcodeScanner;->access$500(Lcom/google/glass/barcode/BarcodeScanner;)Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;->onBarcodeScanned(Lcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner$1$1;->this$1:Lcom/google/glass/barcode/BarcodeScanner$1;

    iget-object v0, v0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    const/4 v1, 0x1

    #calls: Lcom/google/glass/barcode/BarcodeScanner;->stopScanning(ZLcom/google/android/libraries/barhopper/Barcode;)V
    invoke-static {v0, v1, p1}, Lcom/google/glass/barcode/BarcodeScanner;->access$800(Lcom/google/glass/barcode/BarcodeScanner;ZLcom/google/android/libraries/barhopper/Barcode;)V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner$1$1;->this$1:Lcom/google/glass/barcode/BarcodeScanner$1;

    iget-object v0, v0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    #setter for: Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z
    invoke-static {v0, v3}, Lcom/google/glass/barcode/BarcodeScanner;->access$002(Lcom/google/glass/barcode/BarcodeScanner;Z)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Lcom/google/android/libraries/barhopper/Barcode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/barcode/BarcodeScanner$1$1;->onPostExecute(Lcom/google/android/libraries/barhopper/Barcode;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/barcode/BarcodeScanner$1$1;->this$1:Lcom/google/glass/barcode/BarcodeScanner$1;

    iget-object v0, v0, Lcom/google/glass/barcode/BarcodeScanner$1;->this$0:Lcom/google/glass/barcode/BarcodeScanner;

    const/4 v1, 0x1

    #setter for: Lcom/google/glass/barcode/BarcodeScanner;->shouldIgnorePreviewFrames:Z
    invoke-static {v0, v1}, Lcom/google/glass/barcode/BarcodeScanner;->access$002(Lcom/google/glass/barcode/BarcodeScanner;Z)Z

    .line 104
    return-void
.end method
