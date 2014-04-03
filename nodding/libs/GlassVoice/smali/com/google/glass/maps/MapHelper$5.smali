.class Lcom/google/glass/maps/MapHelper$5;
.super Ljava/lang/Object;
.source "MapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/maps/MapHelper;->renderMap(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$5;->this$0:Lcom/google/glass/maps/MapHelper;

    iput-object p2, p0, Lcom/google/glass/maps/MapHelper$5;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    iput-object p3, p0, Lcom/google/glass/maps/MapHelper$5;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper$5;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$5;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v2, v1}, Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;->onMapRendered(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/maps/MapHelper;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Interrupted"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 279
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$5;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    invoke-interface {v1}, Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;->onMapFailed()V

    goto :goto_0

    .line 280
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 281
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lcom/google/glass/maps/MapHelper;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "ExecutionException"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$5;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    invoke-interface {v1}, Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;->onMapFailed()V

    goto :goto_0
.end method
