.class Lcom/google/glass/timeline/TimelineItemCreatorJob$1;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "TimelineItemCreatorJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemCreatorJob;->dispatchCreateTemporaryItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

.field final synthetic val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemCreatorJob;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 204
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->cloudSyncProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    .line 208
    .local v0, userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    #getter for: Lcom/google/glass/timeline/TimelineItemCreatorJob;->userActionType:I
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$000(Lcom/google/glass/timeline/TimelineItemCreatorJob;)I

    move-result v1

    iput v1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->type:I

    .line 209
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    iget-object v1, v1, Lcom/google/glass/timeline/TimelineItemCreatorJob;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    #getter for: Lcom/google/glass/timeline/TimelineItemCreatorJob;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$100(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->this$0:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    #getter for: Lcom/google/glass/timeline/TimelineItemCreatorJob;->itemType:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;
    invoke-static {v4}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->access$200(Lcom/google/glass/timeline/TimelineItemCreatorJob;)Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 210
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineItemCreatorJob$1;->val$itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v1
.end method
