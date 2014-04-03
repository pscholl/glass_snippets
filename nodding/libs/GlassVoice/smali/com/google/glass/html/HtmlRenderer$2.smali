.class Lcom/google/glass/html/HtmlRenderer$2;
.super Ljava/lang/Object;
.source "HtmlRenderer.java"

# interfaces
.implements Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;


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

.field final synthetic val$footerMarginRight:I

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$onlyLoadFirstPage:Z


# direct methods
.method constructor <init>(Lcom/google/glass/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/google/glass/html/HtmlRenderer$2;->this$0:Lcom/google/glass/html/HtmlRenderer;

    iput-object p2, p0, Lcom/google/glass/html/HtmlRenderer$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput p3, p0, Lcom/google/glass/html/HtmlRenderer$2;->val$footerMarginRight:I

    iput-boolean p4, p0, Lcom/google/glass/html/HtmlRenderer$2;->val$onlyLoadFirstPage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceLoaded()V
    .locals 6

    .prologue
    .line 469
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 472
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$2;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->isAllocated:Z
    invoke-static {v0}, Lcom/google/glass/html/HtmlRenderer;->access$1500(Lcom/google/glass/html/HtmlRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$2;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->itemId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/html/HtmlRenderer;->access$300(Lcom/google/glass/html/HtmlRenderer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/google/glass/html/HtmlRenderer$2;->this$0:Lcom/google/glass/html/HtmlRenderer;

    iget-object v1, p0, Lcom/google/glass/html/HtmlRenderer$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget v2, p0, Lcom/google/glass/html/HtmlRenderer$2;->val$footerMarginRight:I

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/glass/html/HtmlRenderer$2;->val$onlyLoadFirstPage:Z

    iget-object v5, p0, Lcom/google/glass/html/HtmlRenderer$2;->this$0:Lcom/google/glass/html/HtmlRenderer;

    #getter for: Lcom/google/glass/html/HtmlRenderer;->pageChangeListener:Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;
    invoke-static {v5}, Lcom/google/glass/html/HtmlRenderer;->access$900(Lcom/google/glass/html/HtmlRenderer;)Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;

    move-result-object v5

    #calls: Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V
    invoke-static/range {v0 .. v5}, Lcom/google/glass/html/HtmlRenderer;->access$1600(Lcom/google/glass/html/HtmlRenderer;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V

    .line 475
    :cond_0
    return-void
.end method
