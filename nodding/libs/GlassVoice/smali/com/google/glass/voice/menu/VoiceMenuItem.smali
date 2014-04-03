.class public abstract Lcom/google/glass/voice/menu/VoiceMenuItem;
.super Ljava/lang/Object;
.source "VoiceMenuItem.java"


# static fields
.field private static final NO_CONTEXT_ICON_ID:I

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

.field private hasSubMenu:Z

.field private hasTriggered:Z

.field protected final requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/Requirement;",
            ">;"
        }
    .end annotation
.end field

.field private voicePendingAfterTrigger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuItem;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/Requirement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, requirements:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/menu/Requirement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasTriggered:Z

    .line 51
    return-void
.end method

.method private playTriggerSounds(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 3
    .parameter "environment"
    .parameter "voiceInterface"

    .prologue
    .line 155
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 157
    .local v0, sounds:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/sound/SoundManager$SoundId;>;"
    if-nez p2, :cond_0

    .line 159
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    iget-boolean v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voicePendingAfterTrigger:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasSubMenu:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasSubMenu:Z

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    .line 165
    :cond_1
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 176
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager$SoundId;

    new-instance v2, Lcom/google/glass/voice/menu/VoiceMenuItem$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/glass/voice/menu/VoiceMenuItem$2;-><init>(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/util/List;Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)V

    invoke-interface {p1, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)V

    .line 200
    :cond_3
    return-void

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

    if-eqz v1, :cond_5

    .line 168
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_5
    if-eqz p2, :cond_2

    .line 170
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private preserveConfigAcrossTransition(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)V
    .locals 5
    .parameter "environment"

    .prologue
    .line 139
    invoke-interface {p1}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    .line 140
    .local v0, activity:Lcom/google/glass/app/GlassActivity;
    instance-of v2, v0, Lcom/google/glass/app/GlassVoiceActivity;

    if-nez v2, :cond_0

    .line 141
    sget-object v2, Lcom/google/glass/voice/menu/VoiceMenuItem;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Menu item invoked by voice outside of GlassVoiceActivity, cannot preserve config!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 145
    check-cast v1, Lcom/google/glass/app/GlassVoiceActivity;

    .line 146
    .local v1, glassVoiceActivity:Lcom/google/glass/app/GlassVoiceActivity;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassVoiceActivity;->setPreserveConfigOnPause(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getContextIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getContextIconId()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getContextIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected getContextIconId()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public getContextLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getError(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;
    .locals 3
    .parameter "environment"

    .prologue
    .line 97
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/Requirement;

    .line 98
    .local v1, requirement:Lcom/google/glass/voice/menu/Requirement;
    invoke-interface {v1, p1}, Lcom/google/glass/voice/menu/Requirement;->isSatisfied(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-interface {v1, p1}, Lcom/google/glass/voice/menu/Requirement;->getError(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;

    move-result-object v2

    .line 102
    .end local v1           #requirement:Lcom/google/glass/voice/menu/Requirement;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getLabel(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getNextVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
.end method

.method public isEnabled(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z
    .locals 3
    .parameter "environment"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/Requirement;

    .line 87
    .local v1, requirement:Lcom/google/glass/voice/menu/Requirement;
    invoke-interface {v1, p1}, Lcom/google/glass/voice/menu/Requirement;->isSatisfied(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    const/4 v2, 0x0

    .line 92
    .end local v1           #requirement:Lcom/google/glass/voice/menu/Requirement;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public abstract matches(Lcom/google/glass/voice/VoiceCommand;)Z
.end method

.method public abstract onTrigger(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasTriggered:Z

    .line 59
    return-void
.end method

.method public setCustomTriggerSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 2
    .parameter "customTriggerSound"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voicePendingAfterTrigger:Z

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use custom trigger sound if voice is pending after trigger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 76
    return-object p0
.end method

.method public setHasSubMenu(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0
    .parameter "hasSubMenu"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasSubMenu:Z

    .line 81
    return-object p0
.end method

.method public setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 2
    .parameter "voicePendingAfterTrigger"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot accept voice after trigger if custom trigger sound is defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-boolean p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voicePendingAfterTrigger:Z

    .line 67
    return-object p0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public trigger(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "environment"
    .parameter "voiceInterface"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasTriggered:Z

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->isEnabled(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getError(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->showError(Lcom/google/glass/app/GlassError;)V

    .line 119
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 122
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasTriggered:Z

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->playTriggerSounds(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V

    .line 125
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuItem$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenuItem$1;-><init>(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V

    invoke-interface {p1, v0}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->postToUiThread(Ljava/lang/Runnable;)V

    .line 132
    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voicePendingAfterTrigger:Z

    if-eqz v0, :cond_2

    .line 133
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->preserveConfigAcrossTransition(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)V

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getNextVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method
