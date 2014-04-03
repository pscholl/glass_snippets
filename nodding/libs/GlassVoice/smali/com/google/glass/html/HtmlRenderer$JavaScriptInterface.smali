.class public Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/html/HtmlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/HtmlRenderer;


# direct methods
.method public constructor <init>(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoSizingComplete()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 229
    invoke-static {}, Lcom/google/glass/html/HtmlRenderer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "autoSizingComplete for item: %s, onlyLoadingFirstPage: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/glass/html/HtmlRenderer;->access$300(Lcom/google/glass/html/HtmlRenderer;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z
    invoke-static {v3}, Lcom/google/glass/html/HtmlRenderer;->access$800(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #setter for: Lcom/google/glass/html/HtmlRenderer;->autoSizerFinished:Z
    invoke-static {v0, v5}, Lcom/google/glass/html/HtmlRenderer;->access$1102(Lcom/google/glass/html/HtmlRenderer;Z)Z

    .line 237
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$2;

    invoke-direct {v1, p0}, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$2;-><init>(Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public paginationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "contentWidth"
    .parameter "contentHeight"
    .parameter "skipCoverPage"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 191
    invoke-static {}, Lcom/google/glass/html/HtmlRenderer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "paginationComplete for item: %s to: %s x %s, %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/glass/html/HtmlRenderer;->access$300(Lcom/google/glass/html/HtmlRenderer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p1, v4, v6

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->width:I
    invoke-static {v2}, Lcom/google/glass/html/HtmlRenderer;->access$500(Lcom/google/glass/html/HtmlRenderer;)I

    move-result v0

    .line 201
    .local v0, contentWidthPixels:I
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 206
    :goto_0
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    #setter for: Lcom/google/glass/html/HtmlRenderer;->hasCoverPage:Z
    invoke-static {v2, v3}, Lcom/google/glass/html/HtmlRenderer;->access$602(Lcom/google/glass/html/HtmlRenderer;Z)Z

    .line 208
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->width:I
    invoke-static {v3}, Lcom/google/glass/html/HtmlRenderer;->access$500(Lcom/google/glass/html/HtmlRenderer;)I

    move-result v3

    div-int v3, v0, v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    #setter for: Lcom/google/glass/html/HtmlRenderer;->numPages:I
    invoke-static {v2, v3}, Lcom/google/glass/html/HtmlRenderer;->access$702(Lcom/google/glass/html/HtmlRenderer;I)I

    .line 209
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->onlyLoadFirstPage:Z
    invoke-static {v2}, Lcom/google/glass/html/HtmlRenderer;->access$800(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->hasCoverPage:Z
    invoke-static {v2}, Lcom/google/glass/html/HtmlRenderer;->access$600(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    invoke-static {v2, v6}, Lcom/google/glass/html/HtmlRenderer;->access$720(Lcom/google/glass/html/HtmlRenderer;I)I

    .line 213
    :cond_0
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$1;

    invoke-direct {v3, p0}, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface$1;-><init>(Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 223
    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$JavaScriptInterface;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #setter for: Lcom/google/glass/html/HtmlRenderer;->paginationFinished:Z
    invoke-static {v2, v6}, Lcom/google/glass/html/HtmlRenderer;->access$1002(Lcom/google/glass/html/HtmlRenderer;Z)Z

    .line 224
    return-void

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, nfe:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/google/glass/html/HtmlRenderer;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Received bad content width from JS: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
