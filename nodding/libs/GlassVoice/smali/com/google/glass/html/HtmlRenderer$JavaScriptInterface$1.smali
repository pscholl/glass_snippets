.class Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$1;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->paginationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 213
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$900(Lcom/google/glass/html/HtmlRenderer;)Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$900(Lcom/google/glass/html/HtmlRenderer;)Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;

    iget-object v1, v1, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->numPages:I
    invoke-static {v1}, Lcom/google/glass/html/HtmlRenderer;->access$700(Lcom/google/glass/html/HtmlRenderer;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;->onPageCountChange(I)V

    .line 221
    :cond_0
    return-void
.end method
