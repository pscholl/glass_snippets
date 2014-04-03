.class public interface abstract Lcom/google/speech/recognizer/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# virtual methods
.method public abstract addCallback(Lcom/google/speech/recognizer/RecognizerCallback;)I
.end method

.method public abstract cancel()I
.end method

.method public abstract run(Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
.end method

.method public abstract setAudioReader(Ljava/io/InputStream;)I
.end method
