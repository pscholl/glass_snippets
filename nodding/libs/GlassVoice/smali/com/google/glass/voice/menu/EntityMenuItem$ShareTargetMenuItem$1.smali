.class Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;
.super Ljava/lang/Object;
.source "EntityMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->onTrigger(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;

.field final synthetic val$environment:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->this$0:Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;

    iput-object p2, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->val$environment:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 135
    iget-object v3, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->this$0:Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;

    invoke-virtual {v3}, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 136
    .local v1, shareTarget:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    sget-object v3, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->this$0:Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;

    #getter for: Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {v4}, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->access$000(Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 139
    .local v2, timelineItemUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->val$environment:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v3}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/glass/share/ShareActivityHelper;->getBaseShareActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    .local v0, shareMenuIntent:Landroid/content/Intent;
    const-string v3, "item_id"

    new-instance v4, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v5, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->this$0:Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;

    #getter for: Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {v5}, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->access$000(Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    const-string v3, "update_timeline_share"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    const-string v3, "voice_annotation"

    iget-object v4, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->this$0:Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;

    #getter for: Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-static {v4}, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;->access$000(Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->sharingFeature:[I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->contains([II)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    const-string v3, "chosen_share_target"

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 148
    const-string v3, "animateToTimelineItem"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    iget-object v3, p0, Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->val$environment:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v3}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Lcom/google/glass/app/GlassActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    return-void
.end method
