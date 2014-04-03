.class public Lcom/google/glass/logging/HeadsetPlugService;
.super Landroid/app/Service;
.source "HeadsetPlugService.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final receiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final receiver:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/HeadsetPlugService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 20
    sget-object v0, Lcom/google/glass/logging/HeadsetPlugService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "receiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/HeadsetPlugService;->receiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Lcom/google/glass/logging/HeadsetPlugService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/logging/HeadsetPlugService$1;-><init>(Lcom/google/glass/logging/HeadsetPlugService;)V

    iput-object v0, p0, Lcom/google/glass/logging/HeadsetPlugService;->receiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/logging/HeadsetPlugService;->receiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    iget-object v0, p0, Lcom/google/glass/logging/HeadsetPlugService;->receiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.HEADSET_PLUG"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/logging/HeadsetPlugService;->receiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 76
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 77
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 69
    sget-object v0, Lcom/google/glass/logging/HeadsetPlugService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Service has started."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
