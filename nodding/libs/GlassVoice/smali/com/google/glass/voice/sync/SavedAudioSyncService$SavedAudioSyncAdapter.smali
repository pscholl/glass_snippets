.class Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SavedAudioSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/sync/SavedAudioSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedAudioSyncAdapter"
.end annotation


# static fields
.field private static final MINIMUM_SYNC_DELAY_SECONDS:I = 0x3c


# instance fields
.field private final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final handler:Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

.field private final wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 52
    new-instance v0, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->handler:Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

    .line 53
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 54
    new-instance v0, Lcom/google/glass/util/WifiHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/WifiHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 55
    return-void
.end method

.method private isPowered()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v0

    return v0
.end method

.method private isWifiConnected()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 4
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 60
    invoke-static {}, Lcom/google/glass/voice/sync/SavedAudioSyncService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPerformSync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->handler:Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

    invoke-virtual {v0}, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->deleteOldAudio()V

    .line 62
    invoke-direct {p0}, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->isPowered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->handler:Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

    invoke-virtual {v0}, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->shouldRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->handler:Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

    invoke-virtual {v0}, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->syncSavedAudio()V

    .line 66
    :cond_0
    const-wide/16 v0, 0x3c

    iget-object v2, p0, Lcom/google/glass/voice/sync/SavedAudioSyncService$SavedAudioSyncAdapter;->handler:Lcom/google/glass/voice/sync/SavedAudioSyncHandler;

    invoke-virtual {v2}, Lcom/google/glass/voice/sync/SavedAudioSyncHandler;->getDelayRemainingSecs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p5, Landroid/content/SyncResult;->delayUntil:J

    .line 68
    return-void
.end method
