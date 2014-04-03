.class public Lcom/google/glass/voice/MicrophoneView;
.super Lcom/google/glass/voice/AudioInputRelativeLayout;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Lcom/google/glass/voice/BitmapSoundLevelsView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/MicrophoneView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/MicrophoneView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static a(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static b(Landroid/view/View;I)V
    .locals 3

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lcom/google/glass/voice/MicrophoneView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->g()V

    return-void
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/g/b;->pulsing_circle_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->g:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->g:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/glass/voice/s;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/s;-><init>(Lcom/google/glass/voice/MicrophoneView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/voice/MicrophoneView;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    const/16 v2, 0x218

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->e:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/google/glass/voice/MicrophoneView;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->d:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/google/glass/voice/MicrophoneView;->a(Landroid/view/View;I)V

    return-void
.end method

.method private i()V
    .locals 2

    const/16 v1, 0xda

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-static {v0, v1}, Lcom/google/glass/voice/MicrophoneView;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/google/glass/voice/MicrophoneView;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->e:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/google/glass/voice/MicrophoneView;->a(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected final d()V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    sget-object v0, Lcom/google/glass/voice/t;->a:[I

    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneView;->e()Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v4}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->g()V

    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->i()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v4}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->h()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->g:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 1

    sget v0, Lcom/google/glass/g/d;->sound_levels:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/BitmapSoundLevelsView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    sget v0, Lcom/google/glass/g/d;->microphone:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->b:Landroid/widget/ImageView;

    sget v0, Lcom/google/glass/g/d;->red_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->d:Landroid/widget/ImageView;

    sget v0, Lcom/google/glass/g/d;->gray_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->e:Landroid/widget/ImageView;

    sget v0, Lcom/google/glass/g/d;->pulsing_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->f:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->f()V

    return-void
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->c:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setLevelSource(Lcom/google/glass/voice/network/h;)V

    return-void
.end method
