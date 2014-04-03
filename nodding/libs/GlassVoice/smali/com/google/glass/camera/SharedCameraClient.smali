.class public abstract Lcom/google/glass/camera/SharedCameraClient;
.super Lcom/google/glass/camera/ISharedCameraClient$Stub;
.source "SharedCameraClient.java"


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private final destroyedPreviewSurfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private isPreviewSurfaceValid:Z

.field private isUsingViewfinder:Z

.field private previewSurface:Landroid/view/Surface;

.field private final previewSurfaceAvailableCondition:Ljava/util/concurrent/locks/Condition;

.field private final previewSurfaceListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private viewfinder:Landroid/view/TextureView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraClient;-><init>(Landroid/os/Handler;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "callbackHandler"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceAvailableCondition:Ljava/util/concurrent/locks/Condition;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->destroyedPreviewSurfaces:Ljava/util/Set;

    .line 66
    new-instance v0, Lcom/google/glass/camera/SharedCameraClient$1;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/SharedCameraClient$1;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/camera/SharedCameraClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/glass/camera/SharedCameraClient;->isPreviewSurfaceValid:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceAvailableCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/camera/SharedCameraClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraClient;->isUsingViewfinder:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/camera/SharedCameraClient;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->destroyedPreviewSurfaces:Ljava/util/Set;

    return-object v0
.end method

.method private fadeViewfinder(Z)V
    .locals 2
    .parameter "shouldShow"

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/google/glass/camera/SharedCameraClient;->getViewfinder()Landroid/view/TextureView;

    move-result-object v0

    .line 549
    .local v0, viewfinder:Landroid/view/TextureView;
    if-eqz v0, :cond_0

    .line 550
    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$14;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/glass/camera/SharedCameraClient$14;-><init>(Lcom/google/glass/camera/SharedCameraClient;Landroid/view/TextureView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 560
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchCameraAcquired()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$5;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraClient$5;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void
.end method

.method public dispatchCameraReleased()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$6;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraClient$6;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method

.method public dispatchCameraShutter()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$7;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraClient$7;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    return-void
.end method

.method public dispatchError(Lcom/google/glass/util/remote/ParcelableException;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$8;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$8;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/util/remote/ParcelableException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 450
    return-void
.end method

.method public dispatchMomentRecorded(Lcom/google/glass/camera/Video;)V
    .locals 2
    .parameter "video"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$4;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$4;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Video;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method public dispatchPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 2
    .parameter "picture"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$3;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Picture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method

.method public dispatchPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 2
    .parameter "picture"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$2;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Picture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method

.method public dispatchPreviewFrame([BJ)V
    .locals 2
    .parameter "previewFrame"
    .parameter "captureTimeNanos"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/camera/SharedCameraClient$9;-><init>(Lcom/google/glass/camera/SharedCameraClient;[BJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    return-void
.end method

.method public dispatchStartPreview()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$10;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraClient$10;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    return-void
.end method

.method public dispatchStartRecording(Lcom/google/glass/camera/Video;)V
    .locals 2
    .parameter "video"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$12;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$12;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Video;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    return-void
.end method

.method public dispatchStopPreview()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$11;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/SharedCameraClient$11;-><init>(Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 483
    return-void
.end method

.method public dispatchStopRecording(Lcom/google/glass/camera/Video;)V
    .locals 2
    .parameter "video"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/camera/SharedCameraClient$13;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/camera/SharedCameraClient$13;-><init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Video;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 505
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 524
    instance-of v1, p1, Lcom/google/glass/camera/SharedCameraClient;

    if-nez v1, :cond_0

    .line 525
    const/4 v1, 0x0

    .line 528
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 527
    check-cast v0, Lcom/google/glass/camera/SharedCameraClient;

    .line 528
    .local v0, c:Lcom/google/glass/camera/SharedCameraClient;
    invoke-virtual {v0}, Lcom/google/glass/camera/SharedCameraClient;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/camera/SharedCameraClient;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 536
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/camera/SharedCameraClient;->stopUsingViewfinder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-super {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->finalize()V

    .line 540
    return-void

    .line 538
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/glass/camera/ISharedCameraClient$Stub;->finalize()V

    throw v0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurface:Landroid/view/Surface;

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/camera/SharedCameraClient;->isPreviewSurfaceValid:Z

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 268
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewfinder()Landroid/view/TextureView;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/google/glass/camera/SharedCameraClient;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isViewfinderValid()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 239
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraClient;->isPreviewSurfaceValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onCameraAcquired()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method protected onCameraReleased()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method protected onCameraShutter()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method protected onError(Lcom/google/glass/util/remote/ParcelableException;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 329
    return-void
.end method

.method protected onMomentRecorded(Lcom/google/glass/camera/Video;)V
    .locals 0
    .parameter "video"

    .prologue
    .line 307
    return-void
.end method

.method protected onPictureSaved(Lcom/google/glass/camera/Picture;)V
    .locals 0
    .parameter "picture"

    .prologue
    .line 299
    return-void
.end method

.method protected onPictureTaken(Lcom/google/glass/camera/Picture;)V
    .locals 0
    .parameter "picture"

    .prologue
    .line 291
    return-void
.end method

.method public onPreviewFrame([BJ)V
    .locals 0
    .parameter "frame"
    .parameter "captureTimeNanos"

    .prologue
    .line 373
    return-void
.end method

.method protected onStartPreview()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraClient;->fadeViewfinder(Z)V

    .line 334
    return-void
.end method

.method public onStartRecording(Lcom/google/glass/camera/Video;)V
    .locals 1
    .parameter "video"

    .prologue
    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraClient;->fadeViewfinder(Z)V

    .line 349
    return-void
.end method

.method protected onStopPreview()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraClient;->fadeViewfinder(Z)V

    .line 339
    return-void
.end method

.method public onStopRecording(Lcom/google/glass/camera/Video;)V
    .locals 1
    .parameter "video"

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/camera/SharedCameraClient;->fadeViewfinder(Z)V

    .line 359
    return-void
.end method

.method public setViewfinder(Landroid/view/TextureView;)V
    .locals 2
    .parameter "viewfinder"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 203
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "Ignoring previously set viewfinder."

    invoke-static {p0, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logWarning(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    :goto_0
    return-void

    .line 209
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 214
    :cond_1
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    .line 215
    if-eqz p1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public shouldUseInvisiblePreview()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startUsingViewfinder()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 228
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/camera/SharedCameraClient;->isUsingViewfinder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopUsingViewfinder()V
    .locals 4

    .prologue
    .line 179
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 182
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/google/glass/camera/SharedCameraClient;->isUsingViewfinder:Z

    .line 184
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraClient;->destroyedPreviewSurfaces:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 185
    .local v1, surface:Landroid/graphics/SurfaceTexture;
    const-string v2, "Releasing preview surface."

    invoke-static {p0, v2}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #surface:Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 188
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraClient;->destroyedPreviewSurfaces:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    iget-object v2, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/google/glass/camera/SharedCameraClient;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitForPreviewSurface(J)Z
    .locals 7
    .parameter "timeoutNanos"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 136
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 139
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    :goto_0
    return v3

    .line 143
    :cond_0
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 145
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    const-string v4, "Preview surface already available."

    invoke-static {p0, v4}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 150
    :cond_1
    :try_start_1
    const-string v5, "Preview surface not available yet. Waiting..."

    invoke-static {p0, v5}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraClient;->viewfinder:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 153
    iget-object v5, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceAvailableCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v1

    .line 155
    .local v1, timeRemainingNanos:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_2

    .line 156
    const-string v3, "Timed out while waiting for the preview surface."

    invoke-static {p0, v3}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    goto :goto_0

    .line 160
    .end local v1           #timeRemainingNanos:J
    :cond_3
    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, p0, Lcom/google/glass/camera/SharedCameraClient;->isPreviewSurfaceValid:Z

    .line 161
    const-string v5, "Preview surface became available."

    invoke-static {p0, v5}, Lcom/google/glass/camera/SharedCameraLogging;->logDebug(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 169
    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "Interrupted while waiting for the recording preview surface."

    invoke-static {p0, v3, v0}, Lcom/google/glass/camera/SharedCameraLogging;->logError(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    iget-object v3, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/glass/camera/SharedCameraClient;->previewSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method
