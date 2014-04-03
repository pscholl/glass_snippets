.class public final Lcom/google/glass/maps/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:J


# instance fields
.field private final c:Lcom/google/glass/location/f;

.field private final d:[F

.field private final e:[F

.field private final f:[F

.field private g:J

.field private final h:Ljava/lang/StringBuilder;

.field private i:I

.field private final j:Lcom/google/glass/maps/a/g;

.field private final k:[F

.field private final l:[F

.field private final m:[F

.field private final n:Landroid/hardware/SensorManager;

.field private final o:Landroid/hardware/Sensor;

.field private p:Z

.field private q:Z

.field private r:F

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/a/f;->a:Lcom/google/glass/logging/i;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/maps/a/f;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/location/f;Lcom/google/glass/maps/a/g;)V
    .locals 4

    const/16 v3, 0x9

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/glass/maps/a/f;->d:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/glass/maps/a/f;->e:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/glass/maps/a/f;->f:[F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/a/f;->g:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/a/f;->i:I

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/glass/maps/a/f;->k:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/glass/maps/a/f;->l:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/glass/maps/a/f;->m:[F

    iput-object p2, p0, Lcom/google/glass/maps/a/f;->c:Lcom/google/glass/location/f;

    iput-object p3, p0, Lcom/google/glass/maps/a/f;->j:Lcom/google/glass/maps/a/g;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/glass/maps/a/f;->n:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->n:Landroid/hardware/SensorManager;

    invoke-static {v0}, Lcom/google/glass/maps/a/f;->a(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/a/f;->o:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->o:Landroid/hardware/Sensor;

    invoke-static {v0}, Lcom/google/glass/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a([F)D
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget v0, p0, v1

    aget v1, p0, v1

    mul-float/2addr v0, v1

    aget v1, p0, v2

    aget v2, p0, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p0, v3

    aget v2, p0, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a([F[F)D
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget v0, p0, v1

    aget v1, p1, v1

    mul-float/2addr v0, v1

    aget v1, p0, v2

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p0, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    return-wide v0
.end method

.method private static a(F)F
    .locals 2

    const/high16 v1, 0x43b4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    add-float/2addr p0, v1

    :cond_0
    :goto_0
    return p0

    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    sub-float/2addr p0, v1

    goto :goto_0
.end method

.method private static a(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .locals 5

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invensense"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown RotVec accuracy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "RotVec accuracy is high."

    goto :goto_0

    :pswitch_1
    const-string v0, "RotVec accuracy is medium."

    goto :goto_0

    :pswitch_2
    const-string v0, "RotVec accuracy is low."

    goto :goto_0

    :pswitch_3
    const-string v0, "RotVec accuracy is unreliable."

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x20

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->e:[F

    invoke-static {v0}, Lcom/google/glass/maps/a/f;->a([F)D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/maps/a/f;->d:[F

    invoke-static {v2}, Lcom/google/glass/maps/a/f;->a([F)D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->e:[F

    iget-object v5, p0, Lcom/google/glass/maps/a/f;->d:[F

    invoke-static {v4, v5}, Lcom/google/glass/maps/a/f;->a([F[F)D

    move-result-wide v4

    mul-double/2addr v2, v0

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc00000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/glass/maps/a/f;->i:I

    invoke-static {v4}, Lcom/google/glass/maps/a/f;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->f:[F

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->f:[F

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->f:[F

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    const-string v4, " Mag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->d:[F

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->d:[F

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->d:[F

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    const-string v4, " Acc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->e:[F

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->e:[F

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->e:[F

    aget v4, v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    double-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    const-string v1, " Angle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/maps/driveabout/h/k;

    const-string v1, "Sensors"

    iget-object v2, p0, Lcom/google/glass/maps/a/f;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/h/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/h/f;->b(Lcom/google/android/maps/driveabout/h/j;)V

    return-void
.end method

.method private f()F
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/google/glass/maps/a/f;->s:J

    sub-long v0, v4, v0

    sget-wide v2, Lcom/google/glass/maps/a/f;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->c:Lcom/google/glass/location/f;

    invoke-virtual {v0}, Lcom/google/glass/location/f;->a()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v2, v6

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/a/f;->r:F

    iput-wide v4, p0, Lcom/google/glass/maps/a/f;->s:J

    sget-object v0, Lcom/google/glass/maps/a/f;->a:Lcom/google/glass/logging/i;

    const-string v1, "Using declination: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/glass/maps/a/f;->r:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/google/glass/maps/a/f;->r:F

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    const v7, 0xf4240

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/google/glass/maps/a/f;->p:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/a/f;->a:Lcom/google/glass/logging/i;

    const-string v1, "Registering listener on: %s / %s"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->o:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->o:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/glass/maps/a/f;->o:Landroid/hardware/Sensor;

    const v2, 0x8235

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v5, p0, Lcom/google/glass/maps/a/f;->p:Z

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/a/f;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/a/f;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, v1, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/glass/maps/a/f;->p:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/a/f;->a:Lcom/google/glass/logging/i;

    const-string v1, "Unregistering rotation listener"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v3, p0, Lcom/google/glass/maps/a/f;->p:Z

    iput-boolean v3, p0, Lcom/google/glass/maps/a/f;->q:Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/glass/maps/a/f;->q:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/a/f;->a:Lcom/google/glass/logging/i;

    const-string v1, "Suspending output"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/a/f;->q:Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/glass/maps/a/f;->q:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/a/f;->a:Lcom/google/glass/logging/i;

    const-string v1, "Unsuspending output"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/google/glass/maps/a/f;->q:Z

    :cond_0
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iput p2, p0, Lcom/google/glass/maps/a/f;->i:I

    sget-object v0, Lcom/google/glass/maps/a/f;->a:Lcom/google/glass/logging/i;

    iget v1, p0, Lcom/google/glass/maps/a/f;->i:I

    invoke-static {v1}, Lcom/google/glass/maps/a/f;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->j:Lcom/google/glass/maps/a/g;

    invoke-interface {v0, p2}, Lcom/google/glass/maps/a/g;->a(I)V

    :cond_0
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    const v9, 0x42652ee0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/google/glass/maps/a/f;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->e:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->e:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->e:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v8, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/a/f;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iput-wide v0, p0, Lcom/google/glass/maps/a/f;->g:J

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->d:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->d:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->d:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    invoke-direct {p0}, Lcom/google/glass/maps/a/f;->e()V

    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->f:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->f:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    aput v1, v0, v6

    iget-object v0, p0, Lcom/google/glass/maps/a/f;->f:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/maps/a/f;->k:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object v2, p0, Lcom/google/glass/maps/a/f;->k:[F

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->l:[F

    invoke-static {v2, v6, v3, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/maps/a/f;->l:[F

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->m:[F

    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v2, p0, Lcom/google/glass/maps/a/f;->m:[F

    aget v2, v2, v7

    mul-float/2addr v2, v9

    invoke-direct {p0}, Lcom/google/glass/maps/a/f;->f()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, -0x3f40

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/google/glass/maps/a/f;->a(F)F

    move-result v2

    iget-object v3, p0, Lcom/google/glass/maps/a/f;->m:[F

    aget v3, v3, v6

    mul-float/2addr v3, v9

    iget-object v4, p0, Lcom/google/glass/maps/a/f;->j:Lcom/google/glass/maps/a/g;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/google/glass/maps/a/g;->a(JFF)V

    goto/16 :goto_0
.end method
