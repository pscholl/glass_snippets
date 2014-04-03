.class Lcom/google/glass/html/HtmlRenderer$4;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/HtmlRenderer;

.field final synthetic val$onlyLoadFirstPage:Z


# direct methods
.method constructor <init>(Lcom/google/glass/html/HtmlRenderer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    iput-boolean p2, p0, Lcom/google/glass/html/HtmlRenderer$4;->val$onlyLoadFirstPage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 7
    .parameter "view"
    .parameter "picture"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 495
    invoke-static {}, Lcom/google/glass/html/HtmlRenderer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Renderer %s: onNewPicture() for itemId: %s, with isAllocated: %b, autoSizerFinished: %b, paginationFinished: %b, onlyLoadFirstPage: %b"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/glass/html/HtmlRenderer;->access$300(Lcom/google/glass/html/HtmlRenderer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z
    invoke-static {v6}, Lcom/google/glass/html/HtmlRenderer;->access$1500(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z
    invoke-static {v6}, Lcom/google/glass/html/HtmlRenderer;->access$1100(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->paginationFinished:Z
    invoke-static {v6}, Lcom/google/glass/html/HtmlRenderer;->access$1000(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/google/glass/html/HtmlRenderer$4;->val$onlyLoadFirstPage:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z
    invoke-static {v2}, Lcom/google/glass/html/HtmlRenderer;->access$1500(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z
    invoke-static {v2}, Lcom/google/glass/html/HtmlRenderer;->access$1700(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 506
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z
    invoke-static {v3}, Lcom/google/glass/html/HtmlRenderer;->access$1100(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->paginationFinished:Z
    invoke-static {v3}, Lcom/google/glass/html/HtmlRenderer;->access$1000(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/html/HtmlRenderer$4;->val$onlyLoadFirstPage:Z

    if-eqz v3, :cond_3

    :cond_0
    :goto_0
    #setter for: Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z
    invoke-static {v2, v0}, Lcom/google/glass/html/HtmlRenderer;->access$1702(Lcom/google/glass/html/HtmlRenderer;Z)Z

    .line 507
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/google/glass/html/HtmlRenderer;->access$1200(Lcom/google/glass/html/HtmlRenderer;)Landroid/webkit/WebView;

    move-result-object v1

    #calls: Lcom/google/glass/html/HtmlRenderer;->renderToImage(Landroid/webkit/WebView;)V
    invoke-static {v0, v1}, Lcom/google/glass/html/HtmlRenderer;->access$1800(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;)V

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->webViewHasRenderedListener:Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$1900(Lcom/google/glass/html/HtmlRenderer;)Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->hasWebviewRendered:Z
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$1700(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$4;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->webViewHasRenderedListener:Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$1900(Lcom/google/glass/html/HtmlRenderer;)Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/html/HtmlRenderer$WebViewRenderedOnceListener;->onWebViewRendered()V

    .line 515
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 506
    goto :goto_0
.end method
