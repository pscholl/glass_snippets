.class final Lcom/google/glass/voice/menu/ShareMenuItem$1;
.super Lcom/google/glass/voice/menu/ShareMenuItem;
.source "ShareMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/ShareMenuItem;->newShareItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;)Lcom/google/glass/voice/menu/ShareMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$entityType:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

.field final synthetic val$nextVoiceConfig:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Lcom/google/glass/voice/menu/Requirement;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p5, p0, Lcom/google/glass/voice/menu/ShareMenuItem$1;->val$entityType:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    iput-object p6, p0, Lcom/google/glass/voice/menu/ShareMenuItem$1;->val$nextVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/voice/menu/ShareMenuItem;-><init>(Lcom/google/glass/voice/VoiceCommand;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Lcom/google/glass/voice/menu/Requirement;)V

    return-void
.end method


# virtual methods
.method public getNextVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/menu/ShareMenuItem$1;->val$nextVoiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public onTrigger(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 2
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/glass/voice/menu/ShareMenuItem;->onTrigger(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V

    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/menu/ShareMenuItem$1;->val$entityType:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->SHARE:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    invoke-interface {p1, p0, v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->showPeopleList(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;)V

    .line 68
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v1, "20"

    invoke-interface {p1, v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 70
    return-void
.end method
