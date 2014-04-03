.class Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;
.super Landroid/os/Handler;
.source "BitmapSoundLevelsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/BitmapSoundLevelsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshHandler"
.end annotation


# static fields
.field private static final INTERVAL_MS:I = 0xa

.field private static final REFRESH_MESSAGE:I


# instance fields
.field private volatile running:Z

.field final synthetic this$0:Lcom/google/glass/voice/BitmapSoundLevelsView;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/BitmapSoundLevelsView;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->this$0:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/BitmapSoundLevelsView;Lcom/google/glass/voice/BitmapSoundLevelsView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;-><init>(Lcom/google/glass/voice/BitmapSoundLevelsView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->running:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->this$0:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->invalidate()V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 78
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->running:Z

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->sendEmptyMessage(I)Z

    .line 65
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->running:Z

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->removeMessages(I)V

    .line 70
    return-void
.end method
