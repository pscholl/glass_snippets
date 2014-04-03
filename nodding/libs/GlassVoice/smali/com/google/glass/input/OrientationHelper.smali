.class public Lcom/google/glass/input/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/OrientationHelper$OrientationListener;
    }
.end annotation


# static fields
.field static final MAX_TIMESTAMP_DISCONTINUITY_IN_SECS:F = 0.25f

.field static final MOVING_AVERAGE_ALPHA:F = 1.0E-5f

.field private static final NANOS_TO_S:F = 1.0E-9f

.field private static final REBIND_WAIT_TIME:J = 0x7d0L

.field static final ROUNDING_PRECISION:F = 0.1f

.field static final SENSOR_RATE:I = 0x4e20

.field private static final USE_INVENSENSE_MPL:Z = true

.field private static final USE_MAGNETIC_FIELD_FOR_YAW:Z

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private gravitySensor:Landroid/hardware/Sensor;

.field private gyroYMovingAverage:F

.field private gyroscopeSensor:Landroid/hardware/Sensor;

.field private volatile integratedGyroY:F

.field private isStarted:Z

.field private lastPitch:F

.field private lastRoll:F

.field private lastTimestamp:J

.field private lastYaw:F

.field private listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

.field private offsetPitch:F

.field private offsetRoll:F

.field private offsetYaw:F

