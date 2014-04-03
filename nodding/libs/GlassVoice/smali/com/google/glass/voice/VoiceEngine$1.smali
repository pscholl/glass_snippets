.class Lcom/google/glass/voice/VoiceEngine$1;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final data:[B

.field final synthetic this$0:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/16 v0, 0xa0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/glass/voice/VoiceEngine$1;->data:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 143
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$000(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Stopped reading from microphone"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v1, 0x0

    .line 149
    .local v1, read:I
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->microphoneInputStream:Lcom/google/glass/voice/MicrophoneInputStream;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$200(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/MicrophoneInputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$1;->data:[B

    const/4 v4, 0x0

    const/16 v5, 0xa0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/glass/voice/MicrophoneInputStream;->read([BII)I

    move-result v1

    .line 150
    if-lez v1, :cond_1

    .line 151
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$1;->data:[B

    const/4 v4, 0x0

    #calls: Lcom/google/glass/voice/VoiceEngine;->handleAudioData([BII)V
    invoke-static {v2, v3, v4, v1}, Lcom/google/glass/voice/VoiceEngine;->access$300(Lcom/google/glass/voice/VoiceEngine;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_1
    :goto_1
    if-gez v1, :cond_2

    .line 160
    iget-object v2, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->shouldReadFromMic:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceEngine;->access$000(Lcom/google/glass/voice/VoiceEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Stopping reading from microphone because read < 0"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "IOException shouldn\'t happen!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 164
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    sget-object v2, Lcom/google/glass/voice/VoiceEngine;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceEngine$1;->this$0:Lcom/google/glass/voice/VoiceEngine;

    iget-object v3, v3, Lcom/google/glass/voice/VoiceEngine;->readFromMicrophone:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
