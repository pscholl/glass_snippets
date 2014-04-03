.class public Lcom/google/glass/timeline/TimelineActivityHelper;
.super Ljava/lang/Object;
.source "TimelineActivityHelper.java"


# static fields
.field public static final ACTION_ENTITY_TIMELINE:Ljava/lang/String; = "com.google.glass.ACTION_ENTITY_TIMELINE"

.field public static final ACTION_GO_TO_BUNDLE:Ljava/lang/String; = "com.google.glass.ACTION_GO_TO_BUNDLE"

.field public static final ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String; = "com.google.glass.ACTION_NOTIFICATION_RECEIVED"

.field public static final ACTION_PLAY_VIDEO:Ljava/lang/String; = "com.google.glass.action.VIDEOPLAYER"

.field public static final ACTION_READ_MORE_HTML:Ljava/lang/String; = "com.google.glass.ACTION_READ_MORE_HTML"

.field public static final ACTION_READ_MORE_TEXT:Ljava/lang/String; = "com.google.glass.ACTION_READ_MORE_TEXT"

.field public static final ACTION_REVEAL_CARD:Ljava/lang/String; = "com.google.android.glass.action.REVEAL_CARD"

.field public static final EXTRA_ANIMATE_TO_ITEM:Ljava/lang/String; = "animate"

.field public static final EXTRA_ENTITY_IMAGE:Ljava/lang/String; = "entityImage"

.field public static final EXTRA_FILTER_ENTITY:Ljava/lang/String; = "filterEntity"

.field public static final EXTRA_IS_NOTIFICATION:Ljava/lang/String; = "is_notification"

.field public static final EXTRA_SHOW_VOICE_MENU:Ljava/lang/String; = "show_voice_menu"

.field public static final EXTRA_SWIPED_TO_BACKGROUND:Ljava/lang/String; = "swipedToBackground"

.field public static final EXTRA_SWIPE_SOURCE:Ljava/lang/String; = "swipeSource"

.field public static final EXTRA_TIMELINE_BROADCAST_TIMELINE_ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final EXTRA_TIMELINE_BUNDLE_ITEM:Ljava/lang/String; = "bundle_item"

.field public static final EXTRA_TIMELINE_BUNDLE_ITEM_ID:Ljava/lang/String; = "bundle_item_id"

.field public static final EXTRA_TIMELINE_CREATOR:Ljava/lang/String; = "creator"

.field public static final EXTRA_TIMELINE_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_TIMELINE_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final EXTRA_TIMELINE_MENU_ITEM_ID:Ljava/lang/String; = "menu_item_id"

.field public static final EXTRA_TIMELINE_SHARE_TARGET_COUNT:Ljava/lang/String; = "share_target_count"

.field public static final EXTRA_TIMELINE_SHARE_TARGET_PREFIX:Ljava/lang/String; = "share_target"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShareTargetExtraKey(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share_target"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static goToBundle(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZZ)V
    .locals 3
    .parameter "context"
    .parameter "item"
    .parameter "id"
    .parameter "isNotification"
    .parameter "shouldShowVoiceMenuImmediately"

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_GO_TO_BUNDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    if-eqz p1, :cond_0

    .line 194
    const-string v1, "item"

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 196
    :cond_0
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 197
    const-string v1, "is_notification"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    const-string v1, "show_voice_menu"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method public static goToEntityTimeline(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "context"
    .parameter "entity"
    .parameter "existingEntityImage"

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_ENTITY_TIMELINE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "filterEntity"

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method public static goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "animate"

    .prologue
    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 144
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 146
    :cond_0
    const-string v1, "animate"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 148
    return-void
.end method

.method public static goToTimelineHome(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 135
    return-void
.end method

.method public static goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 162
    const-string v1, "animate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    :cond_0
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method public static playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "extra"
    .parameter "value"

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.VIDEOPLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 238
    return-void
.end method

.method public static readMoreHtml(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_READ_MORE_HTML"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 226
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method public static readMoreText(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_READ_MORE_TEXT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public static swipeToTimeline(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Lcom/google/glass/input/SwipeDirection;)V
    .locals 2
    .parameter "context"
    .parameter "type"
    .parameter "direction"

    .prologue
    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "swipedToBackground"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 126
    const-string v1, "swipeSource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 127
    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimelineWithExtras(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 128
    return-void
.end method
