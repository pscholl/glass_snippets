.class Lcom/google/glass/timeline/TimelineNotificationHelper$2;
.super Ljava/lang/Object;
.source "TimelineNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineNotificationHelper;->preloadAttachments(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineNotificationHelper;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$renderer:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineNotificationHelper;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->this$0:Lcom/google/glass/timeline/TimelineNotificationHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$renderer:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-static {}, Lcom/google/glass/html/HtmlRenderer;->obtain()Lcom/google/glass/html/HtmlRenderer;

    move-result-object v0

    .line 195
    .local v0, htmlRenderer:Lcom/google/glass/html/HtmlRenderer;
    if-nez v0, :cond_0

    .line 196
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Cannot load HTML resources; no HTML renderer available."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$resourceLoadLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 218
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$renderer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/glass/timeline/TimelineNotificationHelper$2$1;

    invoke-direct {v3, p0}, Lcom/google/glass/timeline/TimelineNotificationHelper$2$1;-><init>(Lcom/google/glass/timeline/TimelineNotificationHelper$2;)V

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/glass/html/HtmlRenderer;->render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZLcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;)V

    .line 209
    const/4 v1, 0x0

    new-instance v2, Lcom/google/glass/timeline/TimelineNotificationHelper$2$2;

    invoke-direct {v2, p0}, Lcom/google/glass/timeline/TimelineNotificationHelper$2$2;-><init>(Lcom/google/glass/timeline/TimelineNotificationHelper$2;)V

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/glass/html/HtmlRenderer;->registerListenerForPage(ILandroid/graphics/Canvas;Lcom/google/glass/html/HtmlRenderer$OnRenderListener;)V

    goto :goto_0
.end method
