.class Lcom/google/glass/timeline/TimelineOptionsHelper$6$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TimelineOptionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/timeline/TimelineOptionsHelper$6;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6$1;->this$1:Lcom/google/glass/timeline/TimelineOptionsHelper$6;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6$1;->this$1:Lcom/google/glass/timeline/TimelineOptionsHelper$6;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;->onEnd()V

    .line 1405
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6$1;->this$1:Lcom/google/glass/timeline/TimelineOptionsHelper$6;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;->onEnd()V

    .line 1410
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6$1;->this$1:Lcom/google/glass/timeline/TimelineOptionsHelper$6;

    iget-object v0, v0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineOptionProgressListener:Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineOptionProgressListener;->onStart()V

    .line 1400
    return-void
.end method
