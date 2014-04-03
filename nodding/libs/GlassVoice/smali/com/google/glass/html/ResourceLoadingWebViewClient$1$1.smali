.class Lcom/google/glass/html/ResourceLoadingWebViewClient$1$1;
.super Landroid/os/AsyncTask;
.source "ResourceLoadingWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->run()V
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
.field final synthetic this$1:Lcom/google/glass/html/ResourceLoadingWebViewClient$1;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient$1;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1$1;->this$1:Lcom/google/glass/html/ResourceLoadingWebViewClient$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 218
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 219
    invoke-virtual {p0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1$1;->this$1:Lcom/google/glass/html/ResourceLoadingWebViewClient$1;

    iget-object v0, v0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 222
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 227
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 228
    invoke-virtual {p0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1$1;->this$1:Lcom/google/glass/html/ResourceLoadingWebViewClient$1;

    iget-object v0, v0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    #getter for: Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$200(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;->onResourceLoaded()V

    .line 231
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 213
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1$1;->this$1:Lcom/google/glass/html/ResourceLoadingWebViewClient$1;

    iget-object v0, v0, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    #getter for: Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadTasks:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$100(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method
