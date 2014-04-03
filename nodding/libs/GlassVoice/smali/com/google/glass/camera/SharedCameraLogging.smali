.class public Lcom/google/glass/camera/SharedCameraLogging;
.super Ljava/lang/Object;
.source "SharedCameraLogging.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/SharedCameraLogging;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;
    .locals 4
    .parameter "message"
    .parameter "client"

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    invoke-interface {p1}, Lcom/google/glass/camera/ISharedCameraClient;->getTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    .local v1, tag:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 83
    .end local v1           #tag:Ljava/lang/String;
    .end local p0
    :cond_0
    return-object p0

    .line 78
    .restart local p0
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #tag:Ljava/lang/String;
    goto :goto_0
.end method

.method public static logDebug(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    .locals 3
    .parameter "client"
    .parameter "message"

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public static logError(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    .locals 3
    .parameter "client"
    .parameter "message"

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public static logError(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "client"
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 69
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public static logVerbose(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    .locals 3
    .parameter "client"
    .parameter "message"

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static logWarning(Lcom/google/glass/camera/ISharedCameraClient;Ljava/lang/String;)V
    .locals 3
    .parameter "client"
    .parameter "message"

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/camera/SharedCameraLogging;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, p0}, Lcom/google/glass/camera/SharedCameraLogging;->createLogMessage(Ljava/lang/String;Lcom/google/glass/camera/ISharedCameraClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method
