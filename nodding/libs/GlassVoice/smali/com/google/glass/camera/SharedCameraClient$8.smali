.class Lcom/google/glass/camera/SharedCameraClient$8;
.super Ljava/lang/Object;
.source "SharedCameraClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraClient;->dispatchError(Lcom/google/glass/util/remote/ParcelableException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraClient;

.field final synthetic val$exception:Lcom/google/glass/util/remote/ParcelableException;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraClient;Lcom/google/glass/util/remote/ParcelableException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient$8;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraClient$8;->val$exception:Lcom/google/glass/util/remote/ParcelableException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$8;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    iget-object v1, p0, Lcom/google/glass/camera/SharedCameraClient$8;->val$exception:Lcom/google/glass/util/remote/ParcelableException;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/SharedCameraClient;->onError(Lcom/google/glass/util/remote/ParcelableException;)V

    .line 448
    return-void
.end method
