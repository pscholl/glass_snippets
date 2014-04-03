.class Lcom/google/glass/entity/MosaicHelper$3;
.super Ljava/lang/Object;
.source "MosaicHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/MosaicHelper;->renderMosaicToPng(Lcom/google/glass/widget/ImageLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/MosaicHelper;

.field final synthetic val$imageLoader:Lcom/google/glass/widget/ImageLoader;

.field final synthetic val$view:Lcom/google/glass/widget/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/widget/MosaicView;Lcom/google/glass/widget/ImageLoader;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/glass/entity/MosaicHelper$3;->this$0:Lcom/google/glass/entity/MosaicHelper;

    iput-object p2, p0, Lcom/google/glass/entity/MosaicHelper$3;->val$view:Lcom/google/glass/widget/MosaicView;

    iput-object p3, p0, Lcom/google/glass/entity/MosaicHelper$3;->val$imageLoader:Lcom/google/glass/widget/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/entity/MosaicHelper$3;->val$view:Lcom/google/glass/widget/MosaicView;

    iget-object v1, p0, Lcom/google/glass/entity/MosaicHelper$3;->val$imageLoader:Lcom/google/glass/widget/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MosaicView;->loadImages(Lcom/google/glass/widget/ImageLoader;)V

    .line 132
    return-void
.end method
