.class public Lcom/google/glass/voice/network/EndpointerEventProcessor;
.super Ljava/lang/Object;
.source "EndpointerEventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;,
        Lcom/google/glass/voice/network/EndpointerEventProcessor$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTRA_TIME_ALLOWED_FOR_NO_SPEECH_DETECTED_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentProgressMs:J

.field private endOfSpeechTriggerMs:J

.field private final endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

.field private endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field private final eventPreprocessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;"
        }
    .end annotation
.end field

.field private extraTimeForNoSpeechDetectedMs:J

.field private final stateMachine:Lcom/google/android/searchcommon/util/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/searchcommon/util/StateMachine",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$State;",
            ">;"
        }
    .end annotation
.end field

.field private treatNoSpeechDetectedAsEndOfSpeech:Z

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/glass/voice/network/EndpointerEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/speech/audio/EndpointerListener;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;Ljava/util/List;Landroid/content/Context;)V
    .locals 3
    .parameter "epListener"
    .parameter "endpointerParams"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/audio/EndpointerListener;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p3, eventPreprocessors:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-static {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->newBuilder(Ljava/lang/String;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->build()Lcom/google/android/searchcommon/util/StateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    .line 114
    iput-object p3, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    .line 115
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/audio/EndpointerListener;

    iput-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    .line 116
    iput-object p2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 117
    invoke-static {p4}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 118
    return-void
.end method

.method private abortProcessing(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 170
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;

    .line 171
    .local v0, eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    invoke-virtual {v0, p1}, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;->process(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v2, 0x1

    .line 175
    .end local v0           #eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private abortProgressUpdate(J)Z
    .locals 3
    .parameter "endMs"

    .prologue
    .line 212
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;

    .line 213
    .local v0, eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;->updateProgress(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const/4 v2, 0x1

    .line 217
    .end local v0           #eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPreprocessorEndOfSpeechDelay(J)Ljava/lang/Long;
    .locals 4
    .parameter "timeMs"

    .prologue
    .line 255
    iget-object v3, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;

    .line 256
    .local v0, eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;->getEndOfSpeechTriggerPoint(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, preprocessorDelay:Ljava/lang/Long;
    if-eqz v2, :cond_0

    .line 260
    .end local v0           #eventPreprocessor:Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;
    .end local v2           #preprocessorDelay:Ljava/lang/Long;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized processEndOfAudioAsEndOfSpeech()Z
    .locals 2

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    const/4 v0, 0x1

    .line 268
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processEndOfAudioAsNoSpeechDetected()Z
    .locals 2

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const/4 v0, 0x1

    .line 277
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processEndOfSpeech(J)Z
    .locals 6
    .parameter "timeMs"

    .prologue
    const/4 v1, 0x0

    .line 233
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->getPreprocessorEndOfSpeechDelay(J)Ljava/lang/Long;

    move-result-object v0

    .line 234
    .local v0, preprocessorDelay:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 235
    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preprocessor requests delay of end of speech by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v3, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v2, v3}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 238
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->setEndOfSpeechTriggerPoint(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :goto_0
    monitor-exit p0

    return v1

    .line 241
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getExtraSilenceAfterEndOfSpeechMsec()I

    move-result v2

    if-lez v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v3, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v2, v3}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 243
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    iget-object v4, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v4}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getExtraSilenceAfterEndOfSpeechMsec()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->setEndOfSpeechTriggerPoint(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    .end local v0           #preprocessorDelay:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 248
    .restart local v0       #preprocessorDelay:Ljava/lang/Long;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized processStartOfSpeech()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    const/4 v0, 0x1

    .line 228
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 224
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setEndOfSpeechTriggerPoint(J)V
    .locals 1
    .parameter "timeMs"

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endOfSpeechTriggerMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shouldTriggerEndOfSpeech()Z
    .locals 4

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->currentProgressMs:J

    iget-wide v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endOfSpeechTriggerMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    const/4 v0, 0x1

    .line 294
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shouldTriggerNoSpeechDetected()Z
    .locals 4

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->currentProgressMs:J

    iget-wide v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->extraTimeForNoSpeechDetectedMs:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getNoSpeechDetectedTimeoutMsec()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    const/4 v0, 0x1

    .line 318
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method process(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->abortProcessing(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasEventType()Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    :cond_2
    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    const-string v2, "Received EP event without type."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->stateMachine:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/EndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/EndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getEventType()I

    move-result v0

    .line 138
    .local v0, type:I
    if-nez v0, :cond_4

    .line 139
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processStartOfSpeech()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/speech/audio/EndpointerListener;->onStartOfSpeech(J)V

    goto :goto_0

    .line 145
    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 146
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processEndOfSpeech(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onEndOfSpeech()V

    goto :goto_0

    .line 152
    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processEndOfAudioAsEndOfSpeech()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 157
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onEndOfSpeech()V

    .line 160
    :cond_6
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->processEndOfAudioAsNoSpeechDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onNoSpeechDetected()V

    goto :goto_0
.end method

.method public resetNoSpeechDetectedTimer()V
    .locals 4

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->treatNoSpeechDetectedAsEndOfSpeech:Z

    .line 308
    iget-wide v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->extraTimeForNoSpeechDetectedMs:J

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->extraTimeForNoSpeechDetectedMs:J

    .line 309
    return-void
.end method

.method declared-synchronized updateProgress(J)V
    .locals 4
    .parameter "endMs"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->currentProgressMs:J

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->abortProgressUpdate(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->shouldTriggerEndOfSpeech()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onEndOfSpeech()V

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->shouldTriggerNoSpeechDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-boolean v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->treatNoSpeechDetectedAsEndOfSpeech:Z

    if-eqz v1, :cond_3

    .line 197
    sget-object v1, Lcom/google/glass/voice/network/EndpointerEventProcessor;->TAG:Ljava/lang/String;

    const-string v2, "Treating NoSpeechDetected as EndOfSpeech"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onEndOfSpeech()V

    .line 201
    const-string v1, "delta"

    iget-wide v2, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->currentProgressMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, eventTuple:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED_TREATED_AS_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    .end local v0           #eventTuple:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 206
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/google/glass/voice/network/EndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/audio/EndpointerListener;

    invoke-interface {v1}, Lcom/google/android/speech/audio/EndpointerListener;->onNoSpeechDetected()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
