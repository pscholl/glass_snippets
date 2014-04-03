.class public Lcom/google/android/speech/embedded/Greco3RecognitionEngine;
.super Ljava/lang/Object;
.source "Greco3RecognitionEngine.java"

# interfaces
.implements Lcom/google/android/speech/engine/RecognitionEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/Greco3RecognitionEngine$NoMatchesFromEmbeddedRecognizerException;,
        Lcom/google/android/speech/embedded/Greco3RecognitionEngine$EmbeddedRecognizerUnavailableException;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VS.Greco3RecognitionEngine"


# instance fields
.field private final mBytesPerSample:I

.field private final mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

.field private mCurrentResources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

.field private final mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mGrecoEventLoggerFactory:Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mInput:Ljava/io/InputStream;

.field private final mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mSamplingRate:I

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/speech/embedded/Greco3EngineManager;IILcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/embedded/Greco3CallbackFactory;Lcom/google/android/speech/embedded/Greco3ModeSelector;Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;)V
    .locals 0
    .parameter "engineManager"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "samplingRate"
    .end parameter
    .parameter "bytesPerSample"
    .end parameter
    .parameter "speechSettings"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "callbackFactory"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "modeSelector"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter
    .parameter "grecoEventLoggerFactory"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    .line 67
    iput p2, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mSamplingRate:I

    .line 68
    iput p3, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mBytesPerSample:I

    .line 69
    iput-object p4, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 70
    iput-object p5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;

    .line 71
    iput-object p6, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

    .line 72
    iput-object p7, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGrecoEventLoggerFactory:Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;

    .line 73
    return-void
.end method

