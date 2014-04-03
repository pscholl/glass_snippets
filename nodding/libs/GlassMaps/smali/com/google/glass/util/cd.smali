.class final Lcom/google/glass/util/cd;
.super Landroid/speech/tts/UtteranceProgressListener;


# instance fields
.field final synthetic a:Lcom/google/glass/util/cc;


# direct methods
.method constructor <init>(Lcom/google/glass/util/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->a(Lcom/google/glass/util/cc;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->a(Lcom/google/glass/util/cc;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->c(Lcom/google/glass/util/cc;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v1}, Lcom/google/glass/util/cc;->b(Lcom/google/glass/util/cc;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->a(Lcom/google/glass/util/cc;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->a(Lcom/google/glass/util/cc;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->c(Lcom/google/glass/util/cc;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v1}, Lcom/google/glass/util/cc;->b(Lcom/google/glass/util/cc;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->a(Lcom/google/glass/util/cc;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->a(Lcom/google/glass/util/cc;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->c(Lcom/google/glass/util/cc;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-static {v1}, Lcom/google/glass/util/cc;->b(Lcom/google/glass/util/cc;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    const/high16 v2, -0x8000

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/google/glass/util/cc;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Failed to acquire audio focus. Stopping speaking."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/cd;->a:Lcom/google/glass/util/cc;

    invoke-virtual {v0}, Lcom/google/glass/util/cc;->a()V

    :cond_1
    return-void
.end method
