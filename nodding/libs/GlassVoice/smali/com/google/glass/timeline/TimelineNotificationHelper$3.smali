.class Lcom/google/glass/timeline/TimelineNotificationHelper$3;
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

.field final synthetic val$renderer:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineNotificationHelper;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$3;->this$0:Lcom/google/glass/timeline/TimelineNotificationHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$3;->val$renderer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$3;->val$renderer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/HtmlRenderer;

    .line 234
    .local v0, htmlRenderer:Lcom/google/glass/html/HtmlRenderer;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/google/glass/html/HtmlRenderer;->release()V

    .line 237
    :cond_0
    return-void
.end method
