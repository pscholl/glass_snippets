.class public final Lcom/google/glass/maps/service/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/glass/maps/service/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BackgroundMapRenderer"

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/service/a;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/maps/service/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/google/glass/maps/service/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/maps/service/c;-><init>(Lcom/google/glass/maps/service/b;)V

    iput-object v0, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    return-void
.end method

.method private static a(F)F
    .locals 3

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    const-wide/high16 v1, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/al;II)F
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x41f0

    const v3, 0x3f8ccccd

    iget-object v0, p0, Lcom/google/glass/maps/service/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->h()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->g()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    div-float v0, v2, v0

    sget v2, Lcom/google/glass/maps/b/k;->a:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/glass/maps/service/a;->a(F)F

    move-result v1

    sub-float v1, v4, v1

    int-to-float v2, p3

    mul-float/2addr v0, v2

    int-to-float v2, p2

    div-float/2addr v0, v2

    sget v2, Lcom/google/glass/maps/b/k;->a:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Lcom/google/glass/maps/service/a;->a(F)F

    move-result v0

    sub-float v0, v4, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4180

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static a(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 4

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    return-object v0
.end method

.method private static a([Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/e/af;
    .locals 4

    new-instance v1, Lcom/google/android/maps/driveabout/e/ah;

    array-length v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/e/ah;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    invoke-static {v3}, Lcom/google/glass/maps/service/a;->a(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/e/ah;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ah;->d()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/maps/driveabout/e/al;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/android/maps/driveabout/e/ab;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/x;

    iget-object v0, v0, Lcom/google/glass/maps/x;->b:Lcom/google/android/maps/driveabout/e/ab;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/al;->a([Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/service/a;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private a(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Ljava/util/List;Ljava/util/List;Lcom/google/glass/maps/v;)V
    .locals 13

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v2, :cond_0

    iget-object v1, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->center:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v1}, Lcom/google/glass/maps/service/a;->a(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_3

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/glass/maps/service/a;->a:Lcom/google/glass/logging/i;

    const-string v3, "Using explicit center/zoom: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->zoom:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/v;->a(Lcom/google/android/maps/driveabout/e/ab;F)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/glass/maps/service/a;->a:Lcom/google/glass/logging/i;

    const-string v3, "Using center and span: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide v2, -0x3faac00000000000L

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->b()D

    move-result-wide v4

    iget-object v6, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide v4, -0x3f99800000000000L

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->d()D

    move-result-wide v6

    iget-object v8, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    const-wide v3, 0x4055400000000000L

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->b()D

    move-result-wide v5

    iget-object v7, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->latSpan:Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->d()D

    move-result-wide v7

    iget-object v9, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->lngSpan:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    new-instance v4, Lcom/google/android/maps/driveabout/e/al;

    invoke-direct {v4, v2, v3}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v2, v3}, Lcom/google/glass/maps/service/a;->a(Lcom/google/android/maps/driveabout/e/al;II)F

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/v;->a(Lcom/google/android/maps/driveabout/e/ab;F)V

    goto/16 :goto_0

    :cond_2
    sget-object v2, Lcom/google/glass/maps/service/a;->a:Lcom/google/glass/logging/i;

    const-string v3, "Using center/default zoom: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v2, 0x4180

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/v;->a(Lcom/google/android/maps/driveabout/e/ab;F)V

    goto/16 :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_4

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    :cond_4
    sget-object v1, Lcom/google/glass/maps/service/a;->a:Lcom/google/glass/logging/i;

    const-string v2, "Using bound from markers and polylines"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/y;

    iget-object v1, v1, Lcom/google/glass/maps/y;->a:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/af;->a()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v2

    const/4 v1, 0x1

    move-object v3, v2

    move v2, v1

    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/y;

    iget-object v1, v1, Lcom/google/glass/maps/y;->a:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/af;->a()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-static {p2}, Lcom/google/glass/maps/service/a;->a(Ljava/util/List;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/al;->f()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/google/glass/maps/service/a;->a(Lcom/google/android/maps/driveabout/e/al;II)F

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/v;->a(Lcom/google/android/maps/driveabout/e/ab;F)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Lcom/google/glass/f/a;->a(Z)V

    invoke-static {p2}, Lcom/google/glass/maps/service/a;->a(Ljava/util/List;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v3

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/google/glass/maps/service/a;->a:Lcom/google/glass/logging/i;

    const-string v2, "Unable to compute viewport from request"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Landroid/graphics/Bitmap;
    .locals 14

    :try_start_0
    iget-object v0, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->height:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-static {v0}, Lcom/google/glass/util/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v4, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v6, v1, v0

    iget-object v7, v6, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v7, :cond_0

    new-instance v7, Lcom/google/glass/maps/x;

    iget v8, v6, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type:I

    iget-object v6, v6, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v6}, Lcom/google/glass/maps/service/a;->a(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lcom/google/glass/maps/x;-><init>(ILcom/google/android/maps/driveabout/e/ab;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-static {v0}, Lcom/google/glass/util/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v6, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v8, v6

    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v8, :cond_5

    aget-object v9, v6, v4

    iget-object v0, v9, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->width:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v1, v0

    :goto_2
    iget-object v0, v9, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->colorArgb:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    iget-object v10, v9, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v10}, Lcom/google/glass/util/a;->a([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Lcom/google/glass/maps/y;

    iget-object v9, v9, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v9}, Lcom/google/glass/maps/service/a;->a([Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v9

    invoke-direct {v10, v9, v1, v0}, Lcom/google/glass/maps/y;-><init>(Lcom/google/android/maps/driveabout/e/af;FI)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    const/high16 v0, 0x4140

    move v1, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/service/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v10, Lcom/google/glass/maps/bj;->route_polyline_color:I

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3

    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    mul-int v0, v2, v3

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    new-instance v1, Lcom/google/glass/maps/v;

    iget-object v0, p0, Lcom/google/glass/maps/service/a;->b:Landroid/content/Context;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/glass/maps/v;-><init>(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/service/c;->a()V

    iget-object v0, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/maps/service/c;->a(II)Z

    iget-object v0, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    iget-object v0, v0, Lcom/google/glass/maps/service/c;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iget-object v4, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    iget-object v4, v4, Lcom/google/glass/maps/service/c;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v1, v0, v4}, Lcom/google/glass/maps/v;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/maps/v;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    invoke-direct {p0, p1, v5, v7, v1}, Lcom/google/glass/maps/service/a;->a(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Ljava/util/List;Ljava/util/List;Lcom/google/glass/maps/v;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/glass/maps/x;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/x;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/v;->a([Lcom/google/glass/maps/x;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/glass/maps/y;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/y;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/v;->a([Lcom/google/glass/maps/y;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v4, v5}, Lcom/google/glass/maps/v;->c(J)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/google/glass/maps/service/a;->a:Lcom/google/glass/logging/i;

    const-string v1, "Timed out waiting for tiles to load"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    invoke-virtual {v1}, Lcom/google/glass/maps/service/c;->c()V

    iget-object v1, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    invoke-virtual {v1}, Lcom/google/glass/maps/service/c;->d()V

    :goto_4
    return-object v0

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/service/c;->b()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v13}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-static {v13}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v5

    add-int/lit8 v0, v3, -0x1

    mul-int v6, v2, v0

    neg-int v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v13

    move v10, v2

    move v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v13, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/service/c;->c()V

    iget-object v0, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/service/c;->d()V

    move-object v0, v12

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/google/glass/maps/service/a;->a:Lcom/google/glass/logging/i;

    const-string v2, "Interrupted!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    invoke-virtual {v1}, Lcom/google/glass/maps/service/c;->c()V

    iget-object v1, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    invoke-virtual {v1}, Lcom/google/glass/maps/service/c;->d()V

    goto :goto_4

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    invoke-virtual {v1}, Lcom/google/glass/maps/service/c;->c()V

    iget-object v1, p0, Lcom/google/glass/maps/service/a;->c:Lcom/google/glass/maps/service/c;

    invoke-virtual {v1}, Lcom/google/glass/maps/service/c;->d()V

    throw v0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
