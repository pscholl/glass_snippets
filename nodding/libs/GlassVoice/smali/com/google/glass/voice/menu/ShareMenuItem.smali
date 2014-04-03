.class public abstract Lcom/google/glass/voice/menu/ShareMenuItem;
.super Lcom/google/glass/voice/menu/StaticCommandMenuItem;
.source "ShareMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/ShareMenuItem$2;
    }
.end annotation


# instance fields
.field private timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Lcom/google/glass/voice/menu/Requirement;)V
    .locals 0
    .parameter "command"
    .parameter "stringId"
    .parameter "timelineItem"
    .parameter "requirements"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p4}, Lcom/google/glass/voice/menu/StaticCommandMenuItem;-><init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/voice/menu/Requirement;)V

    .line 28
    iput-object p3, p0, Lcom/google/glass/voice/menu/ShareMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 29
    return-void
.end method

.method public static getShareContextMenuItems(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "timelineItem"
    .parameter "entityType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/glass/voice/menu/ShareMenuItem;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/glass/voice/menu/ShareMenuItem;->newShareItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;)Lcom/google/glass/voice/menu/ShareMenuItem;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static newShareItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;)Lcom/google/glass/voice/menu/ShareMenuItem;
    .locals 9
    .parameter "context"
    .parameter "timelineItem"
    .parameter "entityType"

    .prologue
    const/4 v8, 0x1

    .line 44
    sget-object v1, Lcom/google/glass/voice/menu/ShareMenuItem$2;->$SwitchMap$com$google$glass$voice$menu$VoiceMenuEnvironment$EntityType:[I

    invoke-virtual {p2}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 59
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No VoiceConfig for entityType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :pswitch_0
    sget-object v7, Lcom/google/glass/voice/menu/VoiceMenuRequirements;->HAS_VIDEO_SHARE_TARGETS:Lcom/google/glass/voice/menu/Requirement;

    .line 47
    .local v7, requirement:Lcom/google/glass/voice/menu/Requirement;
    sget-object v6, Lcom/google/glass/voice/VoiceConfig;->VIDEO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    .line 62
    .local v6, nextVoiceConfig:Lcom/google/glass/voice/VoiceConfig;
    :goto_0
    new-instance v0, Lcom/google/glass/voice/menu/ShareMenuItem$1;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->SHARE:Lcom/google/glass/voice/VoiceCommand;

    sget v2, Lcom/google/glass/voiceclient/R$string;->voice_menu_item_share:I

    new-array v4, v8, [Lcom/google/glass/voice/menu/Requirement;

    const/4 v3, 0x0

    aput-object v7, v4, v3

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/menu/ShareMenuItem$1;-><init>(Lcom/google/glass/voice/VoiceCommand;ILcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Lcom/google/glass/voice/menu/Requirement;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/voice/VoiceConfig;)V

    .line 77
    .local v0, item:Lcom/google/glass/voice/menu/ShareMenuItem;
    invoke-virtual {v0, v8}, Lcom/google/glass/voice/menu/ShareMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 78
    invoke-virtual {v0, v8}, Lcom/google/glass/voice/menu/ShareMenuItem;->setHasSubMenu(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 79
    return-object v0

    .line 50
    .end local v0           #item:Lcom/google/glass/voice/menu/ShareMenuItem;
    .end local v6           #nextVoiceConfig:Lcom/google/glass/voice/VoiceConfig;
    .end local v7           #requirement:Lcom/google/glass/voice/menu/Requirement;
    :pswitch_1
    sget-object v7, Lcom/google/glass/voice/menu/VoiceMenuRequirements;->HAS_PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/menu/Requirement;

    .line 51
    .restart local v7       #requirement:Lcom/google/glass/voice/menu/Requirement;
    sget-object v6, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    .line 52
    .restart local v6       #nextVoiceConfig:Lcom/google/glass/voice/VoiceConfig;
    goto :goto_0

    .line 54
    .end local v6           #nextVoiceConfig:Lcom/google/glass/voice/VoiceConfig;
    .end local v7           #requirement:Lcom/google/glass/voice/menu/Requirement;
    :pswitch_2
    sget-object v7, Lcom/google/glass/voice/menu/VoiceMenuRequirements;->HAS_PLUS_SHARE_TARGETS:Lcom/google/glass/voice/menu/Requirement;

    .line 55
    .restart local v7       #requirement:Lcom/google/glass/voice/menu/Requirement;
    sget-object v6, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    .line 56
    .restart local v6       #nextVoiceConfig:Lcom/google/glass/voice/VoiceConfig;
    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/voice/menu/ShareMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method
