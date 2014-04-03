.class public Lcom/google/glass/share/ShareActivityHelper;
.super Ljava/lang/Object;
.source "ShareActivityHelper.java"


# static fields
.field public static final EXTRA_ALLOW_VOICE_ANNOTATION:Ljava/lang/String; = "voice_annotation"

.field public static final EXTRA_ANIMATE_TO_TIMELINE:Ljava/lang/String; = "animateToTimelineItem"

.field public static final EXTRA_CHOSEN_SHARE_TARGET:Ljava/lang/String; = "chosen_share_target"

.field public static final EXTRA_CONFIRMED_KEY:Ljava/lang/String; = "confirmed_string"

.field public static final EXTRA_DISABLE_CAMERA_KEY:Ljava/lang/String; = "disable_camera"

.field public static final EXTRA_DISABLE_SELECTION:Ljava/lang/String; = "disable_selection"

.field public static final EXTRA_ORIGIN_LOG_DATA:Ljava/lang/String; = "origin_log_data"

.field public static final EXTRA_PROGRESS_KEY:Ljava/lang/String; = "progress_string"

.field public static final EXTRA_RETURNED_SHARE_TARGET:Ljava/lang/String; = "share_target"

.field public static final EXTRA_SHARE_TARGETS_COUNT:Ljava/lang/String; = "valid_share_target_count"

.field public static final EXTRA_SHARE_TARGETS_PREFIX:Ljava/lang/String; = "valid_share_target"

.field public static final EXTRA_UPDATE_TIMELINE_SHARE:Ljava/lang/String; = "update_timeline_share"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBaseShareActivityIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.glass.home"

    const-string v2, "com.google.glass.share.ShareActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 50
    return-object v0
.end method
