.class Lcom/google/glass/timeline/TimelineOptionsHelper$1;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->onSearch(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 905
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v6, v6, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v1, v6, v8

    .line 906
    .local v1, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    new-instance v5, Lcom/google/glass/timeline/AttachmentHelper;

    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/glass/timeline/AttachmentHelper;-><init>(Landroid/content/Context;)V

    .line 907
    .local v5, helper:Lcom/google/glass/timeline/AttachmentHelper;
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->HTML:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 908
    .local v2, attachmentType:Lcom/google/glass/util/CachedFilesManager$Type;
    const/4 v3, 0x0

    .line 911
    .local v3, data:[B
    :try_start_0
    iget-object v6, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v1}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 917
    if-nez v3, :cond_0

    .line 918
    invoke-static {}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "Attachment proto or HTML string not on file system and could not be downloaded."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v4

    .line 913
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const-string v7, "AsyncTask interrupted in the middle of an attachment fetch!"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v4, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 921
    .end local v4           #e:Ljava/lang/InterruptedException;
    :cond_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/google/glass/voice/VoiceSearchResultsHelper;->newResultsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 922
    .local v0, answer:Landroid/content/Intent;
    const-string v6, "recognitionResult"

    iget-object v7, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v7, v7, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    const-string v6, "timelineItemId"

    new-instance v7, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v8, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->val$selectedTimelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v7, v8}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 926
    const-string v6, "startTime"

    const-wide/16 v7, -0x1

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 928
    iget-object v6, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
