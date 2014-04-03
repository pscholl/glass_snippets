.class public interface abstract Lcom/google/android/speech/logger/SpeechLibLogger;
.super Ljava/lang/Object;
.source "SpeechLibLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/logger/SpeechLibLogger$LogData;
    }
.end annotation


# virtual methods
.method public abstract logAudioPathEstablished(Lcom/google/android/speech/logger/SpeechLibLogger$LogData;)V
.end method

.method public abstract logEndOfSpeech()V
.end method

.method public abstract logNoSpeechDetected()V
.end method

.method public abstract logS3ConnectionDone()V
.end method

.method public abstract logS3ConnectionError()V
.end method

.method public abstract logS3ConnectionOpen()V
.end method

.method public abstract logS3ConnectionOpenLatency()V
.end method

.method public abstract logS3MajelResultReceived()V
.end method

.method public abstract logS3RecognitionCompleted()V
.end method

.method public abstract logS3SendEndOfData()V
.end method

.method public abstract logS3SoundSearchResultReceived()V
.end method

.method public abstract logS3TtsReceived()V
.end method

.method public abstract recordSpeechEvent(I)V
.end method

.method public abstract recordSpeechEvent(ILjava/lang/Object;)V
.end method
