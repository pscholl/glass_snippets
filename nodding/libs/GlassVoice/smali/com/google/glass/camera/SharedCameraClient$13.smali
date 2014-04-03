.class Lcom/google/glass/camera/SharedCameraClient$13;
.super Ljava/lang/Object;
.source "SharedCameraClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraClient;->dispatchStopRecording(Lcom/google/glass/camera/Video;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraClient;

.field final synthetic val$video:Lcom/google/glass/camera/Video;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/camera/Video;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient$13;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraClient$13;->val$video:Lcom/google/glass/camera/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$13;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$13;->val$video:Lcom/google/glass/camera/Video;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/SharedCameraClient;->onStopRecording(Lcom/google/glass/camera/Video;)V

    .line 503
    return-void
.end method
