.class final Lcom/google/glass/companion/CompanionUtils$1;
.super Lcom/google/glass/timeline/TimelineHelper$Update;
.source "CompanionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/companion/CompanionUtils;->updateCompanionSyncStatus(Landroid/content/Context;Ljava/lang/String;ILcom/google/glass/timeline/TimelineHelper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$syncStatus:I

.field final synthetic val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineHelper;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iput-object p2, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$itemId:Ljava/lang/String;

    iput p4, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$syncStatus:I

    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 221
    iget-object v0, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/google/glass/timeline/TimelineHelper;->queryTimelineItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 222
    .local v2, item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget v0, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$syncStatus:I

    iput v0, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->companionSyncStatus:I

    .line 223
    iget-object v0, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/companion/CompanionUtils$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineHelper;->updateTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;ZZ)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method
