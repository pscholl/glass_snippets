.class public Lcom/google/glass/voice/network/SpeechLibFactoryImpl$SpeechLibLoggerImpl;
.super Ljava/lang/Object;
.source "SpeechLibFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/logger/SpeechLibLogger;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/SpeechLibFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeechLibLoggerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logAudioPathEstablished(Lcom/google/android/speech/logger/SpeechLibLogger$LogData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 202
    return-void
.end method

.method public logEndOfSpeech()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public logNoSpeechDetected()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public logS3ConnectionDone()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public logS3ConnectionError()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public logS3ConnectionOpen()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public logS3ConnectionOpenLatency()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public logS3MajelResultReceived()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public logS3RecognitionCompleted()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public logS3SendEndOfData()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public logS3SoundSearchResultReceived()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public logS3TtsReceived()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public recordSpeechEvent(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 250
    return-void
.end method

.method public recordSpeechEvent(ILjava/lang/Object;)V
    .locals 0
    .parameter "event"
    .parameter "data"

    .prologue
    .line 254
    return-void
.end method
