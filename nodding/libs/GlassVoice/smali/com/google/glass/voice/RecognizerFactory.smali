.class public abstract Lcom/google/glass/voice/RecognizerFactory;
.super Ljava/lang/Object;
.source "RecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/RecognizerFactory$1;,
        Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;
    }
.end annotation


# static fields
.field private static final GET_QUALIFIED_ENTITY_NAME_TIMEOUT_MS:J = 0xfaL

.field public static final NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/RecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 76
    new-instance v0, Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/voice/RecognizerFactory$NoOpRecognizer;-><init>(Lcom/google/glass/voice/RecognizerFactory$1;)V

    sput-object v0, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/voice/RecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method protected static final prependNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, photoShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 135
    .local v4, withPrependedNames:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 139
    .local v0, e:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    const-wide/16 v5, 0xfa

    invoke-static {p0, v0, v5, v6}, Lcom/google/glass/voice/EntityUtils;->getQualifiedName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, qualifiedName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    .line 142
    .local v3, withPrependedName:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iput-object v2, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    .line 143
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    .end local v0           #e:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .end local v2           #qualifiedName:Ljava/lang/String;
    .end local v3           #withPrependedName:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    return-object v4
.end method


# virtual methods
.method protected createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 96
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/voice/RecognizerFactory;->createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/voice/VoiceConfig;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Lcom/google/glass/voice/HotwordRecognizer;"
        }
    .end annotation
.end method

.method protected final createEntityRecognizer(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 7
    .parameter "context"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Lcom/google/glass/voice/HotwordRecognizer;"
        }
    .end annotation

    .prologue
    .line 113
    .local p3, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    sget-object v6, Lcom/google/glass/voice/RecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    .line 128
    :goto_0
    return-object v6

    .line 117
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 118
    .local v4, phrases:[Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 119
    .local v5, tags:[Ljava/lang/String;
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 120
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/4 v2, 0x0

    .line 121
    .local v2, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 122
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 123
    .local v1, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v1}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 124
    invoke-static {v1}, Lcom/google/glass/voice/EntityUtils;->getSemanticTag(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    goto :goto_1

    .line 127
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v0, p2, v4, v5}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    .local v0, config:Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/glass/voice/RecognizerFactory;->createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v6

    goto :goto_0
.end method

.method public createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 79
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/voice/RecognizerFactory;->createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 3
    .parameter "context"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/voice/VoiceConfig;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Lcom/google/glass/voice/HotwordRecognizer;"
        }
    .end annotation

    .prologue
    .line 84
    .local p3, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid voice config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 88
    :cond_0
    invoke-static {p2}, Lcom/google/glass/voice/VoiceConfig;->isSystemConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/RecognizerFactory;->createSystemRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/voice/RecognizerFactory;->createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract createSystemRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
.end method
