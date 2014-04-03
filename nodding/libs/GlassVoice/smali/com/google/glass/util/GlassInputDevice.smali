.class public Lcom/google/glass/util/GlassInputDevice;
.super Ljava/lang/Object;
.source "GlassInputDevice.java"


# static fields
.field public static final VIRTUAL_DEVICE_NAME:Ljava/lang/String; = "virtual_touchpad"


# instance fields
.field private final devicePointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "glassinputdevice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "deviceName"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0, p1}, Lcom/google/glass/util/GlassInputDevice;->create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/GlassInputDevice;->devicePointer:I

    .line 18
    return-void
.end method

.method private native create(Ljava/lang/String;)I
.end method

.method private native destroy(I)V
.end method

.method private native finishTouchInternal(I)V
.end method

.method private native injectTouchInternal(I[I[I[I[I[I)V
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/glass/util/GlassInputDevice;->devicePointer:I

    invoke-direct {p0, v0}, Lcom/google/glass/util/GlassInputDevice;->destroy(I)V

    .line 34
    return-void
.end method

.method public declared-synchronized finishTouch()V
    .locals 1

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/util/GlassInputDevice;->devicePointer:I

    invoke-direct {p0, v0}, Lcom/google/glass/util/GlassInputDevice;->finishTouchInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized injectTouch([I[I[I[I[I)V
    .locals 7
    .parameter "xArray"
    .parameter "yArray"
    .parameter "touchMajors"
    .parameter "touchMinors"
    .parameter "pressures"

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/glass/util/GlassInputDevice;->devicePointer:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/GlassInputDevice;->injectTouchInternal(I[I[I[I[I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
