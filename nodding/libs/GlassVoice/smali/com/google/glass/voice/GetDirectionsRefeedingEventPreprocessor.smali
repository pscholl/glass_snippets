.class Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;
.super Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
.source "GetDirectionsRefeedingEventPreprocessor.java"


# static fields
.field private static final POST_GET_DIRECTIONS_END_SPEECH_FUZZ_FACTOR_MS:J = 0x514L

.field private static final POST_GET_DIRECTIONS_START_SPEECH_WAIT_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private voiceEngine:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "voiceEngine"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    .line 18
    return-void
.end method

.method private isDirections(Lcom/google/glass/voice/HotwordResult;)Z
    .locals 2
    .parameter "result"

    .prologue
    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isWithinEndSpeechFuzzFactor(JLcom/google/glass/voice/HotwordResult;)Z
    .locals 6
    .parameter "timeMs"
    .parameter "result"

    .prologue
    const-wide/16 v4, 0x514

    .line 80
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Testing end of speech fuzz factor. End of speech event time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phrase duration was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/glass/voice/HotwordResult;->getPhraseDurationMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and fuzz factor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x514

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    invoke-virtual {p3}, Lcom/google/glass/voice/HotwordResult;->getPhraseDurationMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getEndOfSpeechTriggerPoint(J)Ljava/lang/Long;
    .locals 3
    .parameter "timeMs"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceEngine;->getLastHotwordResult()Lcom/google/glass/voice/HotwordResult;

    move-result-object v0

    .line 37
    .local v0, lastResult:Lcom/google/glass/voice/HotwordResult;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->isDirections(Lcom/google/glass/voice/HotwordResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->isWithinEndSpeechFuzzFactor(JLcom/google/glass/voice/HotwordResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    sget-object v1, Lcom/google/glass/voice/GetDirectionsRefeedingEventPreprocessor;->TAG:Ljava/lang/String;

    const-string v2, "Got end of speech for directions within fuzz factor, delaying end of speech"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
