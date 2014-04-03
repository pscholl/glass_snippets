.class final Lcom/google/glass/voice/ac;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/WaveformSoundLevelsView;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/WaveformSoundLevelsView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/ac;->a:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/WaveformSoundLevelsView;Lcom/google/glass/voice/ab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/ac;-><init>(Lcom/google/glass/voice/WaveformSoundLevelsView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/ac;->b:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/ac;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/ac;->b:Z

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/ac;->removeMessages(I)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/glass/voice/ac;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/ac;->a:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->invalidate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/ac;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/voice/ac;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
