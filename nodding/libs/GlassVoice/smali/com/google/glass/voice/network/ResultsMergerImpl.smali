.class public Lcom/google/glass/voice/network/ResultsMergerImpl;
.super Ljava/lang/Object;
.source "ResultsMergerImpl.java"

# interfaces
.implements Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private invalid:Z

.field private final recognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

.field private final recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

.field private final threadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/voice/network/ResultsMergerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/ResultsMergerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V
    .locals 1
    .parameter "recognitionDispatcher"
    .parameter "recognitionEngineCallback"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->invalid:Z

    .line 32
    invoke-static {}, Lcom/google/android/searchcommon/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->threadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 37
    iput-object p1, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->recognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    .line 38
    iput-object p2, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 39
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->threadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->invalid:Z

    .line 45
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->invalid:Z

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->threadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 105
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onEndOfSpeech()V

    goto :goto_0
.end method

.method public onError(Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->threadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 68
    iget-boolean v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->invalid:Z

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->recognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    invoke-virtual {v0}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->cancel()V

    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/speech/exception/RecognizeException;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/ResultsMergerImpl;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    return-void
.end method

.method public onMusicDetected()V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->invalid:Z

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onMusicDetected()V

    goto :goto_0
.end method

.method public onNoSpeechDetected()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->threadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 114
    iget-boolean v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->invalid:Z

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onNoSpeechDetected()V

    goto :goto_0
.end method

.method public onResult(Lcom/google/android/speech/RecognitionResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->threadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 53
    iget-boolean v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->invalid:Z

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/speech/RecognitionResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/ResultsMergerImpl;->onResult(Lcom/google/android/speech/RecognitionResponse;)V

    return-void
.end method

.method public onStartOfSpeech(J)V
    .locals 1
    .parameter "usec"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->threadCheck:Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/searchcommon/util/ExtraPreconditions$ThreadCheck;

    .line 84
    iget-boolean v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->invalid:Z

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/network/ResultsMergerImpl;->recognitionEngineCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onStartOfSpeech(J)V

    goto :goto_0
.end method
