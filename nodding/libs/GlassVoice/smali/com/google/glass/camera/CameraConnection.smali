.class public Lcom/google/glass/camera/CameraConnection;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "CameraConnection.java"


# static fields
.field static final SHARED_CAMERA_SERVICE:Landroid/content/ComponentName;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field final onConnectTasks:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field sharedCameraBinder:Lcom/google/glass/camera/ISharedCameraService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/CameraConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.camera"

    const-string v2, "com.google.glass.camera.SharedCameraService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/CameraConnection;->SHARED_CAMERA_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->SHARED_CAMERA_SERVICE:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/CameraConnection;->onConnectTasks:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/google/glass/camera/CameraConnection;->context:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private runTask(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "runnable"

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-virtual {p0}, Lcom/google/glass/camera/CameraConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Service is connected. Running immediately."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 209
    :goto_0
    return-void

    .line 205
    :cond_0
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Service not connected. Will run when connected."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/google/glass/camera/CameraConnection;->onConnectTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {p0}, Lcom/google/glass/camera/CameraConnection;->bind()Lcom/google/glass/camera/CameraConnection;

    goto :goto_0
.end method


# virtual methods
.method public bind()Lcom/google/glass/camera/CameraConnection;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/camera/CameraConnection;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/CameraConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 61
    return-object p0
.end method

.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 43
    sget-object v2, Lcom/google/glass/camera/CameraConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Camera service connected."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-static {p2}, Lcom/google/glass/camera/ISharedCameraService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/camera/ISharedCameraService;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/camera/CameraConnection;->sharedCameraBinder:Lcom/google/glass/camera/ISharedCameraService;

    .line 47
    iget-object v2, p0, Lcom/google/glass/camera/CameraConnection;->onConnectTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 48
    .local v1, task:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 50
    .end local v1           #task:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/camera/CameraConnection;->onConnectTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 51
    return-void
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 3
    .parameter "name"
    .parameter "isError"

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/camera/CameraConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Camera service disconnected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public recordMoment(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 98
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 99
    new-instance v0, Lcom/google/glass/camera/CameraConnection$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraConnection$2;-><init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraConnection;->runTask(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public startPreview(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 119
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 120
    new-instance v0, Lcom/google/glass/camera/CameraConnection$3;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraConnection$3;-><init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraConnection;->runTask(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public startRecording(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 161
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 162
    new-instance v0, Lcom/google/glass/camera/CameraConnection$5;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraConnection$5;-><init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraConnection;->runTask(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public stopPreview(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 139
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 140
    new-instance v0, Lcom/google/glass/camera/CameraConnection$4;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraConnection$4;-><init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraConnection;->runTask(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public stopRecording(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 182
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 183
    new-instance v0, Lcom/google/glass/camera/CameraConnection$6;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraConnection$6;-><init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraConnection;->runTask(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public takePicture(Lcom/google/glass/camera/SharedCameraClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 77
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 78
    new-instance v0, Lcom/google/glass/camera/CameraConnection$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/camera/CameraConnection$1;-><init>(Lcom/google/glass/camera/CameraConnection;Lcom/google/glass/camera/SharedCameraClient;)V

    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraConnection;->runTask(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public unbind()Lcom/google/glass/camera/CameraConnection;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/camera/CameraConnection;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/CameraConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 67
    return-object p0
.end method
