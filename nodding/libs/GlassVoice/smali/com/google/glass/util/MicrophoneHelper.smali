.class public final Lcom/google/glass/util/MicrophoneHelper;
.super Ljava/lang/Object;
.source "MicrophoneHelper.java"


# static fields
.field public static final ACTION_MICROPHONE_STATE_CHANGED:Ljava/lang/String; = "com.google.glass.action.MICROPHONE_STATE_CHANGED"

.field public static final ACTION_TOGGLE_MICROPHONE_MUTE:Ljava/lang/String; = "com.google.glass.action.TOGGLE_MICROPHONE_MUTE"

.field public static final EXTRA_MICROPHONE_MUTED:Ljava/lang/String; = "is_mute"

.field public static final MENU_ITEM_MUTE:Ljava/lang/String; = "mute_id"

.field public static final OPTION_MENU_ITEM_STATE_MUTE:I = 0x0

.field public static final OPTION_MENU_ITEM_STATE_UNMUTE:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method private static broadcastStateChanged(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isMute"

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.MICROPHONE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "is_mute"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public static isMuted(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 60
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    return v1
.end method

.method public static mute(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/glass/util/MicrophoneHelper;->setMute(Landroid/content/Context;Z)V

    .line 35
    return-void
.end method

.method private static setMute(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "mute"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 76
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 78
    invoke-static {p0, p1}, Lcom/google/glass/util/MicrophoneHelper;->broadcastStateChanged(Landroid/content/Context;Z)V

    .line 79
    return-void
.end method

.method public static toggleMute(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-static {p0}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/google/glass/util/MicrophoneHelper;->unmute(Landroid/content/Context;)V

    .line 53
    :goto_0
    invoke-static {p0}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/google/glass/util/MicrophoneHelper;->mute(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static unmute(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/util/MicrophoneHelper;->setMute(Landroid/content/Context;Z)V

    .line 40
    return-void
.end method

.method public static updateOptionMenuItem(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu$Item;)V
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu$Item;->setCurrentState(I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu$Item;->setCurrentState(I)V

    goto :goto_0
.end method
