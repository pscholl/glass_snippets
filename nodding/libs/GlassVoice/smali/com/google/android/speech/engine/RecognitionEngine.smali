.class public interface abstract Lcom/google/android/speech/engine/RecognitionEngine;
.super Ljava/lang/Object;
.source "RecognitionEngine.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract startRecognition(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/audio/EndpointerListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/audio/AudioInputStreamFactory;",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/android/speech/RecognitionResponse;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/params/SessionParams;",
            "Lcom/google/android/speech/audio/EndpointerListener;",
            ")V"
        }
    .end annotation
.end method
