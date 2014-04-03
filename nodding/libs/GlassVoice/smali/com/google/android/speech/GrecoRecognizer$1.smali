.class Lcom/google/android/speech/GrecoRecognizer$1;
.super Ljava/lang/Object;
.source "GrecoRecognizer.java"

# interfaces
.implements Lcom/google/android/speech/ResponseProcessor$AudioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/GrecoRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/GrecoRecognizer;


# direct methods
.method constructor <init>(Lcom/google/android/speech/GrecoRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/speech/GrecoRecognizer$1;->this$0:Lcom/google/android/speech/GrecoRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordingStarted(J)V
    .locals 1
    .parameter "usec"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer$1;->this$0:Lcom/google/android/speech/GrecoRecognizer;

    #getter for: Lcom/google/android/speech/GrecoRecognizer;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;
    invoke-static {v0}, Lcom/google/android/speech/GrecoRecognizer;->access$000(Lcom/google/android/speech/GrecoRecognizer;)Lcom/google/android/speech/audio/AudioRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer$1;->this$0:Lcom/google/android/speech/GrecoRecognizer;

    #getter for: Lcom/google/android/speech/GrecoRecognizer;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;
    invoke-static {v0}, Lcom/google/android/speech/GrecoRecognizer;->access$000(Lcom/google/android/speech/GrecoRecognizer;)Lcom/google/android/speech/audio/AudioRecorder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/speech/audio/AudioRecorder;->setRecordingStartTime(J)V

    .line 81
    :cond_0
    return-void
.end method

.method public shutdownAudio()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer$1;->this$0:Lcom/google/android/speech/GrecoRecognizer;

    #getter for: Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;
    invoke-static {v0}, Lcom/google/android/speech/GrecoRecognizer;->access$100(Lcom/google/android/speech/GrecoRecognizer;)Lcom/google/android/searchcommon/util/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->IDLE:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->notIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer$1;->this$0:Lcom/google/android/speech/GrecoRecognizer;

    #calls: Lcom/google/android/speech/GrecoRecognizer;->internalShutdownAudio()V
    invoke-static {v0}, Lcom/google/android/speech/GrecoRecognizer;->access$300(Lcom/google/android/speech/GrecoRecognizer;)V

    .line 97
    :cond_0
    return-void
.end method

.method public stopAudio()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer$1;->this$0:Lcom/google/android/speech/GrecoRecognizer;

    #getter for: Lcom/google/android/speech/GrecoRecognizer;->mListeningState:Lcom/google/android/searchcommon/util/StateMachine;
    invoke-static {v0}, Lcom/google/android/speech/GrecoRecognizer;->access$100(Lcom/google/android/speech/GrecoRecognizer;)Lcom/google/android/searchcommon/util/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/GrecoRecognizer$State;->LISTENING:Lcom/google/android/speech/GrecoRecognizer$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/speech/GrecoRecognizer$1;->this$0:Lcom/google/android/speech/GrecoRecognizer;

    #calls: Lcom/google/android/speech/GrecoRecognizer;->internalStopAudio()V
    invoke-static {v0}, Lcom/google/android/speech/GrecoRecognizer;->access$200(Lcom/google/android/speech/GrecoRecognizer;)V

    .line 89
    :cond_0
    return-void
.end method
