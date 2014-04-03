.class public final Lcom/google/glass/hidden/DonState;
.super Ljava/lang/Object;
.source "DonState.java"


# static fields
.field public static final ACTION_DON_STATE:Ljava/lang/String; = "com.google.glass.action.DON_STATE"

.field public static final EXTRA_IS_DONNED:Ljava/lang/String; = "is_donned"

.field public static final EXTRA_IS_FIRST_DON_STATE:Ljava/lang/String; = "is_first_don_state"

.field public static final EXTRA_TIME_SINCE_LAST_DON_STATE_MS:Ljava/lang/String; = "time_since_last_don_state_ms"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getMillisSinceLastDonStateEvent(Landroid/content/Intent;)J
    .locals 3
    .parameter "intent"

    .prologue
    .line 60
    const-string v0, "time_since_last_don_state_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isDonned(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 39
    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.glass.action.DON_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isDonned(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x1

    .line 45
    if-eqz p0, :cond_0

    const-string v1, "is_donned"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFirstEvent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 50
    const-string v0, "is_first_don_state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
