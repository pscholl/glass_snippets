.class Lcom/google/android/speech/embedded/Greco3EngineManager$1;
.super Ljava/lang/Object;
.source "Greco3EngineManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/embedded/Greco3EngineManager;->startRecognition(Lcom/google/android/speech/embedded/Greco3Recognizer;Ljava/io/InputStream;Lcom/google/android/speech/embedded/Greco3Callback;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;Lcom/google/android/speech/embedded/GrecoEventLogger;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/speech/embedded/Greco3Recognizer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/embedded/Greco3EngineManager;

.field final synthetic val$eventLogger:Lcom/google/android/speech/embedded/GrecoEventLogger;

.field final synthetic val$languagePack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

.field final synthetic val$recParams:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

.field final synthetic val$recognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;


# direct methods
.method constructor <init>(Lcom/google/android/speech/embedded/Greco3EngineManager;Lcom/google/android/speech/embedded/GrecoEventLogger;Lcom/google/android/speech/embedded/Greco3Recognizer;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->this$0:Lcom/google/android/speech/embedded/Greco3EngineManager;

    iput-object p2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$eventLogger:Lcom/google/android/speech/embedded/GrecoEventLogger;

    iput-object p3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$recognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    iput-object p4, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$recParams:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    iput-object p5, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$languagePack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/android/speech/embedded/Greco3Recognizer;
    .locals 6

    .prologue
    .line 140
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$eventLogger:Lcom/google/android/speech/embedded/GrecoEventLogger;

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$eventLogger:Lcom/google/android/speech/embedded/GrecoEventLogger;

    invoke-interface {v3}, Lcom/google/android/speech/embedded/GrecoEventLogger;->recognitionStarted()V

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$recognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$recParams:Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-virtual {v3, v4}, Lcom/google/android/speech/embedded/Greco3Recognizer;->run(Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    move-result-object v1

    .line 144
    .local v1, result:Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->getStatus()I

    move-result v2

    .line 145
    .local v2, sc:I
    if-eqz v2, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 152
    const-string v3, "VS.G3EngineManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error running recognition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$eventLogger:Lcom/google/android/speech/embedded/GrecoEventLogger;

    if-eqz v3, :cond_2

    .line 155
    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->getRecognizerInfo()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    move-result-object v0

    .line 156
    .local v0, recognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$languagePack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    #calls: Lcom/google/android/speech/embedded/Greco3EngineManager;->buildLanguagePackLog(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    invoke-static {v3}, Lcom/google/android/speech/embedded/Greco3EngineManager;->access$000(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setLangPack(Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 157
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$languagePack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setRecognizerLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 158
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$eventLogger:Lcom/google/android/speech/embedded/GrecoEventLogger;

    invoke-interface {v3, v0}, Lcom/google/android/speech/embedded/GrecoEventLogger;->recognitionCompleted(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;)V

    .line 160
    .end local v0           #recognizerLog:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    :cond_2
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->val$recognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    return-object v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3EngineManager$1;->call()Lcom/google/android/speech/embedded/Greco3Recognizer;

    move-result-object v0

    return-object v0
.end method
