.class Lcom/google/glass/html/HtmlRenderer$1;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/HtmlRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/html/HtmlRenderCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/HtmlRenderer;


# direct methods
.method constructor <init>(Lcom/google/glass/html/HtmlRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$1;->this$0:Lcom/google/glass/html/HtmlRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$1;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$1200(Lcom/google/glass/html/HtmlRenderer;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$1;->this$0:Lcom/google/glass/html/HtmlRenderer;

    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$1;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/google/glass/html/HtmlRenderer;->access$1200(Lcom/google/glass/html/HtmlRenderer;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/html/HtmlRenderer$1;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->width:I
    invoke-static {v2}, Lcom/google/glass/html/HtmlRenderer;->access$500(Lcom/google/glass/html/HtmlRenderer;)I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/html/HtmlRenderer$1;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->height:I
    invoke-static {v3}, Lcom/google/glass/html/HtmlRenderer;->access$1300(Lcom/google/glass/html/HtmlRenderer;)I

    move-result v3

    #calls: Lcom/google/glass/html/HtmlRenderer;->doLayout(Landroid/webkit/WebView;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/html/HtmlRenderer;->access$1400(Lcom/google/glass/html/HtmlRenderer;Landroid/webkit/WebView;II)V

    .line 345
    :cond_0
    return-void
.end method
