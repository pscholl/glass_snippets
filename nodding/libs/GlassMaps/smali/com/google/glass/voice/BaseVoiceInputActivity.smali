.class public abstract Lcom/google/glass/voice/BaseVoiceInputActivity;
.super Lcom/google/glass/app/GlassVoiceActivity;


# static fields
.field private static final i:J


# instance fields
.field protected c:Ljava/lang/CharSequence;

.field protected d:I

.field protected e:J

.field protected f:Lcom/google/glass/widget/TypophileTextView;

.field protected final g:Landroid/os/Handler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected final h:Lcom/google/glass/voice/network/d;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:J

.field private o:J

.field private p:Lcom/google/glass/voice/AudioInputRelativeLayout;

.field private q:Lcom/google/glass/voice/StreamingTextView;

.field private r:Lcom/google/glass/widget/SliderView;

.field private s:Lcom/google/glass/util/bj;

.field private t:I

.field private u:I

.field private final v:Lcom/google/glass/logging/i;

.field private final w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManager$SoundId;->getDuration()I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v0, v0

    sput-wide v0, Lcom/google/glass/voice/BaseVoiceInputActivity;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    iput-boolean v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->c:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->k:Z

    iput-boolean v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->l:Z

    iput-boolean v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->m:Z

    new-instance v0, Lcom/google/glass/voice/a;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/a;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "voiceInputCallback"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->v:Lcom/google/glass/logging/i;

    new-instance v0, Lcom/google/glass/voice/b;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/b;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->h:Lcom/google/glass/voice/network/d;

    new-instance v0, Lcom/google/glass/voice/c;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/c;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->w:Ljava/lang/Runnable;

    return-void
.end method

.method private static A()I
    .locals 1

    sget v0, Lcom/google/glass/g/d;->microphone_container:I

    return v0
.end method

