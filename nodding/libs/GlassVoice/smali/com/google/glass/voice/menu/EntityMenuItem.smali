.class public abstract Lcom/google/glass/voice/menu/EntityMenuItem;
.super Lcom/google/glass/voice/menu/VoiceMenuItem;
.source "EntityMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/EntityMenuItem$ShareTargetMenuItem;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field public final entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/voice/menu/EntityMenuItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/google/glass/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/EntityMenuItem;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 40
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;[Lcom/google/glass/voice/menu/Requirement;)V
    .locals 1
    .parameter "entity"
    .parameter "requirements"

    .prologue
    .line 43
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Ljava/util/List;)V

    .line 44
    iput-object p1, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 88
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 91
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/google/glass/voice/menu/EntityMenuItem;

    .line 94
    .local v0, other:Lcom/google/glass/voice/menu/EntityMenuItem;
    iget-object v3, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_4

    .line 95
    iget-object v3, v0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v3, :cond_0

    move v1, v2

    .line 96
    goto :goto_0

    .line 98
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 99
    goto :goto_0
.end method

.method public getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 76
    const/16 v0, 0x1f

    .line 77
    .local v0, prime:I
    const/4 v1, 0x1

    .line 78
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 79
    return v1

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public matches(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 6
    .parameter "voiceCommand"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getSemanticTag()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, semanticTag:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 60
    sget-object v2, Lcom/google/glass/voice/menu/EntityMenuItem;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    const-string v4, "VoiceCommand with null semantic tag compared against EntityMenuItem! Stack trace included for investigation, but this is not a crash."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const/4 v2, 0x5

    sget-object v3, Lcom/google/glass/voice/menu/EntityMenuItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoiceCommand with null semantic tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v1}, Lcom/google/glass/voice/EntityUtils;->getSemanticTag(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getSemanticTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntityMenuItem [entity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/EntityMenuItem;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
