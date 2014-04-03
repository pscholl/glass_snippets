.class public Lcom/google/glass/voice/CommandRecognizerLoader;
.super Ljava/lang/Object;
.source "CommandRecognizerLoader.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final asyncExecutor:Ljava/util/concurrent/Executor;

.field private final context:Landroid/content/Context;

.field private final loadedRecognizers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/voice/VoiceConfig;",
            "Lcom/google/glass/voice/HotwordRecognizer;",
            ">;"
        }
    .end annotation
.end field

.field private final recognizerFactory:Lcom/google/glass/voice/RecognizerFactory;

.field final recognizersToDestroy:Ljava/util/Set;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/voice/HotwordRecognizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/RecognizerFactory;Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter "context"
    .parameter "recognizerFactory"
    .parameter "asyncExecutor"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    .line 35
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    .line 40
    iput-object p1, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizerFactory:Lcom/google/glass/voice/RecognizerFactory;

    .line 42
    iput-object p3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->asyncExecutor:Ljava/util/concurrent/Executor;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/CommandRecognizerLoader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/voice/CommandRecognizerLoader;->destroyRecognizers()V

    return-void
.end method

.method private destroyRecognizers()V
    .locals 3

    .prologue
    .line 134
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 135
    .local v1, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v1}, Lcom/google/glass/voice/HotwordRecognizer;->destroy()V

    .line 136
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpState(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "writer"

    .prologue
    .line 155
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    .local v1, recognizerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/HotwordRecognizer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v1           #recognizerEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/HotwordRecognizer;>;"
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Recognizers to destroy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 145
    .local v0, config:Lcom/google/glass/voice/VoiceConfig;
    sget-object v2, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Command recognizer resources leaked for %s!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    .end local v0           #config:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 149
    return-void
.end method

.method public getRecognizer(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 1
    .parameter "config"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/HotwordRecognizer;

    return-object v0
.end method

.method load(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 6
    .parameter "config"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 81
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizerFactory:Lcom/google/glass/voice/RecognizerFactory;

    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/google/glass/voice/RecognizerFactory;->createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    .line 82
    .local v0, newRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    sget-object v2, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Loaded recognizer for config %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 90
    .local v1, previousRecognizer:Lcom/google/glass/voice/HotwordRecognizer;
    if-eqz v1, :cond_0

    .line 91
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    return-void
.end method

.method public load(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, voiceConfigs:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/glass/voice/VoiceConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 63
    .local v0, config:Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 65
    .end local v0           #config:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    return-void
.end method

.method public loadAsync(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, voiceConfigs:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/glass/voice/VoiceConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceConfig;

    .line 70
    .local v1, voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->asyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/glass/voice/CommandRecognizerLoader$1;

    invoke-direct {v3, p0, v1}, Lcom/google/glass/voice/CommandRecognizerLoader$1;-><init>(Lcom/google/glass/voice/CommandRecognizerLoader;Lcom/google/glass/voice/VoiceConfig;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 77
    .end local v1           #voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    return-void
.end method

.method public unload(Ljava/util/Collection;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, configs:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/glass/voice/VoiceConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 98
    .local v0, config:Lcom/google/glass/voice/VoiceConfig;
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/HotwordRecognizer;

    .line 99
    .local v2, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    if-eqz v2, :cond_0

    .line 100
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_0
    sget-object v3, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No recognizer to unload for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    .end local v0           #config:Lcom/google/glass/voice/VoiceConfig;
    .end local v2           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_1
    return-void
.end method

.method public unloadAll()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->unload(Ljava/util/Collection;)V

    .line 130
    invoke-direct {p0}, Lcom/google/glass/voice/CommandRecognizerLoader;->destroyRecognizers()V

    .line 131
    return-void
.end method

.method public unloadReplacedRecognizers()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->asyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/voice/CommandRecognizerLoader$2;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/CommandRecognizerLoader$2;-><init>(Lcom/google/glass/voice/CommandRecognizerLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
