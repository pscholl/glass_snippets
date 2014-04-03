.class public Lcom/google/android/speech/dispatcher/RecognitionDispatcher;
.super Ljava/lang/Object;
.source "RecognitionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;,
        Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "RecognitionDispatcher"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mRecognitionEngines:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/speech/engine/RecognitionEngine;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResultsMerger:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;

.field private final mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

.field private final mState:Lcom/google/android/searchcommon/util/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/searchcommon/util/StateMachine",
            "<",
            "Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/speech/SpeechLibFactory;)V
    .locals 4
    .parameter "executor"
    .parameter "timeoutExecutor"
    .parameter "speechLibFactory"

    .prologue
    const/4 v3, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "RecognitionDispatcher"

    sget-object v1, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->IDLE:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    invoke-static {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->newBuilder(Ljava/lang/String;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->IDLE:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    sget-object v2, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->RUNNING:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->RUNNING:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    sget-object v2, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->IDLE:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->setSingleThreadOnly(Z)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->setStrictMode(Z)Lcom/google/android/searchcommon/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/searchcommon/util/StateMachine$Builder;->build()Lcom/google/android/searchcommon/util/StateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mState:Lcom/google/android/searchcommon/util/StateMachine;

    .line 54
    iput-object p1, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 55
    iput-object p2, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    iput-object p3, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    .line 57
    return-void
.end method

.method private stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-object v2, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v3, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->RUNNING:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    invoke-virtual {v2, v3}, Lcom/google/android/searchcommon/util/StateMachine;->checkIn(Ljava/lang/Enum;)V

    .line 117
    iget-object v2, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v3, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->IDLE:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    invoke-virtual {v2, v3}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 118
    iget-object v2, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mResultsMerger:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;

    invoke-interface {v2}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;->invalidate()V

    .line 119
    iput-object v4, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mResultsMerger:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;

    .line 120
    iget-object v2, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mRecognitionEngines:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 121
    .local v1, item:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/speech/engine/RecognitionEngine;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/speech/engine/RecognitionEngine;

    invoke-interface {v2}, Lcom/google/android/speech/engine/RecognitionEngine;->close()V

    goto :goto_0

    .line 123
    .end local v1           #item:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/speech/engine/RecognitionEngine;>;"
    :cond_0
    iput-object v4, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mRecognitionEngines:Ljava/util/Collection;

    .line 124
    return-void
.end method

.method private static final threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "executor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, delegate:Ljava/lang/Object;,"TT;"
    invoke-static {p0, p1}, Lcom/google/android/searchcommon/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->RUNNING:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->stop()V

    .line 86
    :cond_0
    return-void
.end method

.method getResultsMerger()Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mResultsMerger:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;

    return-object v0
.end method

.method isRunning()Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->RUNNING:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public startRecognition(Ljava/util/Collection;Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/EngineSelector;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V
    .locals 10
    .parameter
    .parameter "input"
    .parameter "sessionParams"
    .parameter "engineSelector"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/speech/engine/RecognitionEngine;",
            ">;>;",
            "Lcom/google/android/speech/audio/AudioInputStreamFactory;",
            "Lcom/google/android/speech/params/SessionParams;",
            "Lcom/google/android/speech/EngineSelector;",
            "Lcom/google/android/speech/callback/RecognitionEngineCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, recognitionEngines:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/speech/engine/RecognitionEngine;>;>;"
    iget-object v0, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->RUNNING:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "RecognitionDispatcher"

    const-string v1, "Multiple recognitions in progress, the first will be cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->stop()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->RUNNING:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    invoke-virtual {v0, v1}, Lcom/google/android/searchcommon/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 68
    iput-object p1, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mRecognitionEngines:Ljava/util/Collection;

    .line 70
    iget-object v0, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    iget-object v5, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v6, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/speech/SpeechLibFactory;->buildResultsMerger(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/EngineSelector;Lcom/google/android/speech/callback/RecognitionEngineCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mResultsMerger:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;

    .line 74
    iget-object v0, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mResultsMerger:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$ResultsMerger;

    invoke-static {v0, v1}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 75
    .local v9, threadChangedCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;
    iget-object v0, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mRecognitionEngines:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 76
    .local v8, item:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/speech/engine/RecognitionEngine;>;"
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/speech/engine/RecognitionEngine;

    invoke-interface {v0, p2, v9, p3, v9}, Lcom/google/android/speech/engine/RecognitionEngine;->startRecognition(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/audio/EndpointerListener;)V

    goto :goto_0

    .line 79
    .end local v8           #item:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/speech/engine/RecognitionEngine;>;"
    :cond_1
    return-void
.end method

.method public stopEngine(I)V
    .locals 6
    .parameter "engineIndex"

    .prologue
    .line 90
    iget-object v3, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mState:Lcom/google/android/searchcommon/util/StateMachine;

    sget-object v4, Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;->RUNNING:Lcom/google/android/speech/dispatcher/RecognitionDispatcher$State;

    invoke-virtual {v3, v4}, Lcom/google/android/searchcommon/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    const/4 v2, 0x0

    .line 93
    .local v2, stoppedEngine:Z
    iget-object v3, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mRecognitionEngines:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 94
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/speech/engine/RecognitionEngine;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 96
    .local v0, item:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/speech/engine/RecognitionEngine;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 97
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/speech/engine/RecognitionEngine;

    invoke-interface {v3}, Lcom/google/android/speech/engine/RecognitionEngine;->close()V

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 99
    const/4 v2, 0x1

    goto :goto_0

    .line 102
    .end local v0           #item:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/speech/engine/RecognitionEngine;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 103
    const-string v3, "RecognitionDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not stop engine "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->mRecognitionEngines:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    invoke-direct {p0}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->stop()V

    .line 109
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/speech/engine/RecognitionEngine;>;>;"
    .end local v2           #stoppedEngine:Z
    :cond_3
    return-void
.end method
