.class public Lcom/google/glass/maps/directions/TransitMapView;
.super Landroid/widget/FrameLayout;


# static fields
.field private static a:Lcom/google/glass/maps/ba;


# instance fields
.field private b:D

.field private c:Landroid/opengl/GLSurfaceView;

.field private d:Lcom/google/glass/maps/ba;

.field private e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

.field private f:Lcom/google/glass/maps/directions/i;

.field private g:Z

.field private h:J

.field private i:Lcom/google/glass/maps/directions/TransitMapView$State;

.field private final j:Lcom/google/android/maps/driveabout/e/ab;

.field private final k:Lcom/google/android/maps/driveabout/e/ab;

.field private l:[Lcom/google/android/maps/driveabout/e/ab;

.field private m:Lcom/google/glass/widget/TypophileTextView;

.field private n:I

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->g:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->h:J

    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_PINNED:Lcom/google/glass/maps/directions/TransitMapView$State;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->i:Lcom/google/glass/maps/directions/TransitMapView$State;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->j:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->k:Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->g:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->h:J

    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_PINNED:Lcom/google/glass/maps/directions/TransitMapView$State;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->i:Lcom/google/glass/maps/directions/TransitMapView$State;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->j:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->k:Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->g:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->h:J

    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_PINNED:Lcom/google/glass/maps/directions/TransitMapView$State;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->i:Lcom/google/glass/maps/directions/TransitMapView$State;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->j:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->k:Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/directions/TransitMapView;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->n:I

    return v0
.end method

.method private static a([III)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private a(Lcom/google/glass/maps/directions/i;)Lcom/google/glass/maps/b/h;
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/glass/maps/directions/i;->c:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v1

    new-array v5, v1, [I

    iget-object v6, p1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v1, v6

    new-array v7, v1, [I

    move v1, v0

    move v3, v0

    move v2, v0

    :goto_0
    array-length v4, v6

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    aget-object v8, v6, v0

    iget v4, v8, Lcom/google/glass/maps/directions/b;->o:I

    invoke-static {v7, v2, v4}, Lcom/google/glass/maps/directions/TransitMapView;->a([III)I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_2

    iget v4, v8, Lcom/google/glass/maps/directions/b;->o:I

    aput v4, v7, v2

    add-int/lit8 v4, v2, 0x1

    :goto_1
    iget v9, v8, Lcom/google/glass/maps/directions/b;->j:I

    if-eqz v9, :cond_0

    iget v9, v8, Lcom/google/glass/maps/directions/b;->j:I

    invoke-static {v5, v3, v9, v1}, Ljava/util/Arrays;->fill([IIII)V

    :cond_0
    iget v1, v8, Lcom/google/glass/maps/directions/b;->j:I

    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v2

    move v2, v4

    goto :goto_0

    :cond_1
    array-length v0, v5

    invoke-static {v5, v3, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    new-instance v0, Lcom/google/glass/maps/b/h;

    iget-object v1, p1, Lcom/google/glass/maps/directions/i;->c:Lcom/google/android/maps/driveabout/e/af;

    invoke-static {v7, v2}, Lcom/google/glass/maps/directions/TransitMapView;->a([II)[[F

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/google/glass/maps/b/h;-><init>(Lcom/google/android/maps/driveabout/e/af;[[F[IZ)V

    return-object v0

    :cond_2
    move v10, v4

    move v4, v2

    move v2, v10

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bo;->transit_map:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bk;->glass_screen_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/bk;->glass_screen_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Lcom/google/glass/maps/directions/TransitMapView;->a:Lcom/google/glass/maps/ba;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/glass/maps/directions/TransitMapView;->a:Lcom/google/glass/maps/ba;

    iput-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->d:Lcom/google/glass/maps/ba;

    :goto_0
    const-wide v2, 0x3f60624dd2f1a9fcL

    int-to-double v4, v1

    mul-double v1, v2, v4

    int-to-double v3, v0

    div-double v0, v1, v3

    iput-wide v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->b:D

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/maps/driveabout/e/ab;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    aput-object v2, v0, v1

    sget v0, Lcom/google/glass/maps/bm;->map:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->c:Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->c:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->c:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->d:Lcom/google/glass/maps/ba;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->c:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    sget v0, Lcom/google/glass/maps/bm;->status:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->m:Lcom/google/glass/widget/TypophileTextView;

    new-instance v0, Lcom/google/glass/maps/directions/h;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/directions/h;-><init>(Lcom/google/glass/maps/directions/TransitMapView;)V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->o:Ljava/lang/Runnable;

    return-void

    :cond_0
    new-instance v2, Lcom/google/glass/maps/ba;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/glass/maps/ba;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->d:Lcom/google/glass/maps/ba;

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/al;Lcom/google/android/maps/driveabout/e/af;)Z
    .locals 11
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v10, 0x4

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->e()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    aput-object v3, v2, v10

    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v3

    iget-object v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/e/ab;->d(II)V

    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v3

    iget-object v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/e/ab;->d(II)V

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    move v3, v1

    move-object v4, v2

    :goto_1
    if-ge v3, v6, :cond_3

    invoke-virtual {p2, v3}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    move v2, v0

    :goto_2
    if-ge v2, v10, :cond_2

    iget-object v7, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/google/glass/maps/directions/TransitMapView;->l:[Lcom/google/android/maps/driveabout/e/ab;

    add-int/lit8 v9, v2, 0x1

    aget-object v8, v8, v9

    invoke-static {v4, v5, v7, v8}, Lcom/google/android/maps/driveabout/e/ad;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a([II)[[F
    .locals 5

    const/4 v4, 0x3

    filled-new-array {p1, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    new-array v2, v4, [F

    aput-object v2, v0, v1

    aget v2, p0, v1

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Lcom/google/glass/maps/c/b;->b(I[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/maps/directions/TransitMapView;)Lcom/google/glass/widget/TypophileTextView;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->m:Lcom/google/glass/widget/TypophileTextView;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/google/glass/maps/bs;->searching_for_gps:I

    :goto_0
    iget v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->n:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->n:I

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    sget v0, Lcom/google/glass/maps/bs;->timestamp_now_future:I

    goto :goto_0
.end method

.method public static setDefaultNavRender(Lcom/google/glass/maps/ba;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/google/glass/maps/directions/TransitMapView;->a:Lcom/google/glass/maps/ba;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->c:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->c:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0

    check-cast p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iput-object p1, p0, Lcom/google/glass/maps/directions/TransitMapView;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 11

    const/4 v4, 0x0

    const-wide v9, 0x3f60624dd2f1a9fcL

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->i:Lcom/google/glass/maps/directions/TransitMapView$State;

    sget-object v1, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_DELAYED:Lcom/google/glass/maps/directions/TransitMapView$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/TransitMapView$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/util/q;->a()Lcom/google/glass/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/util/o;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->ZOOMED_IN:Lcom/google/glass/maps/directions/TransitMapView$State;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->i:Lcom/google/glass/maps/directions/TransitMapView$State;

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/maps/directions/TransitMapView;->f()V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->i:Lcom/google/glass/maps/directions/TransitMapView$State;

    sget-object v1, Lcom/google/glass/maps/directions/TransitMapView$State;->ZOOMED_IN:Lcom/google/glass/maps/directions/TransitMapView$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/TransitMapView$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->b()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->g:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/google/glass/maps/directions/TransitMapView;->a(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->g:Z

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->d:Lcom/google/glass/maps/ba;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->j:Lcom/google/android/maps/driveabout/e/ab;

    sub-double v5, v0, v9

    iget-wide v7, p0, Lcom/google/glass/maps/directions/TransitMapView;->b:D

    sub-double v7, v2, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/maps/driveabout/e/ab;->b(DD)V

    iget-object v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->k:Lcom/google/android/maps/driveabout/e/ab;

    add-double v5, v0, v9

    iget-wide v7, p0, Lcom/google/glass/maps/directions/TransitMapView;->b:D

    add-double/2addr v7, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/maps/driveabout/e/ab;->b(DD)V

    new-instance v4, Lcom/google/android/maps/driveabout/e/al;

    iget-object v5, p0, Lcom/google/glass/maps/directions/TransitMapView;->j:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v6, p0, Lcom/google/glass/maps/directions/TransitMapView;->k:Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v4, v5, v6}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    iget-object v5, p0, Lcom/google/glass/maps/directions/TransitMapView;->f:Lcom/google/glass/maps/directions/i;

    iget-object v5, v5, Lcom/google/glass/maps/directions/i;->c:Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {p0, v4, v5}, Lcom/google/glass/maps/directions/TransitMapView;->a(Lcom/google/android/maps/driveabout/e/al;Lcom/google/android/maps/driveabout/e/af;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->d:Lcom/google/glass/maps/ba;

    invoke-virtual {v0, v4}, Lcom/google/glass/maps/ba;->a(Lcom/google/android/maps/driveabout/e/al;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/google/glass/maps/directions/TransitMapView;->j:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->b(DD)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->f:Lcom/google/glass/maps/directions/i;

    iget-object v0, v0, Lcom/google/glass/maps/directions/i;->c:Lcom/google/android/maps/driveabout/e/af;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->k:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(Lcom/google/android/maps/driveabout/e/ab;)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->d:Lcom/google/glass/maps/ba;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->j:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitMapView;->k:Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->a(Lcom/google/android/maps/driveabout/e/al;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/glass/maps/directions/i;Lcom/google/glass/location/f;)V
    .locals 3

    iput-object p1, p0, Lcom/google/glass/maps/directions/TransitMapView;->f:Lcom/google/glass/maps/directions/i;

    sget v0, Lcom/google/glass/maps/bm;->summary_icons:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/glass/maps/directions/i;->a(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/google/glass/maps/bm;->from_to_duration:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    invoke-static {v1, v2}, Lcom/google/glass/maps/directions/b;->a(Landroid/content/Context;[Lcom/google/glass/maps/directions/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/google/glass/maps/bm;->destination:I

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitMapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p1, Lcom/google/glass/maps/directions/i;->a:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ao;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->d:Lcom/google/glass/maps/ba;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->a(Lcom/google/glass/maps/directions/i;)Lcom/google/glass/maps/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->a(Lcom/google/glass/maps/b/h;)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->d:Lcom/google/glass/maps/ba;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->c(Z)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->d:Lcom/google/glass/maps/ba;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/ba;->b(J)V

    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {p2}, Lcom/google/glass/location/f;->a()Landroid/location/Location;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->d:Lcom/google/glass/maps/ba;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->e:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitMapView;->a(Z)V

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitMapView;->a()V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->g:Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_PINNED:Lcom/google/glass/maps/directions/TransitMapView$State;

    :goto_0
    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->i:Lcom/google/glass/maps/directions/TransitMapView$State;

    invoke-static {}, Lcom/google/glass/util/q;->a()Lcom/google/glass/util/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/util/o;->c()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->h:J

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->d:Lcom/google/glass/maps/ba;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitMapView;->f:Lcom/google/glass/maps/directions/i;

    iget-object v1, v1, Lcom/google/glass/maps/directions/i;->c:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/af;->a()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ba;->a(Lcom/google/android/maps/driveabout/e/al;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_DELAYED:Lcom/google/glass/maps/directions/TransitMapView$State;

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->c:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->c:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->g:Z

    return v0
.end method

.method public final d()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->i:Lcom/google/glass/maps/directions/TransitMapView$State;

    sget-object v1, Lcom/google/glass/maps/directions/TransitMapView$State;->OVERVIEW_PINNED:Lcom/google/glass/maps/directions/TransitMapView$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/TransitMapView$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    sget-object v0, Lcom/google/glass/maps/directions/TransitMapView$State;->ZOOMED_IN:Lcom/google/glass/maps/directions/TransitMapView$State;

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitMapView;->i:Lcom/google/glass/maps/directions/TransitMapView$State;

    return-void
.end method
