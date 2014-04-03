.class public interface abstract Lcom/google/android/speech/listeners/RecognitionEventListener;
.super Ljava/lang/Object;
.source "RecognitionEventListener.java"


# virtual methods
.method public abstract onBeginningOfSpeech()V
.end method

.method public abstract onDone()V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onError(Lcom/google/android/speech/exception/RecognizeException;)V
.end method

.method public abstract onMediaDataResult([B)V
.end method

.method public abstract onMusicDetected()V
.end method

.method public abstract onNoSpeechDetected()V
.end method

.method public abstract onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
.end method

.method public abstract onReadyForSpeech(FF)V
.end method

.method public abstract onRecognitionCancelled()V
.end method

.method public abstract onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
.end method

.method public abstract onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
.end method
