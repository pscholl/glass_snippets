.class public Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;
.super Ljava/lang/Object;
.source "MirrorCommandDisambiguationHelper.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final disambiguationConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private static getIds(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 52
    .local v1, ids:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 53
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v2}, Lcom/google/glass/voice/EntityUtils;->getSemanticTag(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-object v1
.end method

.method private static getSpeakableNames(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 60
    .local v1, speakableNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 61
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v2}, Lcom/google/glass/entity/EntityHelper;->getSpeakableName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-object v1
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
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(I)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .parameter "commandType"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method updateConfigs(Lcom/google/common/collect/ListMultimap;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, commandTargets:Lcom/google/common/collect/ListMultimap;,"Lcom/google/common/collect/ListMultimap<Ljava/lang/Integer;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    iget-object v7, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 36
    invoke-interface {p1}, Lcom/google/common/collect/ListMultimap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 37
    .local v0, commandType:I
    iget-object v7, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/glass/voice/RecognizerFactory;->prependNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 39
    .local v4, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 40
    invoke-static {v4}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->getSpeakableNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, names:[Ljava/lang/String;
    invoke-static {v4}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->getIds(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, tags:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-class v8, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$CommandType;

    invoke-static {v8, v0}, Lcom/google/glass/util/ProtoEnumUtils;->getEnumName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_DISAMBIGUATION"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, name:Ljava/lang/String;
    new-instance v6, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v6, v2, v3, v5}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 45
    .local v6, voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    iget-object v7, p0, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->disambiguationConfigs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    .end local v0           #commandType:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #names:[Ljava/lang/String;
    .end local v4           #shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .end local v5           #tags:[Ljava/lang/String;
    .end local v6           #voiceConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_1
    return-void
.end method
