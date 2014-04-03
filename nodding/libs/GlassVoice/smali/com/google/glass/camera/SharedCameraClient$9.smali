.class Lcom/google/glass/camera/SharedCameraClient$9;
.super Ljava/lang/Object;
.source "SharedCameraClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraClient;->dispatchPreviewFrame([BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraClient;

.field final synthetic val$captureTimeNanos:J

.field final synthetic val$previewFrame:[B


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraClient;[BJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient$9;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraClient$9;->val$previewFrame:[B

    iput-wide p3, p0, Lcom/google/glass/camera/SharedCameraClient$9;->val$captureTimeNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$9;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$9;->val$previewFrame:[B

    iget-wide v2, p0, Lcom/google/glass/camera/SharedCameraClient$9;->val$captureTimeNanos:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/camera/SharedCameraClient;->onPreviewFrame([BJ)V

    .line 459
    return-void
.end method
