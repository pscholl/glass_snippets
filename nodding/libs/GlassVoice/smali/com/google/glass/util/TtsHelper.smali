.class public Lcom/google/glass/util/TtsHelper;
.super Ljava/lang/Object;
.source "TtsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final audioFocusUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final audioManager:Landroid/media/AudioManager;

.field private currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

.field private lastTextSynthesized:Ljava/lang/String;

.field private onInitRunnable:Ljava/lang/Runnable;

.field private final textToSpeech:Landroid/speech/tts/TextToSpeech;

.field private textToSpeechInitialized:Z

.field private final ttsParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/glass/util/TtsHelper$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/TtsHelper$1;-><init>(Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->audioFocusUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 65
    new-instance v0, Lcom/google/glass/util/TtsHelper$2;

    invoke-direct {v0, p0}, Lcom/google/glass/util/TtsHelper$2;-><init>(Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 95
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->audioManager:Landroid/media/AudioManager;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->ttsParams:Ljava/util/HashMap;

    .line 100
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->ttsParams:Ljava/util/HashMap;

    const-string v1, "utteranceId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Initializing TextToSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/google/glass/util/TtsHelper$3;

    invoke-direct {v1, p0}, Lcom/google/glass/util/TtsHelper$3;-><init>(Lcom/google/glass/util/TtsHelper;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 119
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/glass/util/TtsHelper;->audioFocusUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/TtsHelper;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/util/TtsHelper;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/util/TtsHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/glass/util/TtsHelper;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->onInitRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/glass/util/TtsHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->onInitRunnable:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public clearLastTextSynthesized()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public getLastTextSynthesized()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    return-object v0
.end method

.method public isSpeaking()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method public speakText(Ljava/lang/String;)V
    .locals 1
    .parameter "textToSynthesize"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 125
    return-void
.end method

.method public speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 5
    .parameter "textToSynthesize"
    .parameter "listener"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 132
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper;->lastTextSynthesized:Ljava/lang/String;

    .line 133
    iget-boolean v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "TTS not yet initialized, queuing up text"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queued up text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/google/glass/util/TtsHelper$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/util/TtsHelper$4;-><init>(Lcom/google/glass/util/TtsHelper;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->onInitRunnable:Ljava/lang/Runnable;

    .line 151
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 145
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "TTS is ready, speaking text"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/google/glass/util/TtsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Speaking text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    iput-object p2, p0, Lcom/google/glass/util/TtsHelper;->currentTtsListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 149
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/glass/util/TtsHelper;->ttsParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0
.end method

.method public stopSpeaking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-boolean v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeechInitialized:Z

    if-nez v0, :cond_2

    .line 161
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "TTS not yet initialized, not calling stop"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/TtsHelper;->onInitRunnable:Ljava/lang/Runnable;

    .line 171
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->isTtsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/TtsHelper$5;

    invoke-direct {v1, p0}, Lcom/google/glass/util/TtsHelper$5;-><init>(Lcom/google/glass/util/TtsHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 179
    :cond_1
    return-void

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/util/TtsHelper;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/google/glass/util/TtsHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping speaking"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    goto :goto_0
.end method
