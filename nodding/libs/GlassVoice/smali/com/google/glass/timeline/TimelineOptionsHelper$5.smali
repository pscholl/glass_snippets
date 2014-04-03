.class Lcom/google/glass/timeline/TimelineOptionsHelper$5;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$uriStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->val$uriStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;->onStart()V

    .line 1376
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->getSharedInstance()Lcom/google/glass/voice/network/translate/NetworkTts;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->val$uriStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/network/translate/NetworkTts;->requestTtsAndPlay(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1377
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;->onEnd()V

    .line 1380
    :cond_1
    return-void
.end method
