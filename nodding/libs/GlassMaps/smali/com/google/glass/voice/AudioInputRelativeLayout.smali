.class public abstract Lcom/google/glass/voice/AudioInputRelativeLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Lcom/google/glass/voice/AudioInputRelativeLayout$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->RECORDING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    iput-object v0, p0, Lcom/google/glass/voice/AudioInputRelativeLayout;->a:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    invoke-virtual {p0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->d()V

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    iput-object v0, p0, Lcom/google/glass/voice/AudioInputRelativeLayout;->a:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    invoke-virtual {p0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->d()V

    return-void
.end method

.method public final c()V
    .locals 1

    sget-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->NOT_LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    iput-object v0, p0, Lcom/google/glass/voice/AudioInputRelativeLayout;->a:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    invoke-virtual {p0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->d()V

    return-void
.end method

.method protected abstract d()V
.end method

.method public final e()Lcom/google/glass/voice/AudioInputRelativeLayout$State;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/glass/voice/AudioInputRelativeLayout;->a:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    return-object v0
.end method

.method public abstract setSpeechLevelSource(Lcom/google/glass/voice/network/h;)V
.end method
