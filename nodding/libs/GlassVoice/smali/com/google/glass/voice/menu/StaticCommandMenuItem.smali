.class public abstract Lcom/google/glass/voice/menu/StaticCommandMenuItem;
.super Lcom/google/glass/voice/menu/VoiceMenuItem;
.source "StaticCommandMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/StaticCommandMenuItem$VoiceMenuCommandItemListener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field public final command:Lcom/google/glass/voice/VoiceCommand;

.field private final contextMenuStringId:I

.field private final iconId:I

.field private final stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method protected varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/voice/menu/Requirement;)V
    .locals 1
    .parameter "command"
    .parameter "stringId"
    .parameter "contextMenuStringId"
    .parameter "iconId"
    .parameter "requirements"

    .prologue
    .line 35
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Ljava/util/List;)V

    .line 36
    iput-object p1, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    .line 37
    iput p2, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->stringId:I

    .line 38
    iput p3, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->contextMenuStringId:I

    .line 39
    iput p4, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->iconId:I

    .line 40
    return-void
.end method

.method protected varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/voice/menu/Requirement;)V
    .locals 6
    .parameter "command"
    .parameter "stringId"
    .parameter "requirements"

    .prologue
    const/4 v3, 0x0

    .line 47
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/StaticCommandMenuItem;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/voice/menu/Requirement;)V

    .line 48
    return-void
.end method

.method protected varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;[Lcom/google/glass/voice/menu/Requirement;)V
    .locals 6
    .parameter "command"
    .parameter "requirements"

    .prologue
    const/4 v2, 0x0

    .line 51
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/StaticCommandMenuItem;-><init>(Lcom/google/glass/voice/VoiceCommand;III[Lcom/google/glass/voice/menu/Requirement;)V

    .line 52
    return-void
.end method

.method static getUserEventDataId(Lcom/google/glass/voice/VoiceCommand;)Ljava/lang/String;
    .locals 3
    .parameter "command"

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    sget-object v0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "null command in getUserEventDataId!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const-string v0, ""

    .line 162
    :goto_0
    return-object v0

    .line 145
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->GOOGLE:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "2"

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const-string v0, "3"

    goto :goto_0

    .line 149
    :cond_2
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    const-string v0, "4"

    goto :goto_0

    .line 151
    :cond_3
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->VIDEO_CALL:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    const-string v0, "11"

    goto :goto_0

    .line 153
    :cond_4
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    const-string v0, "5"

    goto :goto_0

    .line 155
    :cond_5
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->CALL:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    const-string v0, "7"

    goto :goto_0

    .line 157
    :cond_6
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 158
    const-string v0, "6"

    goto :goto_0

    .line 159
    :cond_7
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->mirrorApiCommands:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p0}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    const-string v0, "28"

    goto :goto_0

    .line 162
    :cond_8
    const-string v0, ""

    goto :goto_0
.end method

.method static logMainMenuCommandEvent(Lcom/google/glass/voice/VoiceCommand;ZLcom/google/glass/voice/menu/VoiceMenuEnvironment;)V
    .locals 5
    .parameter "command"
    .parameter "spoken"
    .parameter "environment"

    .prologue
    .line 129
    invoke-static {p0}, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->getUserEventDataId(Lcom/google/glass/voice/VoiceCommand;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, userEventDataId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No user event log data id for command: %s; ignoring."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    :goto_1
    invoke-interface {p2, v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-ne p0, p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 108
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 111
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 113
    check-cast v0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;

    .line 114
    .local v0, other:Lcom/google/glass/voice/menu/StaticCommandMenuItem;
    iget-object v3, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    if-nez v3, :cond_4

    .line 115
    iget-object v3, v0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    if-eqz v3, :cond_5

    move v1, v2

    .line 116
    goto :goto_0

    .line 118
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    iget-object v4, v0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_5
    iget v3, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->stringId:I

    iget v4, v0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->stringId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 122
    goto :goto_0
.end method

.method public getContextIconId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->iconId:I

    return v0
.end method

.method public getContextLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    iget v0, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->contextMenuStringId:I

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->contextMenuStringId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    iget v0, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->stringId:I

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->stringId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 95
    const/16 v0, 0x1f

    .line 96
    .local v0, prime:I
    const/4 v1, 0x1

    .line 97
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 98
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->stringId:I

    add-int v1, v2, v3

    .line 99
    return v1

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v2}, Lcom/google/glass/voice/VoiceCommand;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public matches(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 1
    .parameter "voiceCommand"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onTrigger(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 1
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-static {v0, p2, p1}, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->logMainMenuCommandEvent(Lcom/google/glass/voice/VoiceCommand;ZLcom/google/glass/voice/menu/VoiceMenuEnvironment;)V

    .line 85
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p1, p0, v0}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainMenuCommandItem [command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/StaticCommandMenuItem;->command:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
