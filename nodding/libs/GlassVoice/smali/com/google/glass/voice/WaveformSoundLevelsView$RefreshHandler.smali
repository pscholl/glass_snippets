.class Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;
.super Landroid/os/Handler;
.source "WaveformSoundLevelsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/WaveformSoundLevelsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshHandler"
.end annotation


# static fields
.field private static final REFRESH_MESSAGE:I


# instance fields
.field private volatile running:Z

.field final synthetic this$0:Lcom/google/glass/voice/WaveformSoundLevelsView;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/WaveformSoundLevelsView;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;->this$0:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/WaveformSoundLevelsView;Lcom/google/glass/voice/WaveformSoundLevelsView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;-><init>(Lcom/google/glass/voice/WaveformSoundLevelsView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;->running:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;->this$0:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->invalidate()V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 110
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;->running:Z

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;->sendEmptyMessage(I)Z

    .line 97
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;->running:Z

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;->removeMessages(I)V

    .line 102
    return-void
.end method
