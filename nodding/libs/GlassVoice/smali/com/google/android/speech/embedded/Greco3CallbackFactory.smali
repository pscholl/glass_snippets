.class public interface abstract Lcom/google/android/speech/embedded/Greco3CallbackFactory;
.super Ljava/lang/Object;
.source "Greco3CallbackFactory.java"


# virtual methods
.method public abstract create(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/audio/EndpointerListener;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/android/speech/embedded/Greco3Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/audio/EndpointerListener;",
            "Lcom/google/android/speech/embedded/Greco3Mode;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;",
            ")",
            "Lcom/google/android/speech/embedded/Greco3Callback;"
        }
    .end annotation
.end method
