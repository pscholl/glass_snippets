.class public Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;
.super Ljava/lang/Object;
.source "CallbackFactory.java"

# interfaces
.implements Lcom/google/android/speech/embedded/Greco3Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/CallbackFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Greco3CallbackImpl"
.end annotation


# instance fields
.field private final callback:Lcom/google/android/speech/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;"
        }
    .end annotation
.end field

.field private final endpointerProcessor:Lcom/google/glass/voice/network/EndpointerEventProcessor;

.field private final recognitionEventProcessor:Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;

.field final synthetic this$0:Lcom/google/glass/voice/network/CallbackFactory;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/CallbackFactory;Lcom/google/android/speech/callback/Callback;Lcom/google/glass/voice/network/EndpointerEventProcessor;)V
    .locals 1
    .parameter
    .parameter
    .parameter "endpointerEventProcessor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/exception/RecognizeException;>;"
    iput-object p1, p0, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;->this$0:Lcom/google/glass/voice/network/CallbackFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p3, p0, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;->endpointerProcessor:Lcom/google/glass/voice/network/EndpointerEventProcessor;

    .line 77
    new-instance v0, Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;

    invoke-direct {v0, p2}, Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;-><init>(Lcom/google/android/speech/callback/Callback;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;->recognitionEventProcessor:Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;

    .line 78
    iput-object p2, p0, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;->callback:Lcom/google/android/speech/callback/Callback;

    .line 79
    return-void
.end method


# virtual methods
.method public handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 105
    return-void
.end method

.method public handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;->endpointerProcessor:Lcom/google/glass/voice/network/EndpointerEventProcessor;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->process(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V

    .line 90
    return-void
.end method

.method public handleError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;->callback:Lcom/google/android/speech/callback/Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/Callback;->onError(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public handleProgressUpdate(J)V
    .locals 1
    .parameter "endMs"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;->endpointerProcessor:Lcom/google/glass/voice/network/EndpointerEventProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->updateProgress(J)V

    .line 95
    return-void
.end method

.method public handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;->recognitionEventProcessor:Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;->process(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 84
    iget-object v0, p0, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;->endpointerProcessor:Lcom/google/glass/voice/network/EndpointerEventProcessor;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/EndpointerEventProcessor;->resetNoSpeechDetectedTimer()V

    .line 85
    return-void
.end method
