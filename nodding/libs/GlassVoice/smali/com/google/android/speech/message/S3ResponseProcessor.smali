.class public Lcom/google/android/speech/message/S3ResponseProcessor;
.super Ljava/lang/Object;
.source "S3ResponseProcessor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "S3ResponseProcessor"


# instance fields
.field private final mAudioBytes:Ljava/io/ByteArrayOutputStream;

.field private final mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/logger/SpeechLibLogger;)V
    .locals 1
    .parameter "logger"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mAudioBytes:Ljava/io/ByteArrayOutputStream;

    .line 38
    iput-object p1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    .line 39
    return-void
.end method

.method private processDone(Lcom/google/android/speech/listeners/RecognitionEventListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 124
    invoke-interface {p1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onDone()V

    .line 125
    return-void
.end method

.method private processPinholeOutputEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 0
    .parameter "callback"
    .parameter "output"

    .prologue
    .line 86
    invoke-interface {p1, p2}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 87
    return-void
.end method

.method private processRecognizerEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;)V
    .locals 3
    .parameter "callback"
    .parameter "recognizerEvent"

    .prologue
    .line 116
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    .line 117
    .local v0, recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 118
    iget-object v1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v1}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3RecognitionCompleted()V

    .line 120
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 121
    return-void
.end method

.method private processSoundSearchEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;)V
    .locals 1
    .parameter "callback"
    .parameter "soundSearchServiceEvent"

    .prologue
    .line 108
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v0}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3SoundSearchResultReceived()V

    .line 110
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;->getResultsResponse()Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    .line 112
    :cond_0
    return-void
.end method

.method private processTtsServiceEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;)V
    .locals 4
    .parameter "callback"
    .parameter "ttsServiceEvent"

    .prologue
    .line 95
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->getEndOfData()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mAudioBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v1}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3TtsReceived()V

    .line 98
    iget-object v1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mAudioBytes:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onMediaDataResult([B)V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;->getAudio()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v0

    .line 101
    .local v0, data:[B
    iget-object v1, p0, Lcom/google/android/speech/message/S3ResponseProcessor;->mAudioBytes:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public process(Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/listeners/RecognitionEventListener;)V
    .locals 2
    .parameter "response"
    .parameter "callback"

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->hasTtsServiceEventExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getTtsServiceEventExtension()Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/speech/message/S3ResponseProcessor;->processTtsServiceEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;)V

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->hasRecognizerEventExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getRecognizerEventExtension()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/speech/message/S3ResponseProcessor;->processRecognizerEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;)V

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->hasSoundSearchServiceEventExtension()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getSoundSearchServiceEventExtension()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/speech/message/S3ResponseProcessor;->processSoundSearchEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;)V

    .line 61
    :cond_3
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->hasPinholeOutputExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getPinholeOutputExtension()Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/speech/message/S3ResponseProcessor;->processPinholeOutputEvent(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/speech/message/S3ResponseProcessor;->processDone(Lcom/google/android/speech/listeners/RecognitionEventListener;)V

    goto :goto_0

    .line 71
    :pswitch_2
    new-instance v0, Lcom/google/android/speech/exception/ServerRecognizeException;

    invoke-virtual {p1}, Lcom/google/speech/s3/S3$S3Response;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/speech/exception/ServerRecognizeException;-><init>(I)V

    invoke-interface {p2, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 76
    :pswitch_3
    const-string v0, "S3ResponseProcessor"

    const-string v1, "NOT_STARTED received"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/google/android/speech/exception/ServerRecognizeException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/speech/exception/ServerRecognizeException;-><init>(I)V

    invoke-interface {p2, v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
