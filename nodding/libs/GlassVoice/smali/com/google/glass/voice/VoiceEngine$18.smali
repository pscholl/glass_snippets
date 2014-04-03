.class Lcom/google/glass/voice/VoiceEngine$18;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$18;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 951
    :goto_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$18;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->missedCommands:Ljava/util/Queue;
    invoke-static {v1}, Lcom/google/glass/voice/VoiceEngine;->access$2300(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .local v0, missedCommand:Lcom/google/glass/voice/VoiceCommand;
    if-eqz v0, :cond_0

    .line 953
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Publishing queued voice command"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 954
    const/4 v1, 0x4

    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Publishing queued voice command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/google/glass/voice/VoiceEngine$18;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/VoiceEngine;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0

    .line 959
    :cond_0
    return-void
.end method
