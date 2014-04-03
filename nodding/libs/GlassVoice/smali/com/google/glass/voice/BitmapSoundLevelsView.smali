.class public Lcom/google/glass/voice/BitmapSoundLevelsView;
.super Landroid/view/View;
.source "BitmapSoundLevelsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/BitmapSoundLevelsView$1;,
        Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private currentVolume:I

.field private destRect:Landroid/graphics/Rect;

.field private final emptyPaint:Landroid/graphics/Paint;

.field private final identityMatrix:Landroid/graphics/Matrix;

.field private levelSize:I

.field private levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

.field private maxPrimaryLevel:Landroid/graphics/Bitmap;

.field private final primaryLevel:Landroid/graphics/Bitmap;

.field private refreshHandler:Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/BitmapSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/BitmapSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->emptyPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->identityMatrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;-><init>(Lcom/google/glass/voice/BitmapSoundLevelsView;Lcom/google/glass/voice/BitmapSoundLevelsView$1;)V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->refreshHandler:Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/voiceclient/R$drawable;->voice_input_sound_level_circle:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    .line 94
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSize:I

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->destRect:Landroid/graphics/Rect;

    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->emptyPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 99
    return-void
.end method

.method private drawLevel(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
    .locals 4
    .parameter "canvas"
    .parameter "level"
    .parameter "maxLevel"
    .parameter "origin"
    .parameter "extent"

    .prologue
    const/4 v3, 0x0

    .line 200
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->identityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->destRect:Landroid/graphics/Rect;

    add-int v1, p4, p5

    add-int v2, p4, p5

    invoke-virtual {v0, p4, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 204
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->destRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private declared-synchronized startAnimator()V
    .locals 3

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "startAnimator()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->refreshHandler:Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;

    invoke-virtual {v0}, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopAnimator()V
    .locals 3

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stopAnimator()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->refreshHandler:Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;

    invoke-virtual {v0}, Lcom/google/glass/voice/BitmapSoundLevelsView$RefreshHandler;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAnimatorState()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->startAnimator()V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->stopAnimator()V

    goto :goto_0
.end method


# virtual methods
.method public getLevelSource()Lcom/google/glass/voice/network/SpeechLevelSource;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 133
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->updateAnimatorState()V

    .line 134
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->stopAnimator()V

    .line 139
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 140
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    if-nez v0, :cond_1

    const/4 v6, 0x0

    .line 182
    .local v6, level:I
    :goto_0
    iget v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    if-le v6, v0, :cond_2

    .line 183
    iget v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    sub-int v1, v6, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSize:I

    add-int v5, v0, v1

    .line 190
    .local v5, size:I
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/lit8 v4, v0, 0x2

    .line 192
    .local v4, diff:I
    iget-object v2, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->maxPrimaryLevel:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/BitmapSoundLevelsView;->drawLevel(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    .line 195
    .end local v4           #diff:I
    .end local v5           #size:I
    .end local v6           #level:I
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    invoke-interface {v0}, Lcom/google/glass/voice/network/SpeechLevelSource;->getSpeechLevel()I

    move-result v6

    goto :goto_0

    .line 185
    .restart local v6       #level:I
    :cond_2
    iget v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    int-to-float v0, v0

    const v1, 0x3f733333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->currentVolume:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 166
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->maxPrimaryLevel:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->updateAnimatorState()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->stopAnimator()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 104
    sget-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring setEnabled call; already in requested state."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    invoke-direct {p0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->updateAnimatorState()V

    goto :goto_0
.end method

.method public setLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 153
    sget-object v0, Lcom/google/glass/voice/BitmapSoundLevelsView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Speech source set"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iput-object p1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    .line 155
    return-void
.end method
