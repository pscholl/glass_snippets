.class public Lcom/google/glass/voice/NativeCommandDisambiguationHelper;
.super Ljava/lang/Object;
.source "NativeCommandDisambiguationHelper.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final disambiguationConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->context:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method getAllConfigs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "literal"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method updateConfigs(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, literals:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    .local v1, literal:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getDisambiguationConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    .end local v1           #literal:Ljava/lang/String;
    :cond_0
    return-void
.end method
