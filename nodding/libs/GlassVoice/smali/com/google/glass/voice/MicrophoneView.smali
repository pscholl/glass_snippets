.class public Lcom/google/glass/voice/MicrophoneView;
.super Lcom/google/glass/voice/AudioInputRelativeLayout;
.source "MicrophoneView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/MicrophoneView$2;
    }
.end annotation


# static fields
.field private static final OPENING_TIME_MS:I = 0xda

.field private static final RED_MIC_FADE_IN_TIME:I = 0x218

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private grayCircle:Landroid/widget/ImageView;

.field private microphone:Landroid/widget/ImageView;

.field private pulseAnim:Landroid/view/animation/Animation;

.field private pulsingCircle:Landroid/widget/ImageView;

.field private redCircle:Landroid/widget/ImageView;

.field private soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/MicrophoneView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/MicrophoneView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/MicrophoneView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->startPulsingAnimation()V

    return-void
.end method

.method private setupPulsingAnimation()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/voiceclient/R$anim;->pulsing_circle_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    .line 63
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/glass/voice/MicrophoneView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/MicrophoneView$1;-><init>(Lcom/google/glass/voice/MicrophoneView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 78
    return-void
.end method

.method private startFadeInAnimation(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "duration"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 92
    return-void
.end method

.method private startFadeOutAnimation(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "duration"

    .prologue
    .line 95
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 97
    return-void
.end method

.method private startOpeningAnimation()V
    .locals 2

    .prologue
    const/16 v1, 0xda

    .line 113
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/MicrophoneView;->startFadeInAnimation(Landroid/view/View;I)V

    .line 114
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/MicrophoneView;->startFadeInAnimation(Landroid/view/View;I)V

    .line 115
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/MicrophoneView;->startFadeInAnimation(Landroid/view/View;I)V

    .line 116
    return-void
.end method

.method private startPulsingAnimation()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 86
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    goto :goto_0
.end method

.method private startRedCircleAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0x218

    .line 104
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/glass/voice/MicrophoneView;->startFadeOutAnimation(Landroid/view/View;I)V

    .line 106
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/glass/voice/MicrophoneView;->startFadeInAnimation(Landroid/view/View;I)V

    .line 107
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/google/glass/voiceclient/R$id;->sound_levels:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/BitmapSoundLevelsView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    .line 54
    sget v0, Lcom/google/glass/voiceclient/R$id;->microphone:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/google/glass/voiceclient/R$id;->red_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/google/glass/voiceclient/R$id;->gray_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/google/glass/voiceclient/R$id;->pulsing_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    .line 58
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->setupPulsingAnimation()V

    .line 59
    return-void
.end method

.method protected onStateChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 120
    sget-object v0, Lcom/google/glass/voice/MicrophoneView$2;->$SwitchMap$com$google$glass$voice$AudioInputRelativeLayout$State:[I

    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneView;->getState()Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v4}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->startPulsingAnimation()V

    .line 136
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->startOpeningAnimation()V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v4}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->startRedCircleAnimation()V

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 155
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    goto/16 :goto_0

    .line 159
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 120
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

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 49
    return-void
.end method
