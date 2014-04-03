.class Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;
.super Ljava/lang/Object;
.source "Greco3Recognizer.java"

# interfaces
.implements Lcom/google/speech/recognizer/RecognizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/embedded/Greco3Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecognizerCallbackWrapper"
.end annotation


# instance fields
.field private mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/speech/embedded/Greco3Recognizer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;Lcom/google/android/speech/embedded/Greco3Callback;)Lcom/google/android/speech/embedded/Greco3Callback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    return-object p1
.end method


# virtual methods
.method public handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/embedded/Greco3Callback;->handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V

    .line 161
    :cond_0
    return-void
.end method

.method public handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/embedded/Greco3Callback;->handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V

    .line 154
    :cond_0
    return-void
.end method

.method public handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/embedded/Greco3Callback;->handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 147
    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    .line 140
    return-void
.end method

.method public notifyError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/embedded/Greco3Callback;->handleError(Lcom/google/android/speech/exception/RecognizeException;)V

    .line 173
    :cond_0
    return-void
.end method

.method public updateProgress(J)V
    .locals 1
    .parameter "progressMs"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3Recognizer$RecognizerCallbackWrapper;->mDelegate:Lcom/google/android/speech/embedded/Greco3Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/speech/embedded/Greco3Callback;->handleProgressUpdate(J)V

    .line 167
    :cond_0
    return-void
.end method
