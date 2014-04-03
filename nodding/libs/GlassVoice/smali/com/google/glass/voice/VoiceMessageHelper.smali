.class public final Lcom/google/glass/voice/VoiceMessageHelper;
.super Ljava/lang/Object;
.source "VoiceMessageHelper.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceInputActivityHelper;


# static fields
.field public static final ACTION_SEND_VOICE_MESSAGE:Ljava/lang/String; = "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

.field public static final EXTRA_MESSAGE_TYPE:Ljava/lang/String; = "MESSAGE_TYPE"

.field public static final EXTRA_REPLY_ALL:Ljava/lang/String; = "REPLY_ALL"

.field public static final EXTRA_REPLY_TO_ID:Ljava/lang/String; = "REPLY_TO_ID"

.field public static final EXTRA_TO_ID:Ljava/lang/String; = "TO_ID"

.field public static final EXTRA_TO_NAME:Ljava/lang/String; = "TO_NAME"

.field public static final MESSAGE_TYPE_EMAIL:I = 0x1

.field public static final MESSAGE_TYPE_GLASSWARE:I = 0x3

.field public static final MESSAGE_TYPE_SMS:I = 0x2

.field public static final MESSAGE_TYPE_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSendMessageIntent(IILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "triggerMethod"
    .parameter "messageType"
    .parameter "toId"
    .parameter "toName"

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, voiceMessageIntent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const-string v1, "MESSAGE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v1, "TO_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "TO_NAME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "should_finish_turn_screen_off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    return-object v0
.end method
