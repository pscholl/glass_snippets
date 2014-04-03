.class Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$2;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->autoSizingComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$2;->this$1:Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$2;->this$1:Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$1200(Lcom/google/glass/html/HtmlRenderer;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$2;->this$1:Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$1200(Lcom/google/glass/html/HtmlRenderer;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:Paginator.init("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$2;->this$1:Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;

    iget-object v2, v2, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z
    invoke-static {v2}, Lcom/google/glass/html/HtmlRenderer;->access$800(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method
