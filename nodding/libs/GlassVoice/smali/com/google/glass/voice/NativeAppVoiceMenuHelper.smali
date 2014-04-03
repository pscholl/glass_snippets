.class public Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
.super Ljava/lang/Object;
.source "NativeAppVoiceMenuHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;,
        Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final packagesChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "packagesChangedReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->packagesChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)V
    .locals 0
    .parameter "triggerProvider"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    .line 38
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->packagesChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static getDisambiguationConfigName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "commandLiteral"

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DISAMBIGUATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIds(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/glass/app/VoiceTrigger;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, triggers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/glass/app/VoiceTrigger;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    .local v1, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/glass/app/VoiceTrigger;

    .line 170
    .local v2, trigger:Lcom/google/android/glass/app/VoiceTrigger;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Lcom/google/android/glass/app/VoiceTrigger;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    .end local v2           #trigger:Lcom/google/android/glass/app/VoiceTrigger;
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    .locals 5
    .parameter "context"

    .prologue
    .line 86
    const-class v4, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    if-nez v3, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, applicationContext:Landroid/content/Context;
    new-instance v2, Lcom/google/android/glass/app/VoiceTriggerManager;

    invoke-direct {v2, v0}, Lcom/google/android/glass/app/VoiceTriggerManager;-><init>(Landroid/content/Context;)V

    .line 89
    .local v2, voiceTriggerManager:Lcom/google/android/glass/app/VoiceTriggerManager;
    new-instance v1, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-direct {v1, v2}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;-><init>(Lcom/google/android/glass/app/VoiceTriggerManager;)V

    .line 91
    .local v1, triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;
    invoke-virtual {v1, v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->subscribeToPackageChanges(Landroid/content/Context;)V

    .line 92
    new-instance v3, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    invoke-direct {v3, v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;-><init>(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)V

    sput-object v3, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    .line 95
    .end local v0           #applicationContext:Landroid/content/Context;
    .end local v1           #triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;
    .end local v2           #voiceTriggerManager:Lcom/google/android/glass/app/VoiceTriggerManager;
    :cond_0
    sget-object v3, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 86
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getNames(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/glass/app/VoiceTrigger;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, triggers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/glass/app/VoiceTrigger;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 161
    .local v1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/glass/app/VoiceTrigger;

    .line 162
    .local v2, trigger:Lcom/google/android/glass/app/VoiceTrigger;
    invoke-virtual {v2, p1}, Lcom/google/android/glass/app/VoiceTrigger;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v2           #trigger:Lcom/google/android/glass/app/VoiceTrigger;
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public addTriggerCacheUpdateListener(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    #getter for: Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->updateListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$200(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public getDisambiguationConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 10
    .parameter "context"
    .parameter "commandLiteral"

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-virtual {p0, p2}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 146
    .local v9, triggers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/glass/app/VoiceTrigger;>;"
    invoke-direct {p0, p1, v9}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getNames(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, names:[Ljava/lang/String;
    invoke-direct {p0, p1, v9}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getIds(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, tags:[Ljava/lang/String;
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-static {p2}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getDisambiguationConfigName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    new-array v4, v3, [Lcom/google/glass/voice/VoiceConfig;

    const/high16 v7, -0x8000

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    .local v0, voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    return-object v0
.end method

.method public getNativeAppCommands(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers()Ljava/util/List;

    move-result-object v3

    .line 100
    .local v3, triggers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/glass/app/VoiceTrigger;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    .local v0, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/glass/app/VoiceTrigger;

    .line 102
    .local v2, trigger:Lcom/google/android/glass/app/VoiceTrigger;
    invoke-virtual {v2}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v2           #trigger:Lcom/google/android/glass/app/VoiceTrigger;
    :cond_0
    return-object v0
.end method

.method protected final getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "commandString"

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTriggers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/glass/app/VoiceTrigger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-virtual {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->getVoiceTriggers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTriggers(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "keyword"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/glass/app/VoiceTrigger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 117
    .local v1, matchingTriggers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/glass/app/VoiceTrigger;>;"
    invoke-virtual {p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/glass/app/VoiceTrigger;

    .line 118
    .local v2, trigger:Lcom/google/android/glass/app/VoiceTrigger;
    invoke-virtual {v2}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v2           #trigger:Lcom/google/android/glass/app/VoiceTrigger;
    :cond_1
    return-object v1
.end method

.method public matches(Lcom/google/glass/voice/VoiceCommand;Lcom/google/android/glass/app/VoiceTrigger;)Z
    .locals 2
    .parameter "command"
    .parameter "trigger"

    .prologue
    .line 136
    invoke-virtual {p2}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getSemanticTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newVoiceCommand(Lcom/google/android/glass/app/VoiceTrigger;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2
    .parameter "trigger"

    .prologue
    .line 131
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p1}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
