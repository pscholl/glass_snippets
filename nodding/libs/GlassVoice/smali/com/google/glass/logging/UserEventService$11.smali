.class Lcom/google/glass/logging/UserEventService$11;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserEventService;

.field final synthetic val$isForced:Z

.field final synthetic val$userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$11;->this$0:Lcom/google/glass/logging/UserEventService;

    iput-object p2, p0, Lcom/google/glass/logging/UserEventService$11;->val$userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    iput-boolean p3, p0, Lcom/google/glass/logging/UserEventService$11;->val$isForced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 439
    iget-object v5, p0, Lcom/google/glass/logging/UserEventService$11;->val$userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    if-eqz v5, :cond_1

    .line 440
    iget-object v5, p0, Lcom/google/glass/logging/UserEventService$11;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v6, p0, Lcom/google/glass/logging/UserEventService$11;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v7, p0, Lcom/google/glass/logging/UserEventService$11;->val$userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-virtual {v6, v7}, Lcom/google/glass/logging/UserEventService;->addSerial(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v6

    #calls: Lcom/google/glass/logging/UserEventService;->addPerformanceStats(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    invoke-static {v5, v6}, Lcom/google/glass/logging/UserEventService;->access$400(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    .line 442
    .local v0, annotated:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v1, logString:Ljava/lang/StringBuilder;
    const-string v5, "Logging user event: [action="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/glass/userevent/UserEventAction;->fromAction(Ljava/lang/String;)Lcom/google/glass/userevent/UserEventAction;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 451
    .local v2, now:J
    iget-object v5, p0, Lcom/google/glass/logging/UserEventService$11;->this$0:Lcom/google/glass/logging/UserEventService;

    #getter for: Lcom/google/glass/logging/UserEventService;->lastPerfStatsLogcatTime:J
    invoke-static {v5}, Lcom/google/glass/logging/UserEventService;->access$500(Lcom/google/glass/logging/UserEventService;)J

    move-result-wide v5

    sub-long v5, v2, v5

    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$600()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 452
    iget-object v5, p0, Lcom/google/glass/logging/UserEventService$11;->this$0:Lcom/google/glass/logging/UserEventService;

    #setter for: Lcom/google/glass/logging/UserEventService;->lastPerfStatsLogcatTime:J
    invoke-static {v5, v2, v3}, Lcom/google/glass/logging/UserEventService;->access$502(Lcom/google/glass/logging/UserEventService;J)J

    .line 453
    const-string v5, ", performance stats: ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-object v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    #calls: Lcom/google/glass/logging/UserEventService;->clone(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    invoke-static {v5}, Lcom/google/glass/logging/UserEventService;->access$700(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    move-result-object v4

    .line 456
    .local v4, statsNoFreq:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    iget-object v5, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    sget-object v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iput-object v6, v5, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 458
    invoke-virtual {v4}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .end local v4           #statsNoFreq:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    :cond_0
    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    iget-object v5, p0, Lcom/google/glass/logging/UserEventService$11;->this$0:Lcom/google/glass/logging/UserEventService;

    #calls: Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    invoke-static {v5, v0}, Lcom/google/glass/logging/UserEventService;->access$800(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 465
    .end local v0           #annotated:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v1           #logString:Ljava/lang/StringBuilder;
    .end local v2           #now:J
    :cond_1
    iget-object v5, p0, Lcom/google/glass/logging/UserEventService$11;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-boolean v6, p0, Lcom/google/glass/logging/UserEventService$11;->val$isForced:Z

    #calls: Lcom/google/glass/logging/UserEventService;->logQueued(Z)V
    invoke-static {v5, v6}, Lcom/google/glass/logging/UserEventService;->access$900(Lcom/google/glass/logging/UserEventService;Z)V

    .line 466
    return-void
.end method
