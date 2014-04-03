.class public Lcom/google/glass/widget/VolumeControlDialog;
.super Landroid/app/Dialog;
.source "VolumeControlDialog.java"

# interfaces
.implements Lcom/google/glass/input/InputListener;
.implements Lcom/google/glass/widget/ValueSlider$Listener;


# static fields
.field public static final HIGH_VOLUME_RATIO:F = 0.5f

.field private static final HORIZONTAL_SCROLL_DAMPER:F = 0.5f

.field private static final PLAY_DING_DELAY_MILLIS:J = 0x64L

.field private static final headsetPlugReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private headsetState:I

.field private playDingRunnable:Ljava/lang/Runnable;

.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field private touchDetector:Lcom/google/glass/input/TouchDetector;

.field private tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

.field private valueSlider:Lcom/google/glass/widget/ValueSlider;

.field private volumeHelper:Lcom/google/glass/sound/VolumeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/VolumeControlDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    sget-object v0, Lcom/google/glass/widget/VolumeControlDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "headsetPlugReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/VolumeControlDialog;->headsetPlugReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;Landroid/media/AudioManager;)V
    .locals 3
    .parameter "context"
    .parameter "soundManager"
    .parameter "audioManager"

    .prologue
    .line 85
    sget v1, Lcom/google/glass/common/R$style;->ContextualDialogTheme:I

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    new-instance v1, Lcom/google/glass/widget/VolumeControlDialog$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/VolumeControlDialog$1;-><init>(Lcom/google/glass/widget/VolumeControlDialog;)V

    iput-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 60
    new-instance v1, Lcom/google/glass/widget/VolumeControlDialog$2;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/VolumeControlDialog$2;-><init>(Lcom/google/glass/widget/VolumeControlDialog;)V

    iput-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->playDingRunnable:Ljava/lang/Runnable;

    .line 87
    iput-object p2, p0, Lcom/google/glass/widget/VolumeControlDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 89
    new-instance v1, Lcom/google/glass/sound/VolumeHelper;

    invoke-direct {v1, p1, p3}, Lcom/google/glass/sound/VolumeHelper;-><init>(Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->volumeHelper:Lcom/google/glass/sound/VolumeHelper;

    .line 90
    new-instance v1, Lcom/google/glass/input/TouchDetector;

    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/glass/input/TouchDetector;-><init>(Landroid/content/Context;Lcom/google/glass/input/InputListener;)V

    iput-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    .line 93
    sget v1, Lcom/google/glass/common/R$layout;->volume_control_dialog:I

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/VolumeControlDialog;->setContentView(I)V

    .line 94
    sget v1, Lcom/google/glass/common/R$id;->tuggable_view:I

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/VolumeControlDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    iput-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    .line 95
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v1}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->activate()V

    .line 98
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;

    invoke-direct {v0, p1}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, frameLayoutCard:Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;
    new-instance v1, Lcom/google/glass/widget/ValueSlider;

    invoke-direct {v1, p1}, Lcom/google/glass/widget/ValueSlider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    .line 100
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;->addView(Landroid/view/View;)V

    .line 101
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->setView(Landroid/view/View;)V

    .line 104
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v1, p0}, Lcom/google/glass/widget/ValueSlider;->addListener(Lcom/google/glass/widget/ValueSlider$Listener;)V

    .line 105
    invoke-static {p1}, Lcom/google/glass/sound/VolumeHelper;->getHeadsetState(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/glass/widget/VolumeControlDialog;->initSlider(I)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/VolumeControlDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/glass/widget/VolumeControlDialog;->initSlider(I)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/widget/VolumeControlDialog;->headsetPlugReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/widget/VolumeControlDialog;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method private initSlider(I)V
    .locals 8
    .parameter "headsetState"

    .prologue
    .line 109
    sget-object v3, Lcom/google/glass/widget/VolumeControlDialog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Initializing slider with headset state: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iput p1, p0, Lcom/google/glass/widget/VolumeControlDialog;->headsetState:I

    .line 112
    iget-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->volumeHelper:Lcom/google/glass/sound/VolumeHelper;

    invoke-virtual {v3, p1}, Lcom/google/glass/sound/VolumeHelper;->readAudioVolume(I)I

    move-result v2

    .line 113
    .local v2, volume:I
    invoke-static {p1}, Lcom/google/glass/sound/VolumeHelper;->getNumVolumeValues(I)I

    move-result v0

    .line 114
    .local v0, numValues:I
    new-instance v1, Lcom/google/glass/widget/VolumeControlDialog$3;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/widget/VolumeControlDialog$3;-><init>(Lcom/google/glass/widget/VolumeControlDialog;I)V

    .line 122
    .local v1, valueToIconResource:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    sget v4, Lcom/google/glass/common/R$drawable;->ic_volume_2_large:I

    invoke-virtual {v3, v1, v4, v0, v2}, Lcom/google/glass/widget/ValueSlider;->init(Ljava/util/Map;III)V

    .line 123
    return-void
.end method

.method private logVolume(Lcom/google/glass/userevent/UserEventAction;)V
    .locals 7
    .parameter "action"

    .prologue
    const/high16 v5, 0x42c8

    .line 143
    iget-object v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->volumeHelper:Lcom/google/glass/sound/VolumeHelper;

    iget v4, p0, Lcom/google/glass/widget/VolumeControlDialog;->headsetState:I

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/VolumeHelper;->readAudioVolume(I)I

    move-result v3

    int-to-float v2, v3

    .line 144
    .local v2, volume:F
    iget v3, p0, Lcom/google/glass/widget/VolumeControlDialog;->headsetState:I

    invoke-static {v3}, Lcom/google/glass/sound/VolumeHelper;->getNumVolumeValues(I)I

    move-result v3

    int-to-float v0, v3

    .line 145
    .local v0, numValues:F
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    sub-float v4, v0, v4

    div-float v4, v2, v4

    mul-float/2addr v4, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v1, v3

    .line 146
    .local v1, percent:I
    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    const-string v4, "v"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 149
    return-void
.end method


# virtual methods
.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onCameraButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 165
    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->dismiss()V

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 4
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/ValueSlider;->onFingerCountChanged(IZ)V

    .line 179
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->playDingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/ValueSlider;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 181
    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->playDingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/ValueSlider;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->touchDetector:Lcom/google/glass/input/TouchDetector;

    invoke-virtual {v0, p1}, Lcom/google/glass/input/TouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 215
    const/high16 v0, 0x3f00

    mul-float/2addr p2, v0

    .line 216
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v0, p2}, Lcom/google/glass/widget/ValueSlider;->onPrepareSwipe(F)V

    .line 217
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v1}, Lcom/google/glass/widget/ValueSlider;->getFillBarOverScrollPixels()I

    move-result v1

    int-to-float v2, v1

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 128
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.HEADSET_PLUG"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;[Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_ENTERED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/widget/VolumeControlDialog;->logVolume(Lcom/google/glass/userevent/UserEventAction;)V

    .line 131
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 136
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->headsetPlugReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/VolumeControlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 138
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->VOLUME_CONTROL_EXITED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0}, Lcom/google/glass/widget/VolumeControlDialog;->logVolume(Lcom/google/glass/userevent/UserEventAction;)V

    .line 139
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 3
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 193
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v1, v2}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;

    invoke-virtual {v1, p2}, Lcom/google/glass/widget/ValueSlider;->onSwipe(Lcom/google/glass/input/SwipeDirection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v1, v2}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    goto :goto_0

    .line 203
    :cond_2
    sget-object v1, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    if-ne p2, v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    sget-object v2, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    invoke-static {v1, v2}, Lcom/google/glass/util/HopHelper;->performHopAnimation(Landroid/view/View;Lcom/google/glass/input/SwipeDirection;)V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0
.end method

.method public onValueChanged(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->volumeHelper:Lcom/google/glass/sound/VolumeHelper;

    iget v1, p0, Lcom/google/glass/widget/VolumeControlDialog;->headsetState:I

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/sound/VolumeHelper;->writeAudioVolume(II)V

    .line 154
    return-void
.end method

.method public onVerticalHeadScroll(F)Z
    .locals 1
    .parameter "delta"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog;->tuggableView:Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/horizontalscroll/HorizontallyTuggableView;->onVerticalHeadScroll(F)Z

    move-result v0

    return v0
.end method
