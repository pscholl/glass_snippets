.class public Lcom/google/android/speech/ResponseProcessor;
.super Ljava/lang/Object;
.source "ResponseProcessor.java"

# interfaces
.implements Lcom/google/android/speech/callback/RecognitionEngineCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/ResponseProcessor$AudioCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResponseProcessor"


# instance fields
.field private final mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

.field private final mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

.field private mInvalid:Z

.field private final mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

.field private final mS3ResponseProcessor:Lcom/google/android/speech/message/S3ResponseProcessor;

.field private final mSessionParams:Lcom/google/android/speech/params/SessionParams;

.field private final mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/ResponseProcessor$AudioCallback;Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/logger/SpeechLibLogger;)V
    .locals 1
    .parameter "audioCallback"
    .parameter "eventListener"
    .parameter "sessionParams"
    .parameter "logger"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    .line 52
    iput-object p1, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    .line 53
    iput-object p2, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    .line 54
    new-instance v0, Lcom/google/android/speech/message/S3ResponseProcessor;

    invoke-direct {v0, p4}, Lcom/google/android/speech/message/S3ResponseProcessor;-><init>(Lcom/google/android/speech/logger/SpeechLibLogger;)V

    iput-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mS3ResponseProcessor:Lcom/google/android/speech/message/S3ResponseProcessor;

    .line 55
    iput-object p3, p0, Lcom/google/android/speech/ResponseProcessor;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    .line 56
    iput-object p4, p0, Lcom/google/android/speech/ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    .line 57
    return-void
.end method

.method private handleS3Response(Lcom/google/speech/s3/S3$S3Response;)V
    .locals 3
    .parameter "s3Response"

    .prologue
    const/4 v2, 0x1

    .line 165
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 166
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v0}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3ConnectionDone()V

    .line 167
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->shutdownAudio()V

    .line 179
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mS3ResponseProcessor:Lcom/google/android/speech/message/S3ResponseProcessor;

    iget-object v1, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/speech/message/S3ResponseProcessor;->process(Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/listeners/RecognitionEventListener;)V

    .line 180
    return-void

    .line 168
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v0}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3ConnectionError()V

    .line 170
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->shutdownAudio()V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->hasRecognizerEventExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getRecognizerEventExtension()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->stopAudio()V

    goto :goto_0
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    .line 62
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 92
    iget-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mSessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-virtual {v0}, Lcom/google/android/speech/params/SessionParams;->getMode()Lcom/google/android/speech/params/SessionParams$Mode;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/params/SessionParams$Mode;->DICTATION:Lcom/google/android/speech/params/SessionParams$Mode;

    if-eq v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->stopAudio()V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v0}, Lcom/google/android/speech/logger/SpeechLibLogger;->logEndOfSpeech()V

    .line 105
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onEndOfSpeech()V

    goto :goto_0
.end method

.method public onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 137
    iget-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    instance-of v0, p1, Lcom/google/android/speech/exception/NetworkRecognizeException;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v0}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3ConnectionError()V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->shutdownAudio()V

    .line 147
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/speech/exception/RecognizeException;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/speech/ResponseProcessor;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    return-void
.end method

.method public onMusicDetected()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 125
    iget-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onMusicDetected()V

    goto :goto_0
.end method

.method public onNoSpeechDetected()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 112
    iget-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v0}, Lcom/google/android/speech/logger/SpeechLibLogger;->logNoSpeechDetected()V

    .line 118
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onNoSpeechDetected()V

    goto :goto_0
.end method

.method public onRecognitionCancelled()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 67
    iget-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onRecognitionCancelled()V

    goto :goto_0
.end method

.method public onResult(Lcom/google/android/speech/RecognitionResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 154
    iget-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/speech/RecognitionResponse;->getS3Response()Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/speech/ResponseProcessor;->handleS3Response(Lcom/google/speech/s3/S3$S3Response;)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/speech/RecognitionResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/speech/ResponseProcessor;->onResult(Lcom/google/android/speech/RecognitionResponse;)V

    return-void
.end method

.method public onStartOfSpeech(J)V
    .locals 1
    .parameter "usec"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mThreadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 79
    iget-boolean v0, p0, Lcom/google/android/speech/ResponseProcessor;->mInvalid:Z

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mAudioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->recordingStarted(J)V

    .line 85
    iget-object v0, p0, Lcom/google/android/speech/ResponseProcessor;->mEventListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onBeginningOfSpeech()V

    goto :goto_0
.end method
