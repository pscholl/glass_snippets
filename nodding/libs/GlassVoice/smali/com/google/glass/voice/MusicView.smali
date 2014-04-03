.class public Lcom/google/glass/voice/MusicView;
.super Lcom/google/glass/voice/AudioInputRelativeLayout;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/MusicView$1;
    }
.end annotation


# instance fields
.field private blueCircle:Landroid/widget/ImageView;

.field private soundLevels:Lcom/google/glass/voice/WaveformSoundLevelsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/google/glass/voiceclient/R$id;->sound_levels:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/WaveformSoundLevelsView;

    iput-object v0, p0, Lcom/google/glass/voice/MusicView;->soundLevels:Lcom/google/glass/voice/WaveformSoundLevelsView;

    .line 40
    sget v0, Lcom/google/glass/voiceclient/R$id;->blue_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MusicView;->blueCircle:Landroid/widget/ImageView;

    .line 41
    return-void
.end method

.method protected onStateChanged()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 45
    sget-object v0, Lcom/google/glass/voice/MusicView$1;->$SwitchMap$com$google$glass$voice$AudioInputRelativeLayout$State:[I

    invoke-virtual {p0}, Lcom/google/glass/voice/MusicView;->getState()Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->soundLevels:Lcom/google/glass/voice/WaveformSoundLevelsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->soundLevels:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->blueCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->blueCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->soundLevels:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setEnabled(Z)V

    .line 54
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->soundLevels:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->soundLevels:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->soundLevels:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->soundLevels:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 35
    return-void
.end method
