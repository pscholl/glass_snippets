.class public interface abstract Lcom/google/glass/voice/network/VoiceInputCallback;
.super Ljava/lang/Object;
.source "VoiceInputCallback.java"


# virtual methods
.method public abstract onActionResponse([B)V
.end method

.method public abstract onError(Lcom/google/glass/voice/network/SpeechException;)V
.end method

.method public abstract onHtmlAnswerCardResult(Ljava/lang/String;)V
.end method

.method public abstract onRecognitionResult(Ljava/lang/CharSequence;F)V
.end method

.method public abstract onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
.end method

.method public abstract setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
.end method

.method public abstract showDone()V
.end method

.method public abstract showListening()V
.end method

.method public abstract showMusicDetected()V
.end method

.method public abstract showNoSpeechDetected()V
.end method

.method public abstract showRecognizing()V
.end method

.method public abstract showRecording()V
.end method

.method public abstract updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method
