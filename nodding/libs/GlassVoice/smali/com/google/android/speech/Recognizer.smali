.class public interface abstract Lcom/google/android/speech/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation runtime Lcom/google/android/searchcommon/util/SingleThreadedOnly;
    nameOfThread = "main"
.end annotation


# static fields
.field public static final LOCALE_EN_US_BCP47:Ljava/lang/String; = "en-US"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract startListening(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/SettableFuture;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/params/SessionParams;",
            "Lcom/google/android/speech/listeners/RecognitionEventListener;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<[B>;)V"
        }
    .end annotation
.end method

.method public abstract startRecordedAudioRecognition(Lcom/google/android/speech/params/SessionParams;[BLcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract stopListening()V
.end method
