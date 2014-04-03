.class public Lcom/google/glass/util/cc;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private final c:Landroid/speech/tts/TextToSpeech;

.field private final d:Ljava/util/HashMap;

.field private final e:Landroid/media/AudioManager;

.field private final f:Landroid/speech/tts/UtteranceProgressListener;

.field private final g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private h:Z

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/String;

.field private k:Landroid/speech/tts/UtteranceProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/util/cc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/cc;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/util/cc;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/cc;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/util/cd;

    invoke-direct {v0, p0}, Lcom/google/glass/util/cd;-><init>(Lcom/google/glass/util/cc;)V

    iput-object v0, p0, Lcom/google/glass/util/cc;->f:Landroid/speech/tts/UtteranceProgressListener;

    new-instance v0, Lcom/google/glass/util/ce;

    invoke-direct {v0, p0}, Lcom/google/glass/util/ce;-><init>(Lcom/google/glass/util/cc;)V

    iput-object v0, p0, Lcom/google/glass/util/cc;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/glass/util/cc;->e:Landroid/media/AudioManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/cc;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/glass/util/cc;->d:Ljava/util/HashMap;

    const-string v1, "utteranceId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/glass/util/cc;->b:Lcom/google/glass/logging/i;

    const-string v1, "Initializing TextToSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/google/glass/util/cf;

    invoke-direct {v1, p0}, Lcom/google/glass/util/cf;-><init>(Lcom/google/glass/util/cc;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/glass/util/cc;->c:Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/google/glass/util/cc;->c:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/glass/util/cc;->f:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method

.method static synthetic a(Lcom/google/glass/util/cc;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/cc;->k:Landroid/speech/tts/UtteranceProgressListener;

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/util/cc;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/cc;->i:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/google/glass/util/cc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/util/cc;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/google/glass/util/cc;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/cc;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic b()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/util/cc;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic c(Lcom/google/glass/util/cc;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/cc;->e:Landroid/media/AudioManager;

    return-object v0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/cc;->c:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/google/glass/util/cc;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/cc;->i:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/glass/util/cc;->h:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/glass/util/cc;->b:Lcom/google/glass/logging/i;

    const-string v1, "TTS not yet initialized, not calling stop"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/cc;->i:Ljava/lang/Runnable;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/glass/voice/network/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/glass/a/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/ch;

    invoke-direct {v1, p0}, Lcom/google/glass/util/ch;-><init>(Lcom/google/glass/util/cc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/glass/util/cc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/util/cc;->b:Lcom/google/glass/logging/i;

    const-string v1, "Stopping speaking"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/cc;->c:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/util/cc;->a(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/google/glass/util/cc;->j:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/google/glass/util/cc;->h:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/cc;->b:Lcom/google/glass/logging/i;

    const-string v1, "TTS not yet initialized, queuing up text"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/util/cc;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queued up text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/google/glass/logging/o;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/glass/util/cg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/util/cg;-><init>(Lcom/google/glass/util/cc;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    iput-object v0, p0, Lcom/google/glass/util/cc;->i:Ljava/lang/Runnable;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/cc;->a()V

    sget-object v0, Lcom/google/glass/util/cc;->b:Lcom/google/glass/logging/i;

    const-string v1, "TTS is ready, speaking text"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/google/glass/util/cc;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Speaking text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/google/glass/logging/o;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/glass/util/cc;->k:Landroid/speech/tts/UtteranceProgressListener;

    iget-object v0, p0, Lcom/google/glass/util/cc;->c:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/glass/util/cc;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v3, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0
.end method
