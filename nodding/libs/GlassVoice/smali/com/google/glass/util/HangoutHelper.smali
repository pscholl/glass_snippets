.class public Lcom/google/glass/util/HangoutHelper;
.super Ljava/lang/Object;
.source "HangoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/HangoutHelper$ActiveCardState;
    }
.end annotation


# static fields
.field public static final ACTION_HANGOUTS:Ljava/lang/String; = "com.google.glass.action.HANGOUTS"

.field public static final ACTION_HANGOUT_STATUS:Ljava/lang/String; = "com.google.glass.action.HANGOUT_STATUS"

.field public static final EXTRA_CAMERA_CONSUMED:Ljava/lang/String; = "camera_consumed"

.field public static final EXTRA_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field public static final EXTRA_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final EXTRA_FROM_ACTIVE_CARD:Ljava/lang/String; = "activeCard"

.field public static final EXTRA_HANGOUT_COUNT:Ljava/lang/String; = "hangoutCount"

.field public static final EXTRA_HANGOUT_DISPLAY_IMAGES:Ljava/lang/String; = "displayImages"

.field public static final EXTRA_HANGOUT_DISPLAY_MEMBER:Ljava/lang/String; = "displayMember"

.field public static final EXTRA_HANGOUT_INVITEE:Ljava/lang/String; = "_invitee"

.field public static final EXTRA_HANGOUT_INVITER:Ljava/lang/String; = "inviter"

.field public static final EXTRA_HANGOUT_STATE:Ljava/lang/String; = "hangoutState"

.field public static final EXTRA_INCOMING_ACTION:Ljava/lang/String; = "hangoutAction"

.field public static final EXTRA_INCOMING_SOURCE:Ljava/lang/String; = "hangoutSource"

.field public static final EXTRA_INCOMING_TYPE:Ljava/lang/String; = "hangoutType"

.field public static final EXTRA_INVITED:Ljava/lang/String; = "invited"

.field public static final EXTRA_PARTICIPATING:Ljava/lang/String; = "participating"

.field public static final EXTRA_ROOM_ID:Ljava/lang/String; = "room_id"

.field public static final EXTRA_TIMELINE_ID:Ljava/lang/String; = "timelineItemId"

.field private static final HANGOUT_BASE_URL:Ljava/lang/String; = "https://plus.google.com/hangouts/_/"

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/HangoutHelper;->TAG:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/google/glass/util/HangoutHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/HangoutHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public static buildHangoutUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "roomId"

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://plus.google.com/hangouts/_/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Landroid/content/Intent;
    .locals 3
    .parameter "shareTarget"
    .parameter "shouldTurnScreenOff"

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.HANGOUTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, hangoutIntent:Landroid/content/Intent;
    const-string v1, "_invitee"

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 215
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    return-object v0
.end method


# virtual methods
.method public bringHangoutToForeground()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/util/HangoutHelper;->bringHangoutToForeground(Z)V

    .line 100
    return-void
.end method

.method public bringHangoutToForeground(Z)V
    .locals 4
    .parameter "activeCard"

    .prologue
    .line 111
    sget-object v1, Lcom/google/glass/util/HangoutHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bringing hangout to foreground"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.HANGOUTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, hangoutIntent:Landroid/content/Intent;
    const-string v1, "foreground"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    const-string v1, "activeCard"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public broadcastHangoutExited()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    sget-object v0, Lcom/google/glass/util/HangoutHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Setting participating status to false."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.HANGOUT_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "participating"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "camera_consumed"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public broadcastHangoutJoined()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 128
    sget-object v0, Lcom/google/glass/util/HangoutHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Setting participating status to true."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.HANGOUT_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "participating"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "camera_consumed"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method public isHangoutsUsingCamera()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v2, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.google.glass.action.HANGOUT_STATUS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    .local v0, stickyIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "camera_consumed"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isInHangout()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v2, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.google.glass.action.HANGOUT_STATUS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, stickyIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "participating"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)V
    .locals 6
    .parameter "roomId"
    .parameter "shareTarget"
    .parameter "shouldTurnScreenOff"

    .prologue
    .line 173
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/util/HangoutHelper;->joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ZZLjava/lang/String;)V

    .line 174
    return-void
.end method

.method public joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ZZLjava/lang/String;)V
    .locals 4
    .parameter "roomId"
    .parameter "shareTarget"
    .parameter "shouldTurnScreenOff"
    .parameter "joinFromInvitation"
    .parameter "itemId"

    .prologue
    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Joining Hangout roomId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, logMessage:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    :cond_0
    const/4 v2, 0x3

    sget-object v3, Lcom/google/glass/util/HangoutHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p2, p3}, Lcom/google/glass/util/HangoutHelper;->generateIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Landroid/content/Intent;

    move-result-object v0

    .line 188
    .local v0, hangoutIntent:Landroid/content/Intent;
    const-string v2, "room_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v2, "invited"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    const-string v2, "timelineItemId"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 192
    return-void
.end method

.method public setIsHangoutsUsingCamera(Z)V
    .locals 5
    .parameter "consumed"

    .prologue
    .line 140
    sget-object v1, Lcom/google/glass/util/HangoutHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setting camera as %s."

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v0, "consumed"

    :goto_0
    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.HANGOUT_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "participating"

    invoke-virtual {p0}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "camera_consumed"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 144
    return-void

    .line 140
    :cond_0
    const-string v0, "not consumed"

    goto :goto_0
.end method

.method public startHangout(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)V
    .locals 4
    .parameter "shareTarget"
    .parameter "shouldTurnScreenOff"

    .prologue
    .line 162
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/util/HangoutHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hanging out with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/google/glass/util/HangoutHelper;->context:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/google/glass/util/HangoutHelper;->generateIntent(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method
