.class public Lcom/google/glass/voice/MusicView;
.super Lcom/google/glass/voice/AudioInputRelativeLayout;


# instance fields
.field private a:Lcom/google/glass/voice/WaveformSoundLevelsView;

.field private b:Landroid/widget/ImageView;


# direct methods
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


# virtual methods
.method protected final d()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    sget-object v0, Lcom/google/glass/voice/u;->a:[I

    invoke-virtual {p0}, Lcom/google/glass/voice/MusicView;->e()Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->a:Lcom/google/glass/voice/WaveformSoundLevelsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->a:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->a:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->a:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->a:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->a:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 1

    sget v0, Lcom/google/glass/g/d;->sound_levels:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/WaveformSoundLevelsView;

    iput-object v0, p0, Lcom/google/glass/voice/MusicView;->a:Lcom/google/glass/voice/WaveformSoundLevelsView;

    sget v0, Lcom/google/glass/g/d;->blue_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MusicView;->b:Landroid/widget/ImageView;

    return-void
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/MusicView;->a:Lcom/google/glass/voice/WaveformSoundLevelsView;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/WaveformSoundLevelsView;->setLevelSource(Lcom/google/glass/voice/network/h;)V

    return-void
.end method
