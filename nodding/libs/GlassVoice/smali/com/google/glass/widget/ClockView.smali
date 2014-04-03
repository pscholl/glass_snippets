.class public Lcom/google/glass/widget/ClockView;
.super Lcom/google/glass/widget/TypophileTextView;
.source "ClockView.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final timeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ClockView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 24
    sget-object v0, Lcom/google/glass/widget/ClockView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "timeReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ClockView;->timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/TypophileTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/google/glass/widget/ClockView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/ClockView$1;-><init>(Lcom/google/glass/widget/ClockView;)V

    iput-object v0, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 45
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ClockView;->setGravity(I)V

    .line 46
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/ClockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/widget/ClockView;->timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private updateTime()V
    .locals 5

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    .local v0, currentTime:J
    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, v1, v4}, Lcom/google/glass/util/DateHelper;->formattedTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, formattedTime:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/glass/widget/ClockView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onLoad()V
    .locals 6

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.TIME_TICK"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;[Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    .line 53
    return-void
.end method

.method public onUnload()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 57
    return-void
.end method
