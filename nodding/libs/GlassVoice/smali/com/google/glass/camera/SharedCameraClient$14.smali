.class Lcom/google/glass/camera/SharedCameraClient$14;
.super Ljava/lang/Object;
.source "SharedCameraClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/SharedCameraClient;->fadeViewfinder(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/SharedCameraClient;

.field final synthetic val$shouldShow:Z

.field final synthetic val$viewfinder:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/SharedCameraClient;Landroid/view/TextureView;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/google/glass/camera/SharedCameraClient$14;->this$0:Lcom/google/glass/camera/SharedCameraClient;

    iput-object p2, p0, Lcom/google/glass/camera/SharedCameraClient$14;->val$viewfinder:Landroid/view/TextureView;

    iput-boolean p3, p0, Lcom/google/glass/camera/SharedCameraClient$14;->val$shouldShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/glass/camera/SharedCameraClient$14;->val$viewfinder:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/glass/camera/SharedCameraClient$14;->val$shouldShow:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 557
    return-void

    .line 553
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
