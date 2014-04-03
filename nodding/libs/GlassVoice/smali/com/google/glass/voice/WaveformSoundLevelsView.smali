.class public Lcom/google/glass/voice/WaveformSoundLevelsView;
.super Landroid/view/View;
.source "WaveformSoundLevelsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/WaveformSoundLevelsView$1;,
        Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERVAL_MS:I = 0xa

.field private static final MAX_AMPLITUDE:I = 0x28

.field private static final MAX_LEVEL_WIDTH_PX:I = 0xb0

.field private static final NUM_PERIODS:I = 0x14

.field private static final NUM_POINTS_FOR_WAVEFORM:I = 0xbb8

.field private static final NUM_POINTS_PER_PERIOD:I = 0x96

.field private static final THETA_PER_INTERVAL:F = 0.0052359877f

.field private static final ZERO_RADIUS:I = 0x50

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private currentVolume:I

.field private final destRect:Landroid/graphics/Rect;

.field private final identityMatrix:Landroid/graphics/Matrix;

.field private levelSize:I

.field private levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

.field private maxPrimaryLevel:Landroid/graphics/Bitmap;

.field private final offsets:[F

.field private final paint:Landroid/graphics/Paint;

.field private final primaryLevel:Landroid/graphics/Bitmap;

.field private refreshHandler:Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;

.field private thetaOffset:F

.field private waveformPaint:Landroid/graphics/Paint;

.field private final waveformPoints:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/WaveformSoundLevelsView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/WaveformSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/WaveformSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v2, 0x1

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/16 v0, 0xbb8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->offsets:[F

    .line 63
    const/16 v0, 0x2ee0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPoints:[F

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->thetaOffset:F

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->paint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->identityMatrix:Landroid/graphics/Matrix;

    .line 82
    new-instance v0, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;-><init>(Lcom/google/glass/voice/WaveformSoundLevelsView;Lcom/google/glass/voice/WaveformSoundLevelsView$1;)V

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->refreshHandler:Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;

    .line 124
    invoke-virtual {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/voiceclient/R$drawable;->voice_input_sound_level_circle:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    .line 126
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->levelSize:I

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->destRect:Landroid/graphics/Rect;

    .line 130
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPaint:Landroid/graphics/Paint;

    .line 133
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 134
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 138
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 140
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
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

    .line 253
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->identityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->destRect:Landroid/graphics/Rect;

    add-int v1, p4, p5

    add-int v2, p4, p5

    invoke-virtual {v0, p4, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->destRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawWaveform(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const-wide v12, 0x401921fb54442d18L

    .line 296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v0, v8

    .line 297
    .local v0, centerX:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v1, v8

    .line 300
    .local v1, centerY:F
    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPoints:[F

    array-length v8, v8

    add-int/lit8 v5, v8, -0x2

    .line 302
    .local v5, waveformPointsIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v8, 0xbb8

    if-ge v2, v8, :cond_0

    .line 303
    int-to-float v8, v2

    const v9, 0x453b8000

    div-float/2addr v8, v9

    float-to-double v8, v8

    mul-double/2addr v8, v12

    double-to-float v8, v8

    iget v9, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->thetaOffset:F

    add-float v4, v8, v9

    .line 304
    .local v4, theta:F
    const/high16 v8, 0x42a0

    iget-object v9, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->offsets:[F

    aget v9, v9, v2

    add-float v3, v8, v9

    .line 306
    .local v3, radius:F
    float-to-double v8, v3

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v0

    add-double/2addr v8, v10

    double-to-float v6, v8

    .line 307
    .local v6, x:F
    float-to-double v8, v3

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    float-to-double v10, v1

    add-double/2addr v8, v10

    double-to-float v7, v8

    .line 309
    .local v7, y:F
    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPoints:[F

    aput v6, v8, v5

    .line 310
    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPoints:[F

    add-int/lit8 v9, v5, 0x1

    iget-object v10, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPoints:[F

    array-length v10, v10

    rem-int/2addr v9, v10

    aput v7, v8, v9

    .line 311
    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPoints:[F

    add-int/lit8 v9, v5, 0x2

    iget-object v10, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPoints:[F

    array-length v10, v10

    rem-int/2addr v9, v10

    aput v6, v8, v9

    .line 312
    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPoints:[F

    add-int/lit8 v9, v5, 0x3

    iget-object v10, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPoints:[F

    array-length v10, v10

    rem-int/2addr v9, v10

    aput v7, v8, v9

    .line 314
    add-int/lit8 v8, v5, 0x4

    iget-object v9, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPoints:[F

    array-length v9, v9

    rem-int v5, v8, v9

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    .end local v3           #radius:F
    .end local v4           #theta:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_0
    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPoints:[F

    iget-object v9, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->waveformPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 320
    iget v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->thetaOffset:F

    const v9, 0x3bab92a6

    add-float/2addr v8, v9

    iput v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->thetaOffset:F

    .line 321
    iget v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->thetaOffset:F

    float-to-double v8, v8

    cmpl-double v8, v8, v12

    if-lez v8, :cond_1

    .line 322
    iget v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->thetaOffset:F

    float-to-double v8, v8

    sub-double/2addr v8, v12

    double-to-float v8, v8

    iput v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->thetaOffset:F

    .line 324
    :cond_1
    return-void
.end method

.method private declared-synchronized startAnimator()V
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->refreshHandler:Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;

    invoke-virtual {v0}, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopAnimator()V
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->refreshHandler:Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;

    invoke-virtual {v0}, Lcom/google/glass/voice/WaveformSoundLevelsView$RefreshHandler;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAnimatorState()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->startAnimator()V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->stopAnimator()V

    goto :goto_0
.end method

.method private updatePointsForWaveform()V
    .locals 12

    .prologue
    .line 266
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4034

    mul-double/2addr v8, v10

    double-to-int v8, v8

    mul-int/lit16 v4, v8, 0x96

    .line 267
    .local v4, index:I
    const/high16 v8, 0x4220

    iget v9, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->currentVolume:I

    int-to-float v9, v9

    const/high16 v10, 0x42c8

    div-float/2addr v9, v10

    mul-float v0, v8, v9

    .line 268
    .local v0, amplitude:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v8, 0x96

    if-ge v3, v8, :cond_1

    .line 269
    add-int v8, v4, v3

    rem-int/lit16 v5, v8, 0xbb8

    .line 270
    .local v5, j:I
    const-wide v8, 0x401921fb54442d18L

    int-to-float v10, v5

    const v11, 0x453b8000

    div-float/2addr v10, v11

    float-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-float v7, v8

    .line 271
    .local v7, theta:F
    float-to-double v8, v0

    const/high16 v10, 0x41a0

    mul-float/2addr v10, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v6, v8

    .line 274
    .local v6, offset:F
    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->offsets:[F

    aget v1, v8, v5

    .line 275
    .local v1, currentOffset:F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 276
    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->offsets:[F

    aput v6, v8, v5

    .line 268
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    .end local v1           #currentOffset:F
    .end local v5           #j:I
    .end local v6           #offset:F
    .end local v7           #theta:F
    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/16 v8, 0xbb8

    if-ge v3, v8, :cond_3

    .line 282
    const-wide v8, 0x401921fb54442d18L

    int-to-float v10, v3

    const v11, 0x453b8000

    div-float/2addr v10, v11

    float-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-float v7, v8

    .line 283
    .restart local v7       #theta:F
    const-wide/high16 v8, 0x4010

    const/high16 v10, 0x41a0

    mul-float/2addr v10, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v6, v8

    .line 284
    .restart local v6       #offset:F
    const v8, 0x3f666666

    iget-object v9, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->offsets:[F

    aget v9, v9, v3

    mul-float v2, v8, v9

    .line 287
    .local v2, decayedOffset:F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 288
    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->offsets:[F

    aput v6, v8, v3

    .line 281
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 290
    :cond_2
    iget-object v8, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->offsets:[F

    aput v2, v8, v3

    goto :goto_2

    .line 293
    .end local v2           #decayedOffset:F
    .end local v6           #offset:F
    .end local v7           #theta:F
    :cond_3
    return-void
.end method


# virtual methods
.method public getLevelSource()Lcom/google/glass/voice/network/SpeechLevelSource;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 181
    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->updateAnimatorState()V

    .line 182
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->stopAnimator()V

    .line 187
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 188
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    if-nez v0, :cond_2

    const/4 v6, 0x0

    .line 232
    .local v6, level:I
    :goto_0
    iget v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->currentVolume:I

    if-le v6, v0, :cond_3

    .line 233
    iget v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->currentVolume:I

    iget v1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->currentVolume:I

    sub-int v1, v6, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->currentVolume:I

    .line 238
    :goto_1
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 239
    iget v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->levelSize:I

    rsub-int v0, v0, 0xb0

    iget v1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->currentVolume:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->levelSize:I

    add-int v5, v0, v1

    .line 240
    .local v5, size:I
    invoke-virtual {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/lit8 v4, v0, 0x2

    .line 242
    .local v4, diff:I
    iget-object v2, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->maxPrimaryLevel:Landroid/graphics/Bitmap;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/WaveformSoundLevelsView;->drawLevel(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V

    .line 245
    .end local v4           #diff:I
    .end local v5           #size:I
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->updatePointsForWaveform()V

    .line 246
    invoke-direct {p0, p1}, Lcom/google/glass/voice/WaveformSoundLevelsView;->drawWaveform(Landroid/graphics/Canvas;)V

    .line 248
    .end local v6           #level:I
    :cond_1
    return-void

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    invoke-interface {v0}, Lcom/google/glass/voice/network/SpeechLevelSource;->getSpeechLevel()I

    move-result v6

    goto :goto_0

    .line 235
    .restart local v6       #level:I
    :cond_3
    iget v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->currentVolume:I

    int-to-float v0, v0

    const v1, 0x3f733333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->currentVolume:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 216
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->primaryLevel:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->maxPrimaryLevel:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 193
    if-eqz p1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->updateAnimatorState()V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->stopAnimator()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    invoke-direct {p0}, Lcom/google/glass/voice/WaveformSoundLevelsView;->updateAnimatorState()V

    goto :goto_0
.end method

.method public setLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/glass/voice/WaveformSoundLevelsView;->levelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    .line 205
    return-void
.end method
