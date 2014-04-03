.class final Lcom/google/android/maps/driveabout/location/y;
.super Ljava/lang/Object;


# instance fields
.field a:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/location/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/y;-><init>()V

    return-void
.end method


# virtual methods
.method final a(F)F
    .locals 5

    const v4, 0x3dcccccd

    const/high16 v3, 0x4000

    const/high16 v2, 0x43b4

    iget v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iput p1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    :goto_0
    return p1

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4334

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    add-float/2addr p1, v2

    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    move v0, p1

    :goto_2
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    add-float/2addr v0, v2

    :cond_2
    :goto_3
    iput v0, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    move p1, v0

    goto :goto_0

    :cond_3
    sub-float/2addr p1, v2

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_5

    iget v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    iget v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    iget v1, p0, Lcom/google/android/maps/driveabout/location/y;->a:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    goto :goto_2

    :cond_6
    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    sub-float/2addr v0, v2

    goto :goto_3
.end method
