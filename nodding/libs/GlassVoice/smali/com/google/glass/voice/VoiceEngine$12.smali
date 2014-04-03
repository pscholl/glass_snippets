.class Lcom/google/glass/voice/VoiceEngine$12;
.super Ljava/lang/Object;
.source "VoiceEngine.java"

# interfaces
.implements Lcom/google/glass/voice/MicrophoneInputStream$MicrophoneInputStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceEngine;->createMockMicrophoneInputStream()Lcom/google/glass/voice/MockMicrophoneInputStream;
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
    .line 602
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$12;->this$0:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmplitudeChanged(D)V
    .locals 2
    .parameter "amplitude"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$12;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->currentConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$1900(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$12;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$900(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$12;->this$0:Lcom/google/glass/voice/VoiceEngine;

    #getter for: Lcom/google/glass/voice/VoiceEngine;->listener:Lcom/google/glass/voice/VoiceServiceListener;
    invoke-static {v0}, Lcom/google/glass/voice/VoiceEngine;->access$900(Lcom/google/glass/voice/VoiceEngine;)Lcom/google/glass/voice/VoiceServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/VoiceServiceListener;->onVoiceAmplitudeChanged(D)V

    .line 609
    :cond_0
    return-void
.end method
