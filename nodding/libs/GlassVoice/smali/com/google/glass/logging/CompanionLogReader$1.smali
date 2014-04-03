.class Lcom/google/glass/logging/CompanionLogReader$1;
.super Landroid/os/Handler;
.source "CompanionLogReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/CompanionLogReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/CompanionLogReader;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/CompanionLogReader;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 27
    invoke-static {}, Lcom/google/glass/logging/CompanionLogReader;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling response for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    #getter for: Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J
    invoke-static {v4}, Lcom/google/glass/logging/CompanionLogReader;->access$000(Lcom/google/glass/logging/CompanionLogReader;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->getEnvelope(Landroid/os/Message;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 29
    .local v1, envelope:Lcom/google/glass/companion/Proto$Envelope;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    if-eqz v2, :cond_1

    .line 30
    iget-object v0, v1, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 31
    .local v0, companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;
    iget-object v2, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    #getter for: Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J
    invoke-static {v4}, Lcom/google/glass/logging/CompanionLogReader;->access$000(Lcom/google/glass/logging/CompanionLogReader;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    #setter for: Lcom/google/glass/logging/CompanionLogReader;->companionLog:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/google/glass/logging/CompanionLogReader;->access$202(Lcom/google/glass/logging/CompanionLogReader;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/google/glass/logging/CompanionLogReader;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "get the companion log"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .end local v0           #companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;
    :goto_0
    iget-object v2, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    #getter for: Lcom/google/glass/logging/CompanionLogReader;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Lcom/google/glass/logging/CompanionLogReader;->access$300(Lcom/google/glass/logging/CompanionLogReader;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 42
    return-void

    .line 35
    .restart local v0       #companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;
    :cond_0
    invoke-static {}, Lcom/google/glass/logging/CompanionLogReader;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got different replyable id: expect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    #getter for: Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J
    invoke-static {v4}, Lcom/google/glass/logging/CompanionLogReader;->access$000(Lcom/google/glass/logging/CompanionLogReader;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    .end local v0           #companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;
    :cond_1
    invoke-static {}, Lcom/google/glass/logging/CompanionLogReader;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to handle message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/CompanionLogReader$1;->this$0:Lcom/google/glass/logging/CompanionLogReader;

    #getter for: Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J
    invoke-static {v4}, Lcom/google/glass/logging/CompanionLogReader;->access$000(Lcom/google/glass/logging/CompanionLogReader;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
