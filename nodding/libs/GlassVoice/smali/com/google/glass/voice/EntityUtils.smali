.class public Lcom/google/glass/voice/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/EntityUtils$QualificationHelper;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final qualificationHelper:Lcom/google/glass/voice/EntityUtils$QualificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 167
    new-instance v0, Lcom/google/glass/voice/EntityUtils$QualificationHelper;

    invoke-direct {v0}, Lcom/google/glass/voice/EntityUtils$QualificationHelper;-><init>()V

    sput-object v0, Lcom/google/glass/voice/EntityUtils;->qualificationHelper:Lcom/google/glass/voice/EntityUtils$QualificationHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/voice/EntityUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static getContactEntities(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/voice/EntityUtils;->getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityCache;->getSpeakableCommunicationTargets()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;
    .locals 2
    .parameter "context"
    .parameter "plusEntityOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 p1, 0x0

    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/entity/EntityCache;->getPlusEntityForUser(Landroid/content/Context;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .line 72
    .local v0, user:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_0
    if-eqz v0, :cond_1

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 75
    :goto_1
    return-object v1

    .line 69
    .end local v0           #user:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/entity/EntityHelper;->getSelfEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    .restart local v0       #user:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public static getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/ListMultimap;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/collect/ListMultimap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v0

    .line 51
    .local v0, mm:Lcom/google/common/collect/ListMultimap;,"Lcom/google/common/collect/ListMultimap<Ljava/lang/Integer;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    .end local v0           #mm:Lcom/google/common/collect/ListMultimap;,"Lcom/google/common/collect/ListMultimap<Ljava/lang/Integer;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :goto_0
    return-object v0

    .restart local v0       #mm:Lcom/google/common/collect/ListMultimap;,"Lcom/google/common/collect/ListMultimap<Ljava/lang/Integer;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/entity/EntityCache;->getSpeakableMirrorCommandEntities()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/glass/voice/EntityUtils;->getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityCache;->getSpeakablePlusShareTargets()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getQualifiedName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "entity"
    .parameter "timeoutMs"

    .prologue
    .line 189
    sget-object v0, Lcom/google/glass/voice/EntityUtils;->qualificationHelper:Lcom/google/glass/voice/EntityUtils$QualificationHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/glass/voice/EntityUtils$QualificationHelper;->getQualifiedName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "entity"

    .prologue
    .line 196
    sget-object v0, Lcom/google/glass/voice/EntityUtils;->qualificationHelper:Lcom/google/glass/voice/EntityUtils$QualificationHelper;

    invoke-virtual {v0, p0, p1}, Lcom/google/glass/voice/EntityUtils$QualificationHelper;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSemanticTag(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 1
    .parameter "entity"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->normalizeSemanticTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShareTargetEntities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "context"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->isGuestModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/glass/voice/EntityUtils;->getGuestModeEntities(Landroid/content/Context;Z)Ljava/util/Collection;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/entity/EntityCache;->getSpeakableShareTargets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasContacts(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getContactEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasOnlyFocusEntities(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    const/4 v2, 0x0

    .line 101
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v2

    .line 104
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 105
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 109
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static hasPlusShareTargets(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasShareTargets(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "mimeType"

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/google/glass/voice/EntityUtils;->getShareTargetEntities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isGuestModeEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v0

    return v0
.end method

.method public static preloadQualifiedNames(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 204
    .local v0, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    sget-object v2, Lcom/google/glass/voice/EntityUtils;->qualificationHelper:Lcom/google/glass/voice/EntityUtils$QualificationHelper;

    invoke-virtual {v2, p0, v0}, Lcom/google/glass/voice/EntityUtils$QualificationHelper;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    goto :goto_0

    .line 206
    .end local v0           #entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    return-void
.end method
