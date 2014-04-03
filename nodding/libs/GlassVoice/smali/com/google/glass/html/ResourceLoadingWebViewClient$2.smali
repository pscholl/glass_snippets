.class Lcom/google/glass/html/ResourceLoadingWebViewClient$2;
.super Ljava/lang/Object;
.source "ResourceLoadingWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

.field final synthetic val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;


# direct methods
.method constructor <init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    #getter for: Lcom/google/glass/html/ResourceLoadingWebViewClient;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;
    invoke-static {v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/CachedBitmapFactory;->getCachedAttachmentPath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Z)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->this$0:Lcom/google/glass/html/ResourceLoadingWebViewClient;

    #getter for: Lcom/google/glass/html/ResourceLoadingWebViewClient;->thumbnailer:Lcom/google/glass/html/Thumbnailer;
    invoke-static {v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->access$400(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/Thumbnailer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;->val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/glass/html/Thumbnailer;->createThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Ljava/lang/String;Z)Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    .line 280
    return-void
.end method