.field private final orientation:[F

.field private final rotationMatrix:[F

.field private rotationVectorSensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final tempRotationMatrix:[F

.field private triedRebinding:Z

.field private triedRebindingTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/OrientationHelper$OrientationListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    const/16 v1, 0x10

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    .line 56
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->tempRotationMatrix:[F

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    .line 94
    iput-object p2, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    .line 95
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 96
    invoke-direct {p0}, Lcom/google/glass/input/OrientationHelper;->cacheSensors()V

    .line 97
    return-void
.end method

.method private cacheSensors()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/google/glass/input/OrientationHelper;->getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->gravitySensor:Landroid/hardware/Sensor;

    .line 337
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/glass/input/OrientationHelper;->getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/OrientationHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    .line 339
    return-void
.end method

.method private callListener(FFFJ)V
    .locals 6
    .parameter "yaw"
    .parameter "pitch"
    .parameter "roll"
    .parameter "timestamp"

    .prologue
    .line 306
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 308
    iput p1, p0, Lcom/google/glass/input/OrientationHelper;->lastYaw:F

    .line 309
    iput p2, p0, Lcom/google/glass/input/OrientationHelper;->lastPitch:F

    .line 310
    iput p3, p0, Lcom/google/glass/input/OrientationHelper;->lastRoll:F

    .line 313
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetYaw:F

    sub-float/2addr p1, v0

    .line 314
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetPitch:F

    sub-float/2addr p2, v0

    .line 315
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetRoll:F

    sub-float/2addr p3, v0

    .line 323
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/glass/input/OrientationHelper$OrientationListener;->onOrientationChanged(FFFJ)V

    .line 326
    :cond_0
    return-void
.end method

.method static getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;
    .locals 12
    .parameter "sensorManager"
    .parameter "type"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 108
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 109
    .local v3, sensor:Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, vendor:Ljava/lang/String;
    const-string v5, "Invensense"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "MPL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    sget-object v5, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Using sensor: %s (%s)"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v9

    aput-object v4, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #sensor:Landroid/hardware/Sensor;
    .end local v4           #vendor:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 118
    :cond_1
    sget-object v5, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Could not find Invensese MPL sensor of type %s."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 123
    .local v0, defaultSensor:Landroid/hardware/Sensor;
    if-nez v0, :cond_2

    .line 124
    sget-object v5, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "No default sensor of type %s found."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    const/4 v3, 0x0

    goto :goto_0

    .line 127
    :cond_2
    sget-object v5, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Using default sensor: %s (%s)"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v0

    .line 128
    goto :goto_0
.end method

.method private handleGravitySensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 159
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v0, v5

    .line 160
    .local v6, x:F
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v0, v9

    .line 161
    .local v7, y:F
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v8, v0, v4

    .line 164
    .local v8, z:F
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v9, p0, Lcom/google/glass/input/OrientationHelper;->triedRebindingTime:J

    sub-long/2addr v4, v9

    const-wide/16 v9, 0x7d0

    cmp-long v0, v4, v9

    if-lez v0, :cond_2

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received NaN values from sensor, x: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Rebinding since we\'re getting NaN values"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iput-boolean v9, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/glass/input/OrientationHelper;->triedRebindingTime:J

    .line 180
    invoke-virtual {p0}, Lcom/google/glass/input/OrientationHelper;->stop()V

    .line 181
    invoke-virtual {p0}, Lcom/google/glass/input/OrientationHelper;->start()V

    .line 201
    :cond_2
    :goto_0
    return-void

    .line 186
    :cond_3
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    if-eqz v0, :cond_4

    .line 189
    iput-boolean v5, p0, Lcom/google/glass/input/OrientationHelper;->triedRebinding:Z

    .line 190
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Rebinding successfully gave us valid values"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_4
    neg-float v0, v6

    float-to-double v4, v0

    float-to-double v9, v7

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 196
    .local v3, roll:F
    float-to-double v4, v8

    mul-float v0, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v0, v9

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 198
    .local v2, pitch:F
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->integratedGyroY:F

    neg-float v0, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 200
    .local v1, yaw:F
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/input/OrientationHelper;->callListener(FFFJ)V

    goto :goto_0
.end method

.method private handleGyroscopeSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 204
    iget-wide v3, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v3, v4

    .line 214
    .local v1, gyroY:F
    iget v3, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    sub-float v3, v1, v3

    const v4, 0x3dcccccd

    invoke-static {v3, v4}, Lcom/google/glass/input/OrientationHelper;->roundValueToPrecision(FF)F

    move-result v2

    .line 217
    .local v2, roundedGyroY:F
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v5, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x3089705f

    mul-float v0, v3, v4

    .line 220
    .local v0, deltaT:F
    const/high16 v3, 0x3e80

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 221
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    .line 234
    .end local v0           #deltaT:F
    .end local v1           #gyroY:F
    .end local v2           #roundedGyroY:F
    :cond_0
    :goto_0
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    .line 235
    return-void

    .line 225
    .restart local v0       #deltaT:F
    .restart local v1       #gyroY:F
    .restart local v2       #roundedGyroY:F
    :cond_1
    iget v3, p0, Lcom/google/glass/input/OrientationHelper;->integratedGyroY:F

    mul-float v4, v2, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/glass/input/OrientationHelper;->integratedGyroY:F

    .line 229
    const v3, 0x3727c5ac

    mul-float/2addr v3, v1

    const v4, 0x3f7fff58

    iget v5, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/glass/input/OrientationHelper;->gyroYMovingAverage:F

    goto :goto_0
.end method

.method private handleRotationSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 238
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v4}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 240
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    iget-object v4, p0, Lcom/google/glass/input/OrientationHelper;->tempRotationMatrix:[F

    invoke-static {v0, v6, v5, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 242
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->tempRotationMatrix:[F

    iget-object v4, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    invoke-static {v0, v5, v7, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 244
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->rotationMatrix:[F

    iget-object v4, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    invoke-static {v0, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 247
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 248
    .local v1, yaw:F
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    aget v0, v0, v6

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 249
    .local v2, pitch:F
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->orientation:[F

    aget v0, v0, v7

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 251
    .local v3, roll:F
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/input/OrientationHelper;->callListener(FFFJ)V

    .line 252
    return-void
.end method

.method static roundValueToPrecision(FF)F
    .locals 1
    .parameter "value"
    .parameter "precision"

    .prologue
    .line 350
    div-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method isStarted()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 256
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 149
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/google/glass/input/OrientationHelper;->handleGyroscopeSensorEvent(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 145
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/google/glass/input/OrientationHelper;->handleGravitySensorEvent(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 153
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/google/glass/input/OrientationHelper;->handleRotationSensorEvent(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public resetTare()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 366
    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetYaw:F

    .line 367
    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetRoll:F

    .line 368
    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetPitch:F

    .line 369
    return-void
.end method

.method public setListener(Lcom/google/glass/input/OrientationHelper$OrientationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/glass/input/OrientationHelper;->listener:Lcom/google/glass/input/OrientationHelper$OrientationListener;

    .line 134
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/16 v3, 0x4e20

    const/4 v2, 0x0

    .line 262
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 265
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/input/OrientationHelper;->lastTimestamp:J

    .line 267
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "OrientationHelper was already started, but got call to start again.  Punting."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :goto_0
    return-void

    .line 272
    :cond_0
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Registering sensors..."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->gravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 277
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 289
    iget-boolean v0, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    if-nez v0, :cond_0

    .line 290
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "OrientationHelper was not started, but got call to stop.  Punting."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    :goto_0
    return-void

    .line 294
    :cond_0
    sget-object v0, Lcom/google/glass/input/OrientationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unregistering sensors..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->gravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 299
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 301
    iput-boolean v3, p0, Lcom/google/glass/input/OrientationHelper;->isStarted:Z

    goto :goto_0
.end method

.method public tare()V
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->lastYaw:F

    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetYaw:F

    .line 358
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->lastRoll:F

    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetRoll:F

    .line 359
    iget v0, p0, Lcom/google/glass/input/OrientationHelper;->lastPitch:F

    iput v0, p0, Lcom/google/glass/input/OrientationHelper;->offsetPitch:F

    .line 360
    return-void
.end method