.method private cleanupAndDispatchStartError(Lcom/google/android/speech/embedded/Greco3Callback;Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 1
    .parameter "callback"
    .parameter "error"

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 152
    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentResources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 153
    invoke-interface {p1, p2}, Lcom/google/android/speech/embedded/Greco3Callback;->handleError(Lcom/google/android/speech/exception/RecognizeException;)V

    .line 154
    return-void
.end method

.method private getEmbeddedRecognizerParams(Lcom/google/android/speech/params/SessionParams;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 4
    .parameter "sessionParams"

    .prologue
    .line 139
    new-instance v0, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->isPartialResultsEnabled()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->isAlternatesEnabled()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;-><init>(Lcom/google/android/speech/SpeechSettings;ZZ)V

    .line 144
    .local v0, rspb:Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;
    invoke-virtual {v0}, Lcom/google/android/speech/network/request/RecognizerSessionParamsBuilderTask;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    invoke-virtual {v0, v1}, Lcom/google/android/speech/embedded/Greco3EngineManager;->release(Lcom/google/android/speech/embedded/Greco3Recognizer;)V

    .line 130
    iput-object v2, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mInput:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 134
    iput-object v2, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mInput:Ljava/io/InputStream;

    .line 135
    return-void
.end method

.method createRecognizer(Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;)Lcom/google/android/speech/embedded/Greco3Recognizer;
    .locals 2
    .parameter "resources"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 209
    iget v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mSamplingRate:I

    iget v1, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mBytesPerSample:I

    invoke-static {p1, v0, v1}, Lcom/google/android/speech/embedded/Greco3Recognizer;->create(Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;II)Lcom/google/android/speech/embedded/Greco3Recognizer;

    move-result-object v0

    return-object v0
.end method

.method createRecognizerFor(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3Mode;
    .locals 6
    .parameter "bcp47Locale"
    .parameter "requested"
    .parameter "grammarType"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    invoke-virtual {v5}, Lcom/google/android/speech/embedded/Greco3EngineManager;->maybeInitialize()V

    .line 161
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

    invoke-interface {v5, p2, p3}, Lcom/google/android/speech/embedded/Greco3ModeSelector;->getMode(Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v1

    .line 162
    .local v1, primary:Lcom/google/android/speech/embedded/Greco3Mode;
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mModeSelector:Lcom/google/android/speech/embedded/Greco3ModeSelector;

    invoke-interface {v5, p2, p3}, Lcom/google/android/speech/embedded/Greco3ModeSelector;->getFallbackMode(Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v0

    .line 163
    .local v0, fallback:Lcom/google/android/speech/embedded/Greco3Mode;
    const/4 v3, 0x0

    .line 166
    .local v3, selected:Lcom/google/android/speech/embedded/Greco3Mode;
    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-object v4

    .line 172
    :cond_1
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    invoke-virtual {v5, p1, v1, p3}, Lcom/google/android/speech/embedded/Greco3EngineManager;->getResources(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-result-object v2

    .line 176
    .local v2, resources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    if-nez v2, :cond_2

    .line 178
    if-eqz v0, :cond_0

    .line 185
    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    invoke-virtual {v5, p1, v0, v4}, Lcom/google/android/speech/embedded/Greco3EngineManager;->getResources(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_0

    .line 193
    move-object v3, v0

    .line 200
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->createRecognizer(Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;)Lcom/google/android/speech/embedded/Greco3Recognizer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 201
    iput-object v2, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentResources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-object v4, v3

    .line 203
    goto :goto_0

    .line 195
    :cond_2
    move-object v3, v1

    goto :goto_1
.end method

.method public startRecognition(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/audio/EndpointerListener;)V
    .locals 11
    .parameter "inputFactory"
    .parameter
    .parameter "sessionParams"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/audio/AudioInputStreamFactory;",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/android/speech/RecognitionResponse;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/params/SessionParams;",
            "Lcom/google/android/speech/audio/EndpointerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/android/speech/RecognitionResponse;Lcom/google/android/speech/exception/RecognizeException;>;"
    const/4 v0, 0x0

    .line 80
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 84
    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentResources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 86
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Recognizer;->maybeLoadSharedLibrary()V

    .line 88
    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->getGreco3Mode()Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v8

    .line 91
    .local v8, requestedMode:Lcom/google/android/speech/embedded/Greco3Mode;
    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->getSpokenBcp47Locale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->getGreco3Grammar()Lcom/google/android/speech/embedded/Greco3Grammar;

    move-result-object v1

    invoke-virtual {p0, v0, v8, v1}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->createRecognizerFor(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v9

    .line 95
    .local v9, selected:Lcom/google/android/speech/embedded/Greco3Mode;
    new-instance v10, Lcom/google/android/speech/RecognitionResponseWrapper;

    const/4 v0, 0x1

    invoke-direct {v10, p2, v0}, Lcom/google/android/speech/RecognitionResponseWrapper;-><init>(Lcom/google/android/speech/callback/Callback;I)V

    .line 97
    .local v10, wrapper:Lcom/google/android/speech/RecognitionResponseWrapper;
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCallbackFactory:Lcom/google/android/speech/embedded/Greco3CallbackFactory;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-virtual {p3, v1}, Lcom/google/android/speech/params/SessionParams;->getEndpointerParams(Lcom/google/android/speech/SpeechSettings;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v1

    invoke-interface {v0, v10, p4, v9, v1}, Lcom/google/android/speech/embedded/Greco3CallbackFactory;->create(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/audio/EndpointerListener;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/android/speech/embedded/Greco3Callback;

    move-result-object v3

    .line 99
    .local v3, g3Callback:Lcom/google/android/speech/embedded/Greco3Callback;
    if-nez v9, :cond_1

    .line 100
    new-instance v0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine$EmbeddedRecognizerUnavailableException;

    invoke-direct {v0}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine$EmbeddedRecognizerUnavailableException;-><init>()V

    invoke-direct {p0, v3, v0}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->cleanupAndDispatchStartError(Lcom/google/android/speech/embedded/Greco3Callback;Lcom/google/android/speech/exception/RecognizeException;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mInput:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGreco3EngineManager:Lcom/google/android/speech/embedded/Greco3EngineManager;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentRecognition:Lcom/google/android/speech/embedded/Greco3Recognizer;

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mInput:Ljava/io/InputStream;

    invoke-direct {p0, p3}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->getEmbeddedRecognizerParams(Lcom/google/android/speech/params/SessionParams;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mGrecoEventLoggerFactory:Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;

    invoke-interface {v5, v9}, Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;->getEventLoggerForMode(Lcom/google/android/speech/embedded/Greco3Mode;)Lcom/google/android/speech/embedded/GrecoEventLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->mCurrentResources:Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    iget-object v6, v6, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->languagePack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/speech/embedded/Greco3EngineManager;->startRecognition(Lcom/google/android/speech/embedded/Greco3Recognizer;Ljava/io/InputStream;Lcom/google/android/speech/embedded/Greco3Callback;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;Lcom/google/android/speech/embedded/GrecoEventLogger;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V

    .line 119
    invoke-virtual {v9}, Lcom/google/android/speech/embedded/Greco3Mode;->isEndpointerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Lcom/google/android/speech/embedded/Greco3Mode;->isEndpointerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/google/android/speech/embedded/Greco3RecognitionEngine$EmbeddedRecognizerUnavailableException;

    invoke-direct {v0}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine$EmbeddedRecognizerUnavailableException;-><init>()V

    invoke-interface {v3, v0}, Lcom/google/android/speech/embedded/Greco3Callback;->handleError(Lcom/google/android/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v7

    .line 108
    .local v7, ioe:Ljava/io/IOException;
    new-instance v0, Lcom/google/android/speech/exception/AudioRecognizeException;

    const-string v1, "Unable to create stream"

    invoke-direct {v0, v1, v7}, Lcom/google/android/speech/exception/AudioRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v3, v0}, Lcom/google/android/speech/embedded/Greco3RecognitionEngine;->cleanupAndDispatchStartError(Lcom/google/android/speech/embedded/Greco3Callback;Lcom/google/android/speech/exception/RecognizeException;)V

    goto :goto_0
.end method
