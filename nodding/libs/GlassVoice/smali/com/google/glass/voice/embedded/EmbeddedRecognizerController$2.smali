.class Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$2;
.super Ljava/lang/Object;
.source "EmbeddedRecognizerController.java"

# interfaces
.implements Lcom/google/speech/recognizer/RecognizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->createRecognizerCallback()Lcom/google/speech/recognizer/RecognizerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 281
    return-void
.end method

.method public handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 285
    invoke-static {}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Endpointer Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    return-void
.end method

.method public handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasPartialResult()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getHotwordFired()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPartCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPart(I)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPart(I)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, hotword:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v2

    #setter for: Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->lastVoiceCommand:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    invoke-static {v1, v2}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->access$202(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    .line 303
    iget-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$2;->this$0:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

    #getter for: Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->currentDecoder:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;
    invoke-static {v2}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->access$300(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;)Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    move-result-object v2

    #calls: Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->setDecoder(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z
    invoke-static {v1, v2}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->access$400(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z

    .line 305
    .end local v0           #hotword:Ljava/lang/String;
    :cond_0
    return-void
.end method
