.class Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;
.super Lcom/google/glass/voice/IVoiceServiceListener$Stub;
.source "VoiceInputHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalVoiceServiceListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/voice/IVoiceServiceListener$Stub;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/VoiceInputHelper;

.field private final timeCreated:J


# direct methods
.method constructor <init>(Lcom/google/glass/input/VoiceInputHelper;)V
    .locals 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    invoke-direct {p0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;-><init>()V

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    iget-wide v2, p1, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    iget-wide v2, p1, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->timeCreated:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 207
    check-cast p1, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->compareTo(Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;)I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->inputListener:Lcom/google/glass/input/VoiceListener;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$900(Lcom/google/glass/input/VoiceInputHelper;)Lcom/google/glass/input/VoiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/input/VoiceListener;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResampledAudioData([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 238
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)V
    .locals 2
    .parameter "amplitude"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #setter for: Lcom/google/glass/input/VoiceInputHelper;->voiceAmplitude:D
    invoke-static {v0, p1, p2}, Lcom/google/glass/input/VoiceInputHelper;->access$802(Lcom/google/glass/input/VoiceInputHelper;D)D

    .line 243
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 5
    .parameter "command"

    .prologue
    .line 221
    invoke-static {}, Lcom/google/glass/input/VoiceInputHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice service listener callback thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    new-instance v1, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;

    invoke-direct {v1, p1}, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;-><init>(Lcom/google/glass/voice/VoiceCommand;)V

    .line 223
    .local v1, event:Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;
    iget-object v2, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 225
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 227
    #getter for: Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->resultingConfig:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;->access$700(Lcom/google/glass/input/VoiceInputHelper$VoiceCommandEvent;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/VoiceConfig;

    monitor-exit v1

    .line 231
    :goto_0
    return-object v2

    .line 228
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 231
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 249
    return-void
.end method

.method public onVoiceServiceConnected()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    return-void
.end method

.method public onVoiceServiceDisconnected()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->this$0:Lcom/google/glass/input/VoiceInputHelper;

    #getter for: Lcom/google/glass/input/VoiceInputHelper;->voiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/glass/input/VoiceInputHelper;->access$600(Lcom/google/glass/input/VoiceInputHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/glass/input/VoiceInputHelper$LocalVoiceServiceListener;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
