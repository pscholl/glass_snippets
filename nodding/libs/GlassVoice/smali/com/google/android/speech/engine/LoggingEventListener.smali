.class public final Lcom/google/android/speech/engine/LoggingEventListener;
.super Ljava/lang/Object;
.source "LoggingEventListener.java"

# interfaces
.implements Lcom/google/android/speech/network/NetworkEventListener;


# static fields
.field private static mInstance:Lcom/google/android/speech/engine/LoggingEventListener;


# instance fields
.field private final mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/speech/engine/LoggingEventListener;->mInstance:Lcom/google/android/speech/engine/LoggingEventListener;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/speech/logger/SpeechLibLogger;)V
    .locals 1
    .parameter "speechLibLogger"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/logger/SpeechLibLogger;

    iput-object v0, p0, Lcom/google/android/speech/engine/LoggingEventListener;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    .line 24
    return-void
.end method

.method public static getInstance(Lcom/google/android/speech/logger/SpeechLibLogger;)Lcom/google/android/speech/engine/LoggingEventListener;
    .locals 1
    .parameter "speechLibLogger"

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/speech/engine/LoggingEventListener;->mInstance:Lcom/google/android/speech/engine/LoggingEventListener;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/google/android/speech/engine/LoggingEventListener;

    invoke-direct {v0, p0}, Lcom/google/android/speech/engine/LoggingEventListener;-><init>(Lcom/google/android/speech/logger/SpeechLibLogger;)V

    sput-object v0, Lcom/google/android/speech/engine/LoggingEventListener;->mInstance:Lcom/google/android/speech/engine/LoggingEventListener;

    .line 15
    :cond_0
    sget-object v0, Lcom/google/android/speech/engine/LoggingEventListener;->mInstance:Lcom/google/android/speech/engine/LoggingEventListener;

    return-object v0
.end method


# virtual methods
.method public onConnectionFinished()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/speech/engine/LoggingEventListener;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v0}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3ConnectionOpenLatency()V

    .line 34
    return-void
.end method

.method public onConnectionStarted()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/speech/engine/LoggingEventListener;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v0}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3ConnectionOpen()V

    .line 29
    return-void
.end method

.method public onDataComplete()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/speech/engine/LoggingEventListener;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    invoke-interface {v0}, Lcom/google/android/speech/logger/SpeechLibLogger;->logS3SendEndOfData()V

    .line 44
    return-void
.end method

.method public onDataReceived()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onDataSent()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/speech/engine/LoggingEventListener;->mSpeechLibLogger:Lcom/google/android/speech/logger/SpeechLibLogger;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/android/speech/logger/SpeechLibLogger;->recordSpeechEvent(I)V

    .line 39
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
