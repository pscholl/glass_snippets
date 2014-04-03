.class public Lcom/google/android/speech/test/TestPlatformLog;
.super Ljava/lang/Object;
.source "TestPlatformLog.java"


# static fields
.field private static final EVENT_ERROR_PREFIX:Ljava/lang/String; = "ERROR: "

.field private static final EVENT_LOGGING_AUDIO_PREFIX:Ljava/lang/String; = "LOGGING_AUDIO: "

.field private static final EVENT_PREFIX:Ljava/lang/String; = "TEST_PLATFORM: "

.field private static final EVENT_RESULTS_PREFIX:Ljava/lang/String; = "RESULTS: "

.field public static final EVENT_SPEAK_NOW:Ljava/lang/String; = "SPEAK_NOW"

.field public static final EVENT_VOICE_SEARCH_COMPLETE:Ljava/lang/String; = "VOICE_SEARCH_COMPLETE"

.field public static final EVENT_WORKING:Ljava/lang/String; = "WORKING"

.field private static final RESULT_ITEM_FORMAT:Ljava/lang/String; = "result:\"%s\","

.field private static final TAG:Ljava/lang/String; = "TestPlatformLog"

.field private static sEnableTestPlatformLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/speech/test/TestPlatformLog;->sEnableTestPlatformLogging:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 63
    sget-boolean v0, Lcom/google/android/speech/test/TestPlatformLog;->sEnableTestPlatformLogging:Z

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "TestPlatformLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TEST_PLATFORM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-void
.end method

.method public static logAudioPath(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOGGING_AUDIO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/speech/test/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/speech/test/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static logResults(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 94
    sget-boolean v4, Lcom/google/android/speech/test/TestPlatformLog;->sEnableTestPlatformLogging:Z

    if-eqz v4, :cond_1

    .line 95
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, "RESULTS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v2

    .line 100
    .local v2, result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 101
    invoke-virtual {v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 102
    .local v0, hypothesis:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "result:\"%s\","

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 105
    .end local v0           #hypothesis:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/speech/test/TestPlatformLog;->log(Ljava/lang/String;)V

    .line 109
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :cond_1
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 54
    sput-boolean p0, Lcom/google/android/speech/test/TestPlatformLog;->sEnableTestPlatformLogging:Z

    .line 55
    return-void
.end method
