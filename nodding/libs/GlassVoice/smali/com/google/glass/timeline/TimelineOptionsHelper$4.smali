.class Lcom/google/glass/timeline/TimelineOptionsHelper$4;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"

# interfaces
.implements Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->onDelete(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$deletedListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$itemSourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->val$itemSourceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->val$itemId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->val$deletedListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$300(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DELETE_COMPLETED:Lcom/google/glass/userevent/UserEventAction;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->val$itemSourceId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$200(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->val$itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/timeline/TimelineHelper;->deleteTimelineItemAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->val$deletedListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->val$deletedListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;->onDeleted()V

    .line 1268
    :cond_0
    return-void
.end method

.method public onDismissed(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->val$deletedListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$4;->val$deletedListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;->onDeleteCanceled()V

    .line 1275
    :cond_0
    return-void
.end method
