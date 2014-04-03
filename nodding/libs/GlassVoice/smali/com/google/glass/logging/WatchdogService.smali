.class public Lcom/google/glass/logging/WatchdogService;
.super Landroid/app/IntentService;
.source "WatchdogService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private watchdog:Lcom/google/glass/logging/Watchdog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/google/glass/logging/WatchdogService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/WatchdogService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/logging/WatchdogService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 26
    new-instance v0, Lcom/google/glass/logging/Watchdog;

    invoke-direct {v0, p0}, Lcom/google/glass/logging/Watchdog;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/google/glass/logging/WatchdogService;->watchdog:Lcom/google/glass/logging/Watchdog;

    .line 27
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/logging/WatchdogService;->watchdog:Lcom/google/glass/logging/Watchdog;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/glass/logging/WatchdogService;->watchdog:Lcom/google/glass/logging/Watchdog;

    invoke-virtual {v0}, Lcom/google/glass/logging/Watchdog;->watch()V

    .line 36
    :cond_0
    return-void
.end method
