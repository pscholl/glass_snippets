.class public interface abstract Lcom/google/glass/barcode/BarcodeScanner$BarcodeScannerListener;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/barcode/BarcodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BarcodeScannerListener"
.end annotation


# virtual methods
.method public abstract onBarcodeScanned(Lcom/google/android/libraries/barhopper/Barcode;)Z
.end method

.method public abstract onError(Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;)V
.end method
