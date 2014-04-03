.class public Lcom/google/glass/barcode/BarcodeScanner$Builder;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/barcode/BarcodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final cameraFrameModulus:I

.field private final scanTimeoutNanos:J


# direct methods
.method constructor <init>(IJ)V
    .locals 0
    .parameter "cameraFrameModulus"
    .parameter "scanTimeoutNanos"

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p1, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->cameraFrameModulus:I

    .line 269
    iput-wide p2, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->scanTimeoutNanos:J

    .line 270
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;Lcom/google/glass/userevent/UserEventHelper;)Lcom/google/glass/barcode/BarcodeScanner;
    .locals 7
    .parameter "context"
    .parameter "listener"
    .parameter "userEventHelper"

    .prologue
    .line 282
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner;

    iget v2, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->cameraFrameModulus:I

    iget-wide v3, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->scanTimeoutNanos:J

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/barcode/BarcodeScanner;-><init>(Landroid/content/Context;IJLcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;Lcom/google/glass/userevent/UserEventHelper;)V

    return-object v0
.end method

.method public withCameraFrameModulus(I)Lcom/google/glass/barcode/BarcodeScanner$Builder;
    .locals 3
    .parameter "cameraFrameModulus"

    .prologue
    .line 273
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$Builder;

    iget-wide v1, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->scanTimeoutNanos:J

    invoke-direct {v0, p1, v1, v2}, Lcom/google/glass/barcode/BarcodeScanner$Builder;-><init>(IJ)V

    return-object v0
.end method

.method public withScanTimeoutNanos(J)Lcom/google/glass/barcode/BarcodeScanner$Builder;
    .locals 2
    .parameter "scanTimeoutNanos"

    .prologue
    .line 277
    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$Builder;

    iget v1, p0, Lcom/google/glass/barcode/BarcodeScanner$Builder;->cameraFrameModulus:I

    invoke-direct {v0, v1, p1, p2}, Lcom/google/glass/barcode/BarcodeScanner$Builder;-><init>(IJ)V

    return-object v0
.end method
