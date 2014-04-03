.class public final Lcom/google/glass/maps/b/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/glass/maps/b/v;

.field private final b:[F

.field private final c:[F

.field private final d:Lcom/google/android/maps/driveabout/e/av;

.field private final e:Lcom/google/android/maps/driveabout/e/al;

.field private f:Ljava/util/ArrayList;

.field private final g:[F

.field private h:Lcom/google/glass/maps/opengl/c;

.field private i:Lcom/google/glass/maps/opengl/c;

.field private j:Lcom/google/glass/maps/opengl/c;

.field private k:Lcom/google/glass/maps/opengl/f;

.field private l:Lcom/google/glass/maps/opengl/c;

.field private m:Lcom/google/glass/maps/opengl/c;

.field private n:Landroid/graphics/Bitmap;

.field private o:Lcom/google/glass/maps/opengl/i;

.field private p:J

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/glass/maps/b/v;)V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->b:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->c:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->g:[F

    iput-object p2, p0, Lcom/google/glass/maps/b/y;->a:Lcom/google/glass/maps/b/v;

    iput-object p1, p0, Lcom/google/glass/maps/b/y;->d:Lcom/google/android/maps/driveabout/e/av;

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->d:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->e()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->e:Lcom/google/android/maps/driveabout/e/al;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/e/bd;Lcom/google/glass/maps/b/v;)V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->b:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->c:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->g:[F

    iput-object p2, p0, Lcom/google/glass/maps/b/y;->a:Lcom/google/glass/maps/b/v;

    iget v0, p2, Lcom/google/glass/maps/b/v;->b:I

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->c:[F

    invoke-static {v0, v1}, Lcom/google/glass/maps/c/b;->a(I[F)V

    iget v0, p2, Lcom/google/glass/maps/b/v;->c:I

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->b:[F

    invoke-static {v0, v1}, Lcom/google/glass/maps/c/b;->a(I[F)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/bd;->a()Lcom/google/android/maps/driveabout/e/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->d:Lcom/google/android/maps/driveabout/e/av;

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->d:Lcom/google/android/maps/driveabout/e/av;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/av;->e()Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->e:Lcom/google/android/maps/driveabout/e/al;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b/y;->a(Lcom/google/android/maps/driveabout/e/bd;)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b/y;->b(Lcom/google/android/maps/driveabout/e/bd;)V

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b/y;->c(Lcom/google/android/maps/driveabout/e/bd;)V

    return-void
.end method

.method private a(FI)F
    .locals 3

    const/high16 v0, 0x3f00

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->a:Lcom/google/glass/maps/b/v;

    iget v1, v1, Lcom/google/glass/maps/b/v;->d:F

    mul-float/2addr v0, v1

    int-to-float v1, p2

    mul-float/2addr v1, p1

    const/high16 v2, 0x4380

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private a(J)F
    .locals 7

    const-wide/16 v5, -0x1

    const/high16 v0, 0x3f80

    iget-wide v1, p0, Lcom/google/glass/maps/b/y;->p:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-wide v1, p0, Lcom/google/glass/maps/b/y;->p:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iput-wide p1, p0, Lcom/google/glass/maps/b/y;->p:J

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/google/glass/maps/b/y;->p:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iput-wide v5, p0, Lcom/google/glass/maps/b/y;->p:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/google/glass/maps/b/y;->p:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x4348

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/an;)F
    .locals 3

    const v0, 0x3f666666

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/an;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/an;->g()I

    move-result v1

    const/16 v2, 0x10

    if-gt v1, v2, :cond_2

    const v0, 0x3f19999a

    goto :goto_0

    :cond_2
    const/16 v2, 0x30

    if-gt v1, v2, :cond_3

    const v0, 0x3f333333

    goto :goto_0

    :cond_3
    const/16 v2, 0x70

    if-le v1, v2, :cond_0

    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/ap;)F
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ap;->b()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/ap;->a(I)F

    move-result v0

    :cond_0
    return v0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/ak;)V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ak;->a()I

    move-result v0

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ak;->e()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ak;->e()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->n:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MiniMapTile"

    const-string v1, "Out of memory decoding raster!"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/bd;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/bd;->d()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/e/bd;->a(I)Lcom/google/android/maps/driveabout/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/e/j;->c()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    check-cast v0, Lcom/google/android/maps/driveabout/e/an;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/an;->b()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ap;->b()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/an;->a()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/maps/b/ad;->a(Lcom/google/android/maps/driveabout/e/af;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/an;->a()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/b/ad;->b(Lcom/google/android/maps/driveabout/e/af;)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_1

    :pswitch_1
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/e/j;->b()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ap;->c()I

    move-result v5

    if-lez v5, :cond_0

    check-cast v0, Lcom/google/android/maps/driveabout/e/d;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/d;->a()Lcom/google/android/maps/driveabout/e/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ay;->b()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/glass/maps/opengl/c;

    invoke-direct {v0, v8, v4}, Lcom/google/glass/maps/opengl/c;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->h:Lcom/google/glass/maps/opengl/c;

    new-instance v0, Lcom/google/glass/maps/opengl/c;

    invoke-direct {v0, v6, v4}, Lcom/google/glass/maps/opengl/c;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->i:Lcom/google/glass/maps/opengl/c;

    new-instance v0, Lcom/google/glass/maps/opengl/c;

    invoke-direct {v0, v7, v4}, Lcom/google/glass/maps/opengl/c;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->j:Lcom/google/glass/maps/opengl/c;

    new-instance v0, Lcom/google/glass/maps/opengl/f;

    invoke-direct {v0, v6, v3}, Lcom/google/glass/maps/opengl/f;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->k:Lcom/google/glass/maps/opengl/f;

    new-instance v0, Lcom/google/glass/maps/opengl/c;

    invoke-direct {v0, v7, v2}, Lcom/google/glass/maps/opengl/c;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->l:Lcom/google/glass/maps/opengl/c;

    new-instance v0, Lcom/google/glass/maps/opengl/c;

    invoke-direct {v0, v8, v2}, Lcom/google/glass/maps/opengl/c;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->m:Lcom/google/glass/maps/opengl/c;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/google/glass/maps/b/ad;Lcom/google/android/maps/driveabout/e/an;)V
    .locals 10

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->e:Lcom/google/android/maps/driveabout/e/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/al;->g()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/an;->b()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/b/y;->a(Lcom/google/android/maps/driveabout/e/ap;)F

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/glass/maps/b/y;->a(FI)F

    move-result v2

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->h:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v1}, Lcom/google/glass/maps/opengl/c;->c()I

    move-result v9

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/an;->a()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/maps/b/y;->e:Lcom/google/android/maps/driveabout/e/al;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/al;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/glass/maps/b/y;->h:Lcom/google/glass/maps/opengl/c;

    iget-object v6, p0, Lcom/google/glass/maps/b/y;->j:Lcom/google/glass/maps/opengl/c;

    iget-object v7, p0, Lcom/google/glass/maps/b/y;->k:Lcom/google/glass/maps/opengl/f;

    const/4 v8, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/maps/b/ad;->a(Lcom/google/android/maps/driveabout/e/af;FLcom/google/android/maps/driveabout/e/ab;FLcom/google/glass/maps/opengl/c;Lcom/google/glass/maps/opengl/c;Lcom/google/glass/maps/opengl/f;Z)V

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->h:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/c;->c()I

    move-result v0

    sub-int/2addr v0, v9

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->i:Lcom/google/glass/maps/opengl/c;

    invoke-static {p2}, Lcom/google/glass/maps/b/y;->a(Lcom/google/android/maps/driveabout/e/an;)F

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/maps/opengl/c;->a(FI)V

    return-void
.end method

.method public static a(Lcom/google/glass/maps/opengl/g;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/g;->a()V

    const-string v0, "texture"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;I)V

    const-string v0, "position"

    sget-object v1, Lcom/google/glass/maps/b/ac;->a:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    return-void
.end method

.method public static a(Lcom/google/glass/maps/opengl/g;Lcom/google/glass/maps/opengl/i;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/g;->a()V

    const-string v0, "roadTexture"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/i;->a()V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/e/bd;)V
    .locals 8

    new-instance v2, Lcom/google/glass/maps/b/ad;

    invoke-direct {v2}, Lcom/google/glass/maps/b/ad;-><init>()V

    new-instance v3, Lcom/google/glass/maps/b/e;

    invoke-direct {v3}, Lcom/google/glass/maps/b/e;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/bd;->d()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/e/bd;->a(I)Lcom/google/android/maps/driveabout/e/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/e/j;->c()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    check-cast v0, Lcom/google/android/maps/driveabout/e/an;

    invoke-direct {p0, v2, v0}, Lcom/google/glass/maps/b/y;->a(Lcom/google/glass/maps/b/ad;Lcom/google/android/maps/driveabout/e/an;)V

    iget v0, p0, Lcom/google/glass/maps/b/y;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/b/y;->q:I

    goto :goto_1

    :pswitch_2
    check-cast v0, Lcom/google/android/maps/driveabout/e/d;

    iget-object v5, p0, Lcom/google/glass/maps/b/y;->e:Lcom/google/android/maps/driveabout/e/al;

    iget-object v6, p0, Lcom/google/glass/maps/b/y;->l:Lcom/google/glass/maps/opengl/c;

    iget-object v7, p0, Lcom/google/glass/maps/b/y;->m:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v3, v0, v5, v6, v7}, Lcom/google/glass/maps/b/e;->a(Lcom/google/android/maps/driveabout/e/d;Lcom/google/android/maps/driveabout/e/al;Lcom/google/glass/maps/opengl/c;Lcom/google/glass/maps/opengl/c;)V

    iget v0, p0, Lcom/google/glass/maps/b/y;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/b/y;->r:I

    goto :goto_1

    :pswitch_3
    check-cast v0, Lcom/google/android/maps/driveabout/e/ak;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/b/y;->a(Lcom/google/android/maps/driveabout/e/ak;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/b/y;->h:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/c;->d()V

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->i:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/c;->d()V

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->j:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/c;->d()V

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->k:Lcom/google/glass/maps/opengl/f;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/f;->d()V

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->l:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/c;->d()V

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->m:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/c;->d()V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Lcom/google/glass/maps/opengl/g;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/g;->a()V

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/e/bd;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/bd;->d()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/e/bd;->a(I)Lcom/google/android/maps/driveabout/e/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/e/j;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :sswitch_0
    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/e/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ac;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/e/an;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/an;->e()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/glass/maps/b/ac;->b()V

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->o:Lcom/google/glass/maps/opengl/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->o:Lcom/google/glass/maps/opengl/i;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/i;->g()V

    iput-object v1, p0, Lcom/google/glass/maps/b/y;->o:Lcom/google/glass/maps/opengl/i;

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/b/y;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/google/glass/maps/b/y;->n:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/glass/maps/b/f;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->j()[F

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->g:[F

    iget-object v2, p0, Lcom/google/glass/maps/b/y;->g:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->g:[F

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->e:Lcom/google/android/maps/driveabout/e/al;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/al;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/b/y;->e:Lcom/google/android/maps/driveabout/e/al;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/al;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, p1, v1, v2}, Lcom/google/glass/maps/b/ac;->a([FLcom/google/glass/maps/b/f;Lcom/google/android/maps/driveabout/e/ab;F)V

    return-void
.end method

.method public final a(Lcom/google/glass/maps/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/c/h;->a(Ljava/util/Iterator;)V

    return-void
.end method

.method public final a(Lcom/google/glass/maps/opengl/g;J)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->o:Lcom/google/glass/maps/opengl/i;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/glass/maps/opengl/i;

    invoke-direct {v0}, Lcom/google/glass/maps/opengl/i;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->o:Lcom/google/glass/maps/opengl/i;

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->o:Lcom/google/glass/maps/opengl/i;

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/i;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/b/y;->n:Landroid/graphics/Bitmap;

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/glass/maps/b/y;->a(J)F

    move-result v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;F)V

    const-string v0, "MVP"

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->g:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;[F)V

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->o:Lcom/google/glass/maps/opengl/i;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/i;->a()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0
.end method

.method public final a(Lcom/google/glass/maps/opengl/g;JZ)V
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->h:Lcom/google/glass/maps/opengl/c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->a:Lcom/google/glass/maps/b/v;

    iget v0, v0, Lcom/google/glass/maps/b/v;->c:I

    if-eqz v0, :cond_0

    :cond_2
    if-nez p4, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->a:Lcom/google/glass/maps/b/v;

    iget v0, v0, Lcom/google/glass/maps/b/v;->b:I

    if-eqz v0, :cond_0

    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/google/glass/maps/b/y;->a(J)F

    move-result v5

    if-eqz p4, :cond_4

    const-string v1, "baseColor"

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->b:[F

    aget v2, v0, v6

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->b:[F

    aget v3, v0, v7

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->b:[F

    aget v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FFFF)V

    const-string v0, "fillWidth"

    const/high16 v1, 0x3f80

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;F)V

    const-string v0, "ignoreValue"

    invoke-virtual {p1, v0, v7}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;I)V

    :goto_1
    const-string v0, "MVP"

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->g:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;[F)V

    const-string v0, "position"

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->h:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    const-string v0, "value"

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->i:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    const-string v0, "texCoord"

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->j:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->k:Lcom/google/glass/maps/opengl/f;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/f;->a(I)V

    goto :goto_0

    :cond_4
    const-string v1, "baseColor"

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->c:[F

    aget v2, v0, v6

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->c:[F

    aget v3, v0, v7

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->c:[F

    aget v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FFFF)V

    const-string v0, "fillWidth"

    const v1, 0x3f59999a

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;F)V

    const-string v0, "ignoreValue"

    invoke-virtual {p1, v0, v6}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public final b(Lcom/google/glass/maps/opengl/g;J)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->l:Lcom/google/glass/maps/opengl/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/glass/maps/b/y;->a(J)F

    move-result v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;F)V

    const-string v0, "MVP"

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->g:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;[F)V

    const-string v0, "position"

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->l:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    const-string v0, "color"

    iget-object v1, p0, Lcom/google/glass/maps/b/y;->m:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/b/y;->l:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v2}, Lcom/google/glass/maps/opengl/c;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/y;->o:Lcom/google/glass/maps/opengl/i;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/maps/b/y;->p:J

    return-void
.end method
