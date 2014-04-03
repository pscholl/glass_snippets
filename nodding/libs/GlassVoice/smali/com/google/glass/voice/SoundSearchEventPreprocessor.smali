.class Lcom/google/glass/voice/SoundSearchEventPreprocessor;
.super Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
.source "SoundSearchEventPreprocessor.java"


# instance fields
.field private final voiceEngine:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "voiceEngine"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/glass/voice/SoundSearchEventPreprocessor;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    .line 15
    return-void
.end method


# virtual methods
.method public process(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/SoundSearchEventPreprocessor;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->getConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    if-ne v0, v1, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateProgress(J)Z
    .locals 2
    .parameter "timeMs"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/voice/SoundSearchEventPreprocessor;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->getConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    if-ne v0, v1, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
