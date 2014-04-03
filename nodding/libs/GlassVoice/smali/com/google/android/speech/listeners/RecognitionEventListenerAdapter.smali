.class public Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;
.super Ljava/lang/Object;
.source "RecognitionEventListenerAdapter.java"

# interfaces
.implements Lcom/google/android/speech/listeners/RecognitionEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onDone()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 16
    return-void
.end method

.method public onMediaDataResult([B)V
    .locals 0
    .parameter "result"

    .prologue
    .line 17
    return-void
.end method

.method public onMusicDetected()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onNoSpeechDetected()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 18
    return-void
.end method

.method public onReadyForSpeech(FF)V
    .locals 0
    .parameter "noiseLevel"
    .parameter "snr"

    .prologue
    .line 27
    return-void
.end method

.method public onRecognitionCancelled()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 0
    .parameter "recognitionEvent"

    .prologue
    .line 21
    return-void
.end method

.method public onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 0
    .parameter "results"

    .prologue
    .line 19
    return-void
.end method
