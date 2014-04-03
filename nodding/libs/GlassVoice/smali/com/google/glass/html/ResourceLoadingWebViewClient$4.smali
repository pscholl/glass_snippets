.class Lcom/google/glass/html/ResourceLoadingWebViewClient$4;
.super Ljava/lang/Object;
.source "ResourceLoadingWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadMap(Ljava/lang/String;Ljava/util/List;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->val$request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    iput-object p3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 363
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    #getter for: Lcom/google/glass/html/ResourceLoadingWebViewClient;->mapHelper:Lcom/google/glass/maps/MapHelper;
    invoke-static {v2}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$500(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/maps/MapHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->val$request:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-virtual {v2, v3}, Lcom/google/glass/maps/MapHelper;->renderMapToPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 365
    .local v1, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<[B>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 368
    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 369
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 370
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-static {}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Map rendering error, uri: %s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;->val$uri:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
