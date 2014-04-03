.class public Lcom/google/glass/input/AbsolutePitchHelper;
.super Ljava/lang/Object;
.source "AbsolutePitchHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/AbsolutePitchHelper$AbsolutePitchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private gravitySensor:Landroid/hardware/Sensor;

.field private isStarted:Z

.field private listener:Lcom/google/glass/input/AbsolutePitchHelper$AbsolutePitchListener;

.field private sensorExecutor:Ljava/util/concurrent/Executor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorThread:Landroid/os/HandlerThread;

.field private startStopThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/input/AbsolutePitchHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/input/AbsolutePitchHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/AbsolutePitchHelper$AbsolutePitchListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Lcom/google/glass/input/AbsolutePitchHelper;->listener:Lcom/google/glass/input/AbsolutePitchHelper$AbsolutePitchListener;

    .line 58
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 59
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/input/AbsolutePitchHelper;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->sensorExecutor:Ljava/util/concurrent/Executor;

    .line 63
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->sensorExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/input/AbsolutePitchHelper$1;

    invoke-direct {v1, p0}, Lcom/google/glass/input/AbsolutePitchHelper$1;-><init>(Lcom/google/glass/input/AbsolutePitchHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/input/AbsolutePitchHelper;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->gravitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/input/AbsolutePitchHelper;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/glass/input/AbsolutePitchHelper;->gravitySensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/input/AbsolutePitchHelper;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/input/AbsolutePitchHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->isStarted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/input/AbsolutePitchHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/google/glass/input/AbsolutePitchHelper;->isStarted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/input/AbsolutePitchHelper;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->sensorThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/glass/input/AbsolutePitchHelper;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/glass/input/AbsolutePitchHelper;->sensorThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/input/AbsolutePitchHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/input/AbsolutePitchHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/input/AbsolutePitchHelper;->internalStop()V

    return-void
.end method

.method private declared-synchronized checkThread()V
    .locals 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->startStopThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 133
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->startStopThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/input/AbsolutePitchHelper;->startStopThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start/Stop not invoked from consistent thread. First thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/input/AbsolutePitchHelper;->startStopThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private internalStop()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 105
    iget-boolean v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->isStarted:Z

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->isStarted:Z

    .line 108
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/input/AbsolutePitchHelper;->gravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 109
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->sensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->sensorThread:Landroid/os/HandlerThread;

    .line 111
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 144
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 115
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 116
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    .line 117
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v2, v5, v6

    .line 118
    .local v2, x:F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v3, v5, v6

    .line 119
    .local v3, y:F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v4, v5, v6

    .line 120
    .local v4, z:F
    float-to-double v5, v4

    mul-float v7, v2, v2

    mul-float v8, v3, v3

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 121
    .local v0, pitch:F
    iget-object v5, p0, Lcom/google/glass/input/AbsolutePitchHelper;->listener:Lcom/google/glass/input/AbsolutePitchHelper$AbsolutePitchListener;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/input/AbsolutePitchHelper$AbsolutePitchListener;->onAbsolutePitchChange(FJ)Z

    move-result v1

    .line 122
    .local v1, stopSensors:Z
    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/google/glass/input/AbsolutePitchHelper;->internalStop()V

    .line 128
    .end local v0           #pitch:F
    .end local v1           #stopSensors:Z
    .end local v2           #x:F
    .end local v3           #y:F
    .end local v4           #z:F
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/glass/input/AbsolutePitchHelper;->checkThread()V

    .line 76
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->sensorExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/input/AbsolutePitchHelper$2;

    invoke-direct {v1, p0}, Lcom/google/glass/input/AbsolutePitchHelper$2;-><init>(Lcom/google/glass/input/AbsolutePitchHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/glass/input/AbsolutePitchHelper;->checkThread()V

    .line 94
    iget-object v0, p0, Lcom/google/glass/input/AbsolutePitchHelper;->sensorExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/input/AbsolutePitchHelper$3;

    invoke-direct {v1, p0}, Lcom/google/glass/input/AbsolutePitchHelper$3;-><init>(Lcom/google/glass/input/AbsolutePitchHelper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method
