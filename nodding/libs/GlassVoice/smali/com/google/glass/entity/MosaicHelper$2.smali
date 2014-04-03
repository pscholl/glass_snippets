.class Lcom/google/glass/entity/MosaicHelper$2;
.super Ljava/lang/Object;
.source "MosaicHelper.java"

# interfaces
.implements Lcom/google/glass/widget/MosaicView$CellsLoadedListener;


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

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$view:Lcom/google/glass/widget/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/widget/MosaicView;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/glass/entity/MosaicHelper$2;->this$0:Lcom/google/glass/entity/MosaicHelper;

    iput-object p2, p0, Lcom/google/glass/entity/MosaicHelper$2;->val$view:Lcom/google/glass/widget/MosaicView;

    iput-object p3, p0, Lcom/google/glass/entity/MosaicHelper$2;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/entity/MosaicHelper$2;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellsLoaded()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/google/glass/entity/MosaicHelper$2$1;

    invoke-direct {v0, p0}, Lcom/google/glass/entity/MosaicHelper$2$1;-><init>(Lcom/google/glass/entity/MosaicHelper$2;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/MosaicHelper$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method