.method private B()V
    .locals 4

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->C()Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/google/glass/g/d;->initial_selected_voice_command_text:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    sget v1, Lcom/google/glass/g/d;->final_selected_voice_command_text:I

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->A()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/AudioInputRelativeLayout;

    iput-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    sget v2, Lcom/google/glass/g/d;->voice_input_prompt:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    iput-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->f:Lcom/google/glass/widget/TypophileTextView;

    sget v2, Lcom/google/glass/g/d;->streaming_text:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/StreamingTextView;

    iput-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    sget v2, Lcom/google/glass/g/d;->progress_slider:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/SliderView;

    iput-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->r:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->D()V

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->c()V

    new-instance v0, Lcom/google/glass/voice/network/SpeechException;

    const/4 v1, 0x0

    const-string v2, "AbortNoConnectivity"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/network/SpeechException;-><init>(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->c(Lcom/google/glass/voice/network/SpeechException;)V

    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/g/f;->voice_network_connectivity:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->a(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/g/f;->error_tap_connection_settings:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->b(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/g/c;->ic_cloud_sad_big:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->c(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->a(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget-object v1, Lcom/google/glass/app/GlassError$OnConfirmAction;->GO_TO_SETTINGS:Lcom/google/glass/app/GlassError$OnConfirmAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->a(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/app/GlassError;->a(Lcom/google/glass/app/GlassActivity;)V

    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->H()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setAlpha(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/d;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/voice/d;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/widget/TypophileTextView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_1
    new-instance v0, Lcom/google/glass/util/bj;

    invoke-direct {v0, p0}, Lcom/google/glass/util/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->s:Lcom/google/glass/util/bj;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->G()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private C()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->f()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private D()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->c()V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->r:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->b()V

    iput-boolean v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->m:Z

    iput-boolean v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->c:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->k:Z

    return-void
.end method

.method private E()V
    .locals 8

    const-wide/16 v6, -0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->r:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v2}, Lcom/google/glass/widget/SliderView;->b()V

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v2, v4}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->f:Lcom/google/glass/widget/TypophileTextView;

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->F()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v2}, Lcom/google/glass/voice/AudioInputRelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->f:Lcom/google/glass/widget/TypophileTextView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    new-instance v3, Lcom/google/glass/voice/e;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/e;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->e:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    const-string v2, "l"

    iget-wide v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->e:J

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "m"

    aput-object v3, v1, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v0, v1}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->START_LISTENING_DELAY:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    iput v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    iput-wide v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->e:J

    :goto_1
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->a()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->f:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v2}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->f:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v2}, Lcom/google/glass/voice/AudioInputRelativeLayout;->b()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We have no idea when the trigger method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was initiated."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private F()Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->T()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must provide prompt text or ID."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private G()Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->U()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must provide input type text or ID."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private H()Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->V()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private I()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->a()V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/StreamingTextView;->a()V

    :cond_0
    return-void
.end method

.method private J()V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->K()V

    return-void
.end method

.method private K()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->o:J

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->c()V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->f:Lcom/google/glass/widget/TypophileTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    sub-long/2addr v0, v2

    const-string v2, "id"

    iget-wide v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "time"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v1, "type"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->z()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "trigger"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method private static L()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private M()V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->N()V

    return-void
.end method

.method private N()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "No-speech error to display, but error already on screen"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->c()V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->r:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->b()V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "id"

    iget-wide v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "recognition"

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->l:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->z()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "trigger"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/g/f;->error_no_speech_detected:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->a(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/g/f;->error_tap_speak_again:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->b(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/g/c;->ic_exclamation_big:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->c(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/glass/app/GlassError;->a(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->a(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/app/GlassError;->a(Lcom/google/glass/app/GlassActivity;)V

    goto :goto_0
.end method

.method private O()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->c()V

    iget-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->j:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Error to display, but error already on screen"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->r:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->b()V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    sub-long/2addr v0, v2

    const-string v2, "id"

    iget-wide v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "query"

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->c:Ljava/lang/CharSequence;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "time"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x4

    const-string v1, "type"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->z()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "trigger"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    iget v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_SEARCH_NO_ANSWER:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/g/f;->voice_search_no_answer:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->a(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/g/c;->ic_cloud_sad_big:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->c(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/glass/app/GlassError;->a(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/glass/app/GlassError;->b(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/app/GlassError;->a(Lcom/google/glass/app/GlassActivity;)V

    goto :goto_0
.end method

.method private P()I
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static Q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static R()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static T()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static U()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static V()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/glass/voice/aa;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/h;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/h;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/g;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/voice/g;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->E()V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/a/a/a/d;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/SpeechException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/network/SpeechException;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/network/a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Ljava/lang/CharSequence;F)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/BaseVoiceInputActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/BaseVoiceInputActivity;[B)V
    .locals 0

    return-void
.end method

.method private a(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->b(Lcom/google/glass/voice/network/SpeechException;)V

    return-void
.end method

.method private a(Lcom/google/glass/voice/network/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    new-instance v1, Lcom/google/glass/voice/f;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/f;-><init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/a;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/AudioInputRelativeLayout;->setSpeechLevelSource(Lcom/google/glass/voice/network/h;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;F)V
    .locals 11

    const/16 v10, 0xa

    const/16 v9, 0x8

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->c:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->f:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0, v9}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v0, v8}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/StreamingTextView;->setFinalRecognizedText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->r:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->a()V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->o:J

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->S()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-wide v4, Lcom/google/glass/voice/BaseVoiceInputActivity;->i:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_RESULT:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    :cond_1
    const-string v4, "id"

    iget-wide v5, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "confidence"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "network"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->P()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "time_total"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x6

    const-string v1, "time_from_eos"

    aput-object v1, v6, v0

    const/4 v0, 0x7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "type"

    aput-object v0, v6, v9

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->z()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "trigger"

    aput-object v0, v6, v10

    const/16 v0, 0xb

    iget v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->t:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->r:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->b()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-boolean v7, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->l:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->f:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v2}, Lcom/google/glass/widget/TypophileTextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->f:Lcom/google/glass/widget/TypophileTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v2, v6}, Lcom/google/glass/voice/StreamingTextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->q:Lcom/google/glass/voice/StreamingTextView;

    invoke-virtual {v2, v0, v1}, Lcom/google/glass/voice/StreamingTextView;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->k:Z

    if-eqz v0, :cond_3

    iput-boolean v6, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    sub-long/2addr v0, v2

    const-string v2, "id"

    iget-wide v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "time"

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x2

    const-string v1, "type"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->z()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "trigger"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_FIRST_RECOGNITION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    :cond_3
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->u:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->j:Z

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    :goto_0
    iget-wide v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    iget-wide v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->o:J

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/glass/voice/BaseVoiceInputActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->m:Z

    return p1
.end method

.method private b(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->s:Lcom/google/glass/util/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->s:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->I()V

    return-void
.end method

.method static synthetic b(Lcom/google/glass/voice/BaseVoiceInputActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->c(I)V

    return-void
.end method

.method private b(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Received error while already showing error on screen: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->c(Lcom/google/glass/voice/network/SpeechException;)V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->c()V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->f:Lcom/google/glass/widget/TypophileTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->g:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->r:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->b()V

    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    invoke-static {p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->d(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->a(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-static {p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->e(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->b(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-static {p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->f(Lcom/google/glass/voice/network/SpeechException;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->c(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/glass/app/GlassError;->a(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->g(Lcom/google/glass/voice/network/SpeechException;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->a(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/app/GlassError;->a(Lcom/google/glass/app/GlassActivity;)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->f()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->f()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic c(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->J()V

    return-void
.end method

.method private c(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    sub-long/2addr v0, v2

    const-string v2, "id"

    iget-wide v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "error"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "detail"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "network"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->P()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "time"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/16 v0, 0x8

    const-string v1, "type"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->z()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0xa

    const-string v1, "trigger"

    aput-object v1, v4, v0

    const/16 v0, 0xb

    iget v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Lcom/google/glass/voice/network/SpeechException;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->a()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/glass/g/f;->voice_input_network_error:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->a()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/google/glass/g/f;->voice_input_no_match:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->a()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/google/glass/g/f;->voice_input_audio_error:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/google/glass/g/f;->voice_input_server_error:I

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->M()V

    return-void
.end method

.method private static e(Lcom/google/glass/voice/network/SpeechException;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->a()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->a()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Lcom/google/glass/g/f;->error_tap_speak_again:I

    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/google/glass/g/f;->error_tap_connection_settings:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0

    return-void
.end method

.method private static f(Lcom/google/glass/voice/network/SpeechException;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/voice/network/SpeechException;->a()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/glass/g/c;->ic_exclamation_big:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/glass/g/c;->ic_cloud_sad_big:I

    goto :goto_0
.end method

.method static synthetic f(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->O()V

    return-void
.end method

.method static synthetic g(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/widget/SliderView;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->r:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method private g(Lcom/google/glass/voice/network/SpeechException;)Ljava/lang/Runnable;
    .locals 2

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->a()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->a()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->w:Ljava/lang/Runnable;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/glass/util/bw;->a(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/logging/i;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->v:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic i(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->D()V

    return-void
.end method

.method static synthetic j(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/voice/AudioInputRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->p:Lcom/google/glass/voice/AudioInputRelativeLayout;

    return-object v0
.end method

.method protected static x()Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1

    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    const-string v0, "id"

    iget-wide v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->n:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->z()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "trigger"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->p()V

    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onResume()V

    invoke-direct {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->B()V

    return-void
.end method

.method protected onStart()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onStart()V

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "should_play_initial_sound"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->x()Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "trigger_method"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    const-string v1, "trigger_time"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->e:J

    :goto_0
    iget v0, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(I)V

    return-void

    :cond_1
    iput v3, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->d:I

    iput-wide v4, p0, Lcom/google/glass/voice/BaseVoiceInputActivity;->e:J

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->finish()V

    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onStop()V

    return-void
.end method

.method protected abstract y()Lcom/google/glass/voice/VoiceConfig;
.end method

.method protected abstract z()I
.end method
