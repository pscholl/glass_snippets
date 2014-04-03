.class Lcom/google/glass/html/ResourceLoadingWebViewClient$3;
.super Ljava/lang/Object;
.source "ResourceLoadingWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadHttpResource(Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$httpResourceTask:Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->val$httpResourceTask:Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;->val$httpResourceTask:Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;

    invoke-virtual {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;->getPath()Ljava/lang/String;

    .line 299
    return-void
.end method
