.class Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;
.super Ljava/lang/Object;
.source "SensoryRecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/SensoryRecognizerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MirrorApiHybridHelper"
.end annotation


# static fields
.field private static final legacyRecogFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation
.end field

.field private static final rtaRecogFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->legacyRecogFiles:Ljava/util/Map;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->rtaRecogFiles:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x1

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->POST_AN_UPDATE:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {v0, v1}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->addLegacyCommandConfig(ILcom/google/glass/voice/StaticRecognizerFiles;)V

    .line 214
    const/4 v0, 0x0

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->TAKE_A_NOTE:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {v0, v1}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->addRtaCommandConfig(ILcom/google/glass/voice/StaticRecognizerFiles;)V

    .line 215
    const/4 v0, 0x2

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->CHECK_ME_IN:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {v0, v1}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->addRtaCommandConfig(ILcom/google/glass/voice/StaticRecognizerFiles;)V

    .line 216
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->ADD_A_CALENDAR_EVENT:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {v0, v1}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->addRtaCommandConfig(ILcom/google/glass/voice/StaticRecognizerFiles;)V

    .line 218
    const/4 v0, 0x4

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_RECIPE:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {v0, v1}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->addRtaCommandConfig(ILcom/google/glass/voice/StaticRecognizerFiles;)V

    .line 219
    const/4 v0, 0x5

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->FIND_A_PLACE:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {v0, v1}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->addRtaCommandConfig(ILcom/google/glass/voice/StaticRecognizerFiles;)V

    .line 220
    const/4 v0, 0x6

    sget-object v1, Lcom/google/glass/voice/StaticRecognizerFiles;->EXPLORE_NEARBY:Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {v0, v1}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->addRtaCommandConfig(ILcom/google/glass/voice/StaticRecognizerFiles;)V

    .line 221
    return-void
.end method

.method private static addLegacyCommandConfig(ILcom/google/glass/voice/StaticRecognizerFiles;)V
    .locals 2
    .parameter "commandType"
    .parameter "files"

    .prologue
    .line 226
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->legacyRecogFiles:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method private static addRtaCommandConfig(ILcom/google/glass/voice/StaticRecognizerFiles;)V
    .locals 2
    .parameter "commandType"
    .parameter "files"

    .prologue
    .line 230
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->rtaRecogFiles:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method private getImplementedCommands(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {p1}, Lcom/google/glass/voice/EntityUtils;->getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    .line 255
    .local v0, mirrorCommandEntities:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<Ljava/lang/Integer;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper$1;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper$1;-><init>(Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;Lcom/google/common/collect/Multimap;)V

    invoke-virtual {v1, v2}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/FluentIterable;->toList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method private hasLegacyModel(I)Z
    .locals 2
    .parameter "commandType"

    .prologue
    .line 302
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->legacyRecogFiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private hasRtaModel(I)Z
    .locals 2
    .parameter "commandType"

    .prologue
    .line 297
    sget-object v0, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->rtaRecogFiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createLegacyRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 271
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 272
    .local v2, recognizers:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordRecognizer;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->getImplementedCommands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 273
    .local v0, commandType:I
    invoke-direct {p0, v0}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->hasLegacyModel(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    sget-object v3, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->legacyRecogFiles:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {p1, v3}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->hasRtaModel(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    invoke-static {}, Lcom/google/glass/voice/SensoryRecognizerFactory;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "RTA model for command type %s, will be recognized by native hybrid."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/SensoryRecognizerFactory;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "No hand-tuned model for command type %s! Will not recognize this command."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    .end local v0           #commandType:I
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    sget-object v3, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    .line 290
    :goto_1
    return-object v3

    :cond_3
    new-instance v4, Lcom/google/glass/voice/HybridHotwordRecognizer;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/glass/voice/HotwordRecognizer;

    invoke-direct {v4, v3}, Lcom/google/glass/voice/HybridHotwordRecognizer;-><init>([Lcom/google/glass/voice/HotwordRecognizer;)V

    move-object v3, v4

    goto :goto_1
.end method

.method public getNativeHybridRecogFiles(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 240
    .local v2, searchFiles:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/StaticRecognizerFiles;>;"
    invoke-direct {p0, p1}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->getImplementedCommands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 241
    .local v0, commandType:I
    invoke-direct {p0, v0}, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->hasRtaModel(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    sget-object v3, Lcom/google/glass/voice/SensoryRecognizerFactory$MirrorApiHybridHelper;->rtaRecogFiles:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    .end local v0           #commandType:I
    :cond_1
    return-object v2
.end method
