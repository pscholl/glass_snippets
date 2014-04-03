.class final Lcom/google/glass/voice/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/BitmapSoundLevelsView;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/BitmapSoundLevelsView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/j;->a:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/BitmapSoundLevelsView;Lcom/google/glass/voice/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/j;-><init>(Lcom/google/glass/voice/BitmapSoundLevelsView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/j;->b:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/j;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/j;->b:Z

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/j;->removeMessages(I)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/glass/voice/j;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/j;->a:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->invalidate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/j;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/voice/j;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
