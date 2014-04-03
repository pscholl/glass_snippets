.class public final Lcom/google/glass/maps/b/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:F

.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private final A:Ljava/util/ArrayList;

.field private final B:Ljava/util/ArrayList;

.field private final C:Ljava/util/ArrayList;

.field private final D:Ljava/util/ArrayList;

.field private final E:Ljava/util/ArrayList;

.field private F:I

.field private G:I

.field private H:F

.field private I:Z

.field private final c:Lcom/google/glass/maps/b/j;

.field private final d:Lcom/google/glass/maps/b/n;

.field private final e:Lcom/google/glass/maps/b/f;

.field private final f:Lcom/google/glass/maps/b/ae;

.field private final g:Lcom/google/glass/maps/b/an;

.field private final h:[I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Rect;

.field private l:Z

.field private final m:Lcom/google/glass/maps/opengl/g;

.field private final n:Lcom/google/glass/maps/opengl/g;

.field private final o:Lcom/google/glass/maps/opengl/g;

.field private final p:Lcom/google/glass/maps/opengl/i;

.field private final q:Lcom/google/glass/maps/opengl/g;

.field private final r:Lcom/google/glass/maps/opengl/g;

.field private final s:Lcom/google/glass/maps/opengl/i;

.field private final t:Lcom/google/glass/maps/opengl/g;

.field private final u:Lcom/google/glass/maps/opengl/i;

.field private final v:Lcom/google/glass/maps/opengl/g;

.field private final w:Lcom/google/glass/maps/opengl/g;

.field private final x:Lcom/google/glass/maps/opengl/g;

.field private final y:Lcom/google/glass/maps/opengl/g;

.field private z:Lcom/google/glass/maps/b/q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/b/k;->b:Lcom/google/glass/logging/i;

    const-wide/high16 v0, 0x3fe0

    const-wide v2, 0x3fd921fb54442d18L

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/glass/maps/b/k;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/b/v;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->h:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->A:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->B:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->C:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->D:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->E:Ljava/util/ArrayList;

    iput v5, p0, Lcom/google/glass/maps/b/k;->G:I

    iput-boolean v6, p0, Lcom/google/glass/maps/b/k;->I:Z

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    new-instance v0, Lcom/google/glass/maps/b/j;

    invoke-direct {v0, p2}, Lcom/google/glass/maps/b/j;-><init>(Lcom/google/glass/maps/b/v;)V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->c:Lcom/google/glass/maps/b/j;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/b/f;

    sget-object v2, Lcom/google/glass/maps/b/f;->b:Lcom/google/glass/maps/b/g;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/glass/maps/b/f;-><init>(Lcom/google/glass/maps/b/g;IIF)V

    iput-object v1, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    const/high16 v1, 0x4234

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/b/f;->a(F)V

    new-instance v0, Lcom/google/glass/maps/b/n;

    new-instance v1, Lcom/google/glass/util/p;

    invoke-direct {v1}, Lcom/google/glass/util/p;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/maps/b/n;-><init>(Lcom/google/glass/util/o;)V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->d:Lcom/google/glass/maps/b/n;

    new-instance v0, Lcom/google/glass/maps/b/ae;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, p2}, Lcom/google/glass/maps/b/ae;-><init>(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILcom/google/glass/maps/b/v;)V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->f:Lcom/google/glass/maps/b/ae;

    new-instance v0, Lcom/google/glass/maps/b/z;

    invoke-direct {v0}, Lcom/google/glass/maps/b/z;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->g:Lcom/google/glass/maps/b/an;

    new-instance v0, Lcom/google/glass/maps/opengl/i;

    invoke-direct {v0}, Lcom/google/glass/maps/opengl/i;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->p:Lcom/google/glass/maps/opengl/i;

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->p:Lcom/google/glass/maps/opengl/i;

    invoke-virtual {v0, v6}, Lcom/google/glass/maps/opengl/i;->a(Z)V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->p:Lcom/google/glass/maps/opengl/i;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/bl;->road_texture:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/maps/opengl/i;->a(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    new-instance v0, Lcom/google/glass/maps/opengl/i;

    invoke-direct {v0}, Lcom/google/glass/maps/opengl/i;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->s:Lcom/google/glass/maps/opengl/i;

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->s:Lcom/google/glass/maps/opengl/i;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/bl;->location_texture:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/maps/opengl/i;->a(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    new-instance v0, Lcom/google/glass/maps/opengl/i;

    invoke-direct {v0}, Lcom/google/glass/maps/opengl/i;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->u:Lcom/google/glass/maps/opengl/i;

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->u:Lcom/google/glass/maps/opengl/i;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, p3, v2}, Lcom/google/glass/maps/opengl/i;->a(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    :try_start_0
    sget v0, Lcom/google/glass/maps/br;->raster_vertex:I

    sget v1, Lcom/google/glass/maps/br;->raster_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->m:Lcom/google/glass/maps/opengl/g;

    sget v0, Lcom/google/glass/maps/br;->area_vertex:I

    sget v1, Lcom/google/glass/maps/br;->area_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->n:Lcom/google/glass/maps/opengl/g;

    sget v0, Lcom/google/glass/maps/br;->road_vertex:I

    sget v1, Lcom/google/glass/maps/br;->road_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->o:Lcom/google/glass/maps/opengl/g;

    sget v0, Lcom/google/glass/maps/br;->simple_vertex:I

    sget v1, Lcom/google/glass/maps/br;->simple_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->q:Lcom/google/glass/maps/opengl/g;

    sget v0, Lcom/google/glass/maps/br;->location_vertex:I

    sget v1, Lcom/google/glass/maps/br;->marker_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->r:Lcom/google/glass/maps/opengl/g;

    sget v0, Lcom/google/glass/maps/br;->marker_vertex:I

    sget v1, Lcom/google/glass/maps/br;->marker_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->t:Lcom/google/glass/maps/opengl/g;

    sget v0, Lcom/google/glass/maps/br;->polyline_vertex:I

    sget v1, Lcom/google/glass/maps/br;->road_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->v:Lcom/google/glass/maps/opengl/g;

    sget v0, Lcom/google/glass/maps/br;->circle_vertex:I

    sget v1, Lcom/google/glass/maps/br;->circle_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->w:Lcom/google/glass/maps/opengl/g;

    sget v0, Lcom/google/glass/maps/br;->line_label_vertex:I

    sget v1, Lcom/google/glass/maps/br;->label_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->x:Lcom/google/glass/maps/opengl/g;

    sget v0, Lcom/google/glass/maps/br;->screen_label_vertex:I

    sget v1, Lcom/google/glass/maps/br;->label_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/k;->y:Lcom/google/glass/maps/opengl/g;
    :try_end_0
    .catch Lcom/google/glass/maps/opengl/ProgramException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/maps/b/k;->b:Lcom/google/glass/logging/i;

    const-string v2, "Error creating programs from resources"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private c(J)V
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->g:Lcom/google/glass/maps/b/an;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, v2

    move v3, v2

    :goto_0
    iget v0, p0, Lcom/google/glass/maps/b/k;->F:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/y;

    iget-object v5, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    invoke-virtual {v0, v5}, Lcom/google/glass/maps/b/y;->a(Lcom/google/glass/maps/b/f;)V

    invoke-virtual {v0}, Lcom/google/glass/maps/b/y;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->m:Lcom/google/glass/maps/opengl/g;

    invoke-static {v0}, Lcom/google/glass/maps/b/y;->a(Lcom/google/glass/maps/opengl/g;)V

    move v1, v2

    :goto_1
    iget v0, p0, Lcom/google/glass/maps/b/k;->F:I

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/y;

    iget-object v3, p0, Lcom/google/glass/maps/b/k;->m:Lcom/google/glass/maps/opengl/g;

    invoke-virtual {v0, v3, p1, p2}, Lcom/google/glass/maps/b/y;->a(Lcom/google/glass/maps/opengl/g;J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->n:Lcom/google/glass/maps/opengl/g;

    invoke-static {v0}, Lcom/google/glass/maps/b/y;->b(Lcom/google/glass/maps/opengl/g;)V

    move v1, v2

    :goto_2
    iget v0, p0, Lcom/google/glass/maps/b/k;->F:I

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/y;

    iget-object v3, p0, Lcom/google/glass/maps/b/k;->n:Lcom/google/glass/maps/opengl/g;

    invoke-virtual {v0, v3, p1, p2}, Lcom/google/glass/maps/b/y;->b(Lcom/google/glass/maps/opengl/g;J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->o:Lcom/google/glass/maps/opengl/g;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->p:Lcom/google/glass/maps/opengl/i;

    invoke-static {v0, v1}, Lcom/google/glass/maps/b/y;->a(Lcom/google/glass/maps/opengl/g;Lcom/google/glass/maps/opengl/i;)V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/f;->g()F

    move-result v0

    const/high16 v1, 0x4168

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    move v1, v2

    :goto_3
    iget v0, p0, Lcom/google/glass/maps/b/k;->F:I

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/y;

    iget-object v3, p0, Lcom/google/glass/maps/b/k;->o:Lcom/google/glass/maps/opengl/g;

    invoke-virtual {v0, v3, p1, p2, v4}, Lcom/google/glass/maps/b/y;->a(Lcom/google/glass/maps/opengl/g;JZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_4
    iget v0, p0, Lcom/google/glass/maps/b/k;->F:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/y;

    iget-object v3, p0, Lcom/google/glass/maps/b/k;->o:Lcom/google/glass/maps/opengl/g;

    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/google/glass/maps/b/y;->a(Lcom/google/glass/maps/opengl/g;JZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method private c()Z
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->g:Lcom/google/glass/maps/b/an;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/b/an;->a(Lcom/google/glass/maps/b/f;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/av;

    iget-object v4, p0, Lcom/google/glass/maps/b/k;->f:Lcom/google/glass/maps/b/ae;

    invoke-virtual {v4, v0}, Lcom/google/glass/maps/b/ae;->a(Lcom/google/android/maps/driveabout/e/av;)Lcom/google/glass/maps/b/y;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-boolean v5, p0, Lcom/google/glass/maps/b/k;->I:Z

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/glass/maps/b/y;->c()V

    :cond_0
    iget-object v5, p0, Lcom/google/glass/maps/b/k;->E:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/b/k;->F:I

    iget v0, p0, Lcom/google/glass/maps/b/k;->G:I

    if-eq v1, v0, :cond_2

    iput v1, p0, Lcom/google/glass/maps/b/k;->G:I

    :goto_2
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private d()Lcom/google/glass/maps/c/h;
    .locals 3

    new-instance v2, Lcom/google/glass/maps/c/h;

    invoke-direct {v2}, Lcom/google/glass/maps/c/h;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/google/glass/maps/b/k;->F:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/y;

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/b/y;->a(Lcom/google/glass/maps/c/h;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private d(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->w:Lcom/google/glass/maps/opengl/g;

    invoke-static {v0, v1}, Lcom/google/glass/maps/b/m;->a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/m;

    iget-object v2, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v3, p0, Lcom/google/glass/maps/b/k;->w:Lcom/google/glass/maps/opengl/g;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/google/glass/maps/b/m;->a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private e()V
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/glass/maps/b/k;->H:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->q:Lcom/google/glass/maps/opengl/g;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/g;->a()V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->q:Lcom/google/glass/maps/opengl/g;

    const-string v1, "color"

    iget v5, p0, Lcom/google/glass/maps/b/k;->H:F

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FFFF)V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->q:Lcom/google/glass/maps/opengl/g;

    const-string v1, "pos"

    sget-object v2, Lcom/google/glass/maps/b/ac;->b:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_0
    return-void
.end method

.method private e(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->z:Lcom/google/glass/maps/b/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->r:Lcom/google/glass/maps/opengl/g;

    iget-object v2, p0, Lcom/google/glass/maps/b/k;->s:Lcom/google/glass/maps/opengl/i;

    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/b/q;->a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;Lcom/google/glass/maps/opengl/i;)V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->z:Lcom/google/glass/maps/b/q;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v2, p0, Lcom/google/glass/maps/b/k;->r:Lcom/google/glass/maps/opengl/g;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/glass/maps/b/q;->a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;J)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->v:Lcom/google/glass/maps/opengl/g;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->p:Lcom/google/glass/maps/opengl/i;

    invoke-static {v0, v1}, Lcom/google/glass/maps/b/s;->a(Lcom/google/glass/maps/opengl/g;Lcom/google/glass/maps/opengl/i;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/s;

    iget-object v2, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/b/s;->a(Lcom/google/glass/maps/b/f;)V

    iget-object v2, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v3, p0, Lcom/google/glass/maps/b/k;->v:Lcom/google/glass/maps/opengl/g;

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/maps/b/s;->a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private f(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->B:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->t:Lcom/google/glass/maps/opengl/g;

    iget-object v3, p0, Lcom/google/glass/maps/b/k;->u:Lcom/google/glass/maps/opengl/i;

    invoke-static {v0, v1, v3, p1, p2}, Lcom/google/glass/maps/b/r;->a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;Lcom/google/glass/maps/opengl/i;J)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/r;

    iget-object v3, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v4, p0, Lcom/google/glass/maps/b/k;->t:Lcom/google/glass/maps/opengl/g;

    invoke-virtual {v0, v3, v4, p1, p2}, Lcom/google/glass/maps/b/r;->a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;J)V

    invoke-virtual {v0}, Lcom/google/glass/maps/b/r;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/b/k;->b(Lcom/google/glass/maps/b/r;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private g(J)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/glass/maps/b/k;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->x:Lcom/google/glass/maps/opengl/g;

    invoke-static {v0, v1}, Lcom/google/glass/maps/b/p;->a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;)V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->c:Lcom/google/glass/maps/b/j;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/j;->b()Lcom/google/glass/maps/c/g;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/o;

    instance-of v2, v0, Lcom/google/glass/maps/b/p;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v3, p0, Lcom/google/glass/maps/b/k;->x:Lcom/google/glass/maps/opengl/g;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/google/glass/maps/b/o;->a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;J)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->y:Lcom/google/glass/maps/opengl/g;

    invoke-static {v0, v1}, Lcom/google/glass/maps/b/u;->a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;)V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->c:Lcom/google/glass/maps/b/j;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/j;->b()Lcom/google/glass/maps/c/g;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/o;

    instance-of v2, v0, Lcom/google/glass/maps/b/u;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v3, p0, Lcom/google/glass/maps/b/k;->y:Lcom/google/glass/maps/opengl/g;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/google/glass/maps/b/o;->a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;J)V

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/google/glass/maps/b/n;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->d:Lcom/google/glass/maps/b/n;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iput p1, p0, Lcom/google/glass/maps/b/k;->H:F

    return-void
.end method

.method public final a(I)V
    .locals 1

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->c:Lcom/google/glass/maps/b/j;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/b/j;->a(I)V

    return-void
.end method

.method public final a(IIII)V
    .locals 2

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iput p1, p0, Lcom/google/glass/maps/b/k;->i:I

    iput p2, p0, Lcom/google/glass/maps/b/k;->j:I

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    invoke-virtual {v1}, Lcom/google/glass/maps/b/f;->c()F

    move-result v1

    invoke-virtual {v0, p3, p4, v1}, Lcom/google/glass/maps/b/f;->a(IIF)V

    return-void
.end method

.method public final a(J)V
    .locals 12

    const/16 v11, 0xc11

    const/16 v10, 0x303

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/f;->a()I

    move-result v6

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/f;->b()I

    move-result v7

    if-lez v6, :cond_0

    if-gtz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->d:Lcom/google/glass/maps/b/n;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/b/n;->a(J)Z

    move-result v4

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->d:Lcom/google/glass/maps/b/n;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/n;->a()Lcom/google/glass/maps/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/b/f;->a(Lcom/google/glass/maps/b/g;)V

    invoke-direct {p0}, Lcom/google/glass/maps/b/k;->c()Z

    move-result v5

    iget-boolean v0, p0, Lcom/google/glass/maps/b/k;->l:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->c:Lcom/google/glass/maps/b/j;

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v2, p0, Lcom/google/glass/maps/b/k;->k:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/google/glass/maps/b/k;->d()Lcom/google/glass/maps/c/h;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/b/j;->a(Lcom/google/glass/maps/b/f;Landroid/graphics/Rect;Ljava/util/Iterator;ZZ)V

    :goto_1
    const/16 v0, 0xba2

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->h:[I

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget v0, p0, Lcom/google/glass/maps/b/k;->i:I

    iget v1, p0, Lcom/google/glass/maps/b/k;->j:I

    invoke-static {v0, v1, v6, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {v11}, Landroid/opengl/GLES20;->glEnable(I)V

    iget v0, p0, Lcom/google/glass/maps/b/k;->i:I

    iget v1, p0, Lcom/google/glass/maps/b/k;->j:I

    invoke-static {v0, v1, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/b/k;->c(J)V

    iget-boolean v0, p0, Lcom/google/glass/maps/b/k;->I:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->f:Lcom/google/glass/maps/b/ae;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/ae;->a()I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v8, p0, Lcom/google/glass/maps/b/k;->I:Z

    :cond_2
    invoke-direct {p0}, Lcom/google/glass/maps/b/k;->e()V

    invoke-direct {p0}, Lcom/google/glass/maps/b/k;->f()V

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/b/k;->d(J)V

    invoke-static {v8, v10}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/b/k;->g(J)V

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/b/k;->e(J)V

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/b/k;->f(J)V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->h:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->h:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/google/glass/maps/b/k;->h:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/glass/maps/b/k;->h:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {v11}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0x302

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/b/k;->c:Lcom/google/glass/maps/b/j;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/j;->a()V

    goto :goto_1
.end method

.method public final a(Lcom/google/glass/maps/b/m;)V
    .locals 1

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/glass/maps/b/q;)V
    .locals 0

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iput-object p1, p0, Lcom/google/glass/maps/b/k;->z:Lcom/google/glass/maps/b/q;

    return-void
.end method

.method public final a(Lcom/google/glass/maps/b/r;)V
    .locals 1

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/glass/maps/b/s;)V
    .locals 1

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iput-boolean p1, p0, Lcom/google/glass/maps/b/k;->l:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/b/k;->I:Z

    return-void
.end method

.method public final b(Lcom/google/glass/maps/b/r;)V
    .locals 1

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/google/glass/maps/b/s;)V
    .locals 1

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/b/k;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(J)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->f:Lcom/google/glass/maps/b/ae;

    new-instance v2, Lcom/google/glass/maps/b/l;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/maps/b/l;-><init>(Lcom/google/glass/maps/b/k;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/b/ae;->a(Lcom/google/glass/maps/b/ah;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/b/k;->e:Lcom/google/glass/maps/b/f;

    iget-object v2, p0, Lcom/google/glass/maps/b/k;->d:Lcom/google/glass/maps/b/n;

    invoke-virtual {v2}, Lcom/google/glass/maps/b/n;->a()Lcom/google/glass/maps/b/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/b/f;->a(Lcom/google/glass/maps/b/g;)V

    invoke-direct {p0}, Lcom/google/glass/maps/b/k;->c()Z

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->f:Lcom/google/glass/maps/b/ae;

    invoke-virtual {v1, v3}, Lcom/google/glass/maps/b/ae;->a(Lcom/google/glass/maps/b/ah;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/maps/b/k;->f:Lcom/google/glass/maps/b/ae;

    invoke-virtual {v1, v3}, Lcom/google/glass/maps/b/ae;->a(Lcom/google/glass/maps/b/ah;)V

    throw v0
.end method
