.class public interface abstract Lcom/google/android/speech/SpeechLibFactory;
.super Ljava/lang/Object;
.source "SpeechLibFactory.java"


# virtual methods
.method public abstract buildEngineSelector(Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/EngineSelector;
.end method

.method public abstract buildRecognitionEngineStore(Lcom/google/android/speech/params/RecognitionEngineParams;)Lcom/google/android/speech/RecognitionEngineStore;
.end method

.method public abstract buildResultsMerger(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/EngineSelector;Lcom/google/android/speech/callback/RecognitionEngineCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;
.end method

.method public abstract buildSpeechLibLogger()Lcom/google/android/speech/logger/SpeechLibLogger;
.end method
