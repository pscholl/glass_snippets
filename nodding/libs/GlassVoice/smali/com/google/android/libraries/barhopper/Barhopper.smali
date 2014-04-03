.class public Lcom/google/android/libraries/barhopper/Barhopper;
.super Ljava/lang/Object;
.source "Barhopper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "barhopper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recognize(II[BLcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "image"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 21
    move v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/barhopper/Barhopper;->recognizeNative(II[BZZLcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v0

    return v0
.end method

.method public static recognize1D(II[BLcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "image"
    .parameter "result"

    .prologue
    .line 29
    const/4 v3, 0x1

    const/4 v4, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/barhopper/Barhopper;->recognizeNative(II[BZZLcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v0

    return v0
.end method

.method public static recognize2D(II[BLcom/google/android/libraries/barhopper/Barcode;)Z
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "image"
    .parameter "result"

    .prologue
    .line 37
    const/4 v3, 0x0

    const/4 v4, 0x1

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/barhopper/Barhopper;->recognizeNative(II[BZZLcom/google/android/libraries/barhopper/Barcode;)Z

    move-result v0

    return v0
.end method

.method public static native recognizeNative(II[BZZLcom/google/android/libraries/barhopper/Barcode;)Z
.end method
