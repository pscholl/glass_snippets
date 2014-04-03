.class Lcom/google/glass/timeline/TimelineHelper$7;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "TimelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineHelper;->addAttachmentToTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineHelper;

.field final synthetic val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

.field final synthetic val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field final synthetic val$markAsSynced:Z

.field final synthetic val$setModifiedTime:Z


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;ZLandroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2169
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineHelper$7;->this$0:Lcom/google/glass/timeline/TimelineHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    iput-boolean p4, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$setModifiedTime:Z

    iput-object p5, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-boolean p7, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$markAsSynced:Z

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 2173
    .local v2, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v2, v0}, Lcom/google/glass/timeline/TimelineHelper;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 2174
    iget-boolean v0, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$setModifiedTime:Z

    if-eqz v0, :cond_0

    .line 2175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->modifiedTime:Ljava/lang/Long;

    .line 2179
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineHelper$7;->this$0:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$action:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iget-boolean v4, p0, Lcom/google/glass/timeline/TimelineHelper$7;->val$markAsSynced:Z

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method
