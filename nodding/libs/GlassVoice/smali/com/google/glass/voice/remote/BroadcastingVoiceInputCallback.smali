.class public Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
.super Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
.source "BroadcastingVoiceInputCallback.java"

# interfaces
.implements Lcom/google/glass/voice/network/VoiceInputCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$RemoteVoiceInputCallbackOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster",
        "<",
        "Lcom/google/glass/voice/network/IVoiceInputCallback;",
        ">;",
        "Lcom/google/glass/voice/network/VoiceInputCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private speechLevelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

.field private final voiceEngine:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->TAG:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 0
    .parameter "voiceEngine"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    .line 41
    return-void
.end method

.method private getCallbackTag(Lcom/google/glass/voice/network/IVoiceInputCallback;)Ljava/lang/String;
    .locals 4
    .parameter "callback"

    .prologue
    .line 45
    :try_start_0
    invoke-interface {p1}, Lcom/google/glass/voice/network/IVoiceInputCallback;->getTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to get callback tag"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const-string v1, "(tag unavailable)"

    goto :goto_0
.end method

.method private declared-synchronized maybeAttachCallbackToEngine()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 222
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->beginBroadcast()I

    move-result v0

    .line 223
    .local v0, callbackConut:I
    if-ne v0, v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1, p0}, Lcom/google/glass/voice/VoiceEngine;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)V

    .line 236
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->finishBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 233
    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Already have %d remote voice input callback(s) attached; not attaching to VoiceEngine."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    .end local v0           #callbackConut:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized maybeDetachCallbackFromEngine()V
    .locals 6

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->beginBroadcast()I

    move-result v0

    .line 241
    .local v0, callbackCount:I
    if-nez v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceEngine;->detachVoiceInputCallback()V

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->finishBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 245
    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Detaching remote voice input callback but still have another %d callback(s) attached; not detaching from VoiceEngine."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    .end local v0           #callbackCount:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onActionResponse([B)V
    .locals 1
    .parameter "response"

    .prologue
    .line 155
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$11;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$11;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;[B)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 161
    return-void
.end method

.method public onError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 165
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$12;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/glass/voice/network/SpeechException;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 171
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 1
    .parameter "resultDoc"

    .prologue
    .line 135
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$9;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$9;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 141
    return-void
.end method

.method public onRecognitionResult(Ljava/lang/CharSequence;F)V
    .locals 1
    .parameter "text"
    .parameter "confidence"

    .prologue
    .line 125
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$8;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Ljava/lang/CharSequence;F)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 131
    return-void
.end method

.method public bridge synthetic onRegister(Landroid/os/IInterface;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/glass/voice/network/IVoiceInputCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->onRegister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    return-void
.end method

.method public declared-synchronized onRegister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Registered %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->getCallbackTag(Lcom/google/glass/voice/network/IVoiceInputCallback;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->speechLevelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->speechLevelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->maybeAttachCallbackToEngine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSoundSearchResult(Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 145
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$10;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$10;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 151
    return-void
.end method

.method public bridge synthetic onUnregister(Landroid/os/IInterface;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/glass/voice/network/IVoiceInputCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->onUnregister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    return-void
.end method

.method public declared-synchronized onUnregister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 6
    .parameter "callback"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unregistered %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->getCallbackTag(Lcom/google/glass/voice/network/IVoiceInputCallback;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->beginBroadcast()I

    move-result v0

    .line 212
    .local v0, callbackCount:I
    if-nez v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceEngine;->endpointNetworkRecognizer()V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->finishBroadcast()V

    .line 218
    invoke-direct {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->maybeDetachCallbackFromEngine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 207
    .end local v0           #callbackCount:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->speechLevelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    .line 179
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$13;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$13;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/glass/voice/network/SpeechLevelSource;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 190
    return-void
.end method

.method public showDone()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$6;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$6;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 110
    return-void
.end method

.method public showListening()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$1;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 60
    return-void
.end method

.method public showMusicDetected()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$5;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$5;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 100
    return-void
.end method

.method public showNoSpeechDetected()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$4;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$4;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 90
    return-void
.end method

.method public showRecognizing()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$3;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 80
    return-void
.end method

.method public showRecording()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$2;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 70
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "stableText"
    .parameter "pendingText"

    .prologue
    .line 115
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$7;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 121
    return-void
.end method
