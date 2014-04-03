.class Lcom/google/glass/entity/MosaicHelper$2$1;
.super Landroid/os/AsyncTask;
.source "MosaicHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/MosaicHelper$2;->onCellsLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/entity/MosaicHelper$2;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/MosaicHelper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/glass/entity/MosaicHelper$2$1;->this$1:Lcom/google/glass/entity/MosaicHelper$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/MosaicHelper$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/glass/entity/MosaicHelper$2$1;->this$1:Lcom/google/glass/entity/MosaicHelper$2;

    iget-object v1, v1, Lcom/google/glass/entity/MosaicHelper$2;->this$0:Lcom/google/glass/entity/MosaicHelper;

    iget-object v2, p0, Lcom/google/glass/entity/MosaicHelper$2$1;->this$1:Lcom/google/glass/entity/MosaicHelper$2;

    iget-object v2, v2, Lcom/google/glass/entity/MosaicHelper$2;->val$view:Lcom/google/glass/widget/MosaicView;

    #calls: Lcom/google/glass/entity/MosaicHelper;->mosaicViewToPng(Lcom/google/glass/widget/MosaicView;)[B
    invoke-static {v1, v2}, Lcom/google/glass/entity/MosaicHelper;->access$000(Lcom/google/glass/entity/MosaicHelper;Lcom/google/glass/widget/MosaicView;)[B

    move-result-object v0

    .line 114
    .local v0, data:[B
    invoke-static {}, Lcom/google/glass/entity/MosaicHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Rendering succeeded: %d bytes"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/google/glass/entity/MosaicHelper$2$1;->this$1:Lcom/google/glass/entity/MosaicHelper$2;

    iget-object v1, v1, Lcom/google/glass/entity/MosaicHelper$2;->this$0:Lcom/google/glass/entity/MosaicHelper;

    #getter for: Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;
    invoke-static {v1}, Lcom/google/glass/entity/MosaicHelper;->access$200(Lcom/google/glass/entity/MosaicHelper;)Landroid/util/LruCache;

    move-result-object v2

    monitor-enter v2

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/entity/MosaicHelper$2$1;->this$1:Lcom/google/glass/entity/MosaicHelper$2;

    iget-object v1, v1, Lcom/google/glass/entity/MosaicHelper$2;->this$0:Lcom/google/glass/entity/MosaicHelper;

    #getter for: Lcom/google/glass/entity/MosaicHelper;->mosaicCache:Landroid/util/LruCache;
    invoke-static {v1}, Lcom/google/glass/entity/MosaicHelper;->access$200(Lcom/google/glass/entity/MosaicHelper;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/entity/MosaicHelper$2$1;->this$1:Lcom/google/glass/entity/MosaicHelper$2;

    iget-object v3, v3, Lcom/google/glass/entity/MosaicHelper$2;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v1, p0, Lcom/google/glass/entity/MosaicHelper$2$1;->this$1:Lcom/google/glass/entity/MosaicHelper$2;

    iget-object v1, v1, Lcom/google/glass/entity/MosaicHelper$2;->val$resultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 119
    const/4 v1, 0x0

    return-object v1

    .line 117
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
