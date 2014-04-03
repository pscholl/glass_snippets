.class Lcom/google/glass/timeline/TimelineNotificationHelper$1;
.super Ljava/lang/Object;
.source "TimelineNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineNotificationHelper;->notify(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineNotificationHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$numNotifications:I


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineNotificationHelper;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->this$0:Lcom/google/glass/timeline/TimelineNotificationHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput p4, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$numNotifications:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    new-instance v1, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v1}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 85
    .local v0, refreshedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->this$0:Lcom/google/glass/timeline/TimelineNotificationHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/google/glass/timeline/TimelineNotificationHelper$1;->val$numNotifications:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/glass/timeline/TimelineNotificationHelper;->notifyInternal(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/google/glass/timeline/TimelineNotificationHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Item from database was null not notifying."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
