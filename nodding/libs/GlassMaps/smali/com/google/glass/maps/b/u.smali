.class public final Lcom/google/glass/maps/b/u;
.super Lcom/google/glass/maps/b/o;


# instance fields
.field private e:Lcom/google/android/maps/driveabout/e/ab;

.field private f:Lcom/google/android/maps/driveabout/e/ab;

.field private final g:Lcom/google/glass/maps/b/am;

.field private final h:I

.field private final i:I

.field private j:Lcom/google/android/maps/driveabout/e/l;

.field private k:Lcom/google/glass/maps/b/b;

.field private l:Z

.field private final m:[F


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/e/j;Ljava/lang/String;ILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;ZFLcom/google/glass/maps/b/am;)V
    .locals 4

    const/high16 v3, 0x3e80

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/b/o;-><init>(Lcom/google/android/maps/driveabout/e/j;Ljava/lang/String;I)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/b/u;->m:[F

    iput-object p4, p0, Lcom/google/glass/maps/b/u;->e:Lcom/google/android/maps/driveabout/e/ab;

    iput-object p5, p0, Lcom/google/glass/maps/b/u;->f:Lcom/google/android/maps/driveabout/e/ab;

    iput-object p8, p0, Lcom/google/glass/maps/b/u;->g:Lcom/google/glass/maps/b/am;

    invoke-virtual {p8}, Lcom/google/glass/maps/b/am;->g()I

    move-result v1

    invoke-virtual {p8}, Lcom/google/glass/maps/b/am;->h()I

    move-result v0

    if-eqz p6, :cond_1

    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/j;->x()I

    move-result v2

    :goto_0
    if-le v0, v2, :cond_0

    int-to-float v1, v1

    mul-float v2, v3, p7

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    mul-float v2, v3, p7

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :cond_0
    iput v1, p0, Lcom/google/glass/maps/b/u;->h:I

    iput v0, p0, Lcom/google/glass/maps/b/u;->i:I

    return-void

    :cond_1
    const v2, 0x7fffffff

    goto :goto_0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ac;Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/b/v;Lcom/google/glass/maps/b/ai;)Lcom/google/glass/maps/b/u;
    .locals 9

    const/high16 v4, 0x3f80

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ac;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ac;->b()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ap;->d()Lcom/google/android/maps/driveabout/e/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/at;->b()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3dcccccd

    mul-float/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v2, p2, Lcom/google/glass/maps/b/v;->f:Lcom/google/glass/maps/b/x;

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->c()F

    move-result v5

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/maps/b/al;->a(Lcom/google/glass/maps/b/ai;Ljava/lang/String;Lcom/google/glass/maps/b/x;FFF)Lcom/google/glass/maps/b/al;

    move-result-object v8

    new-instance v0, Lcom/google/glass/maps/b/u;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ac;->d()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ac;->a()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->c()F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/maps/b/u;-><init>(Lcom/google/android/maps/driveabout/e/j;Ljava/lang/String;ILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;ZFLcom/google/glass/maps/b/am;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/an;Ljava/lang/String;Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/b/v;Landroid/graphics/Bitmap;)Lcom/google/glass/maps/b/u;
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/an;->a()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    const v1, 0x3f333333

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(F)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/an;->a()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(F)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    new-instance v8, Lcom/google/glass/maps/b/i;

    invoke-direct {v8, p4}, Lcom/google/glass/maps/b/i;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/google/glass/maps/b/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/an;->d()I

    move-result v3

    const/4 v6, 0x1

    invoke-virtual {p2}, Lcom/google/glass/maps/b/f;->c()F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/maps/b/u;-><init>(Lcom/google/android/maps/driveabout/e/j;Ljava/lang/String;ILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;ZFLcom/google/glass/maps/b/am;)V

    return-object v0
.end method

.method public static a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/g;->a()V

    const-string v0, "MVP"

    invoke-virtual {p0}, Lcom/google/glass/maps/b/f;->j()[F

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;[F)V

    const-string v0, "texture"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;I)V

    const-string v0, "displacement"

    sget-object v1, Lcom/google/glass/maps/b/ac;->c:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    return-void
.end method

.method private h()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/maps/b/u;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/glass/maps/b/b;

    invoke-direct {v0}, Lcom/google/glass/maps/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/u;->k:Lcom/google/glass/maps/b/b;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/b/u;->l:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/u;->g:Lcom/google/glass/maps/b/am;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/am;->e()V

    return-void
.end method

.method public final a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;J)V
    .locals 8

    const/high16 v5, 0x3f80

    iget-boolean v0, p0, Lcom/google/glass/maps/b/u;->l:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/maps/b/u;->h()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/b/u;->g:Lcom/google/glass/maps/b/am;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/am;->f()Lcom/google/glass/maps/opengl/i;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/b/u;->k:Lcom/google/glass/maps/b/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/b/u;->k:Lcom/google/glass/maps/b/b;

    invoke-virtual {v0, p3, p4}, Lcom/google/glass/maps/b/b;->a(J)F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/b/u;->k:Lcom/google/glass/maps/b/b;

    invoke-virtual {v1}, Lcom/google/glass/maps/b/b;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/maps/b/u;->k:Lcom/google/glass/maps/b/b;

    :cond_2
    move v6, v0

    :goto_1
    invoke-static {}, Lcom/google/glass/maps/b/aa;->a()Lcom/google/glass/maps/b/aa;

    move-result-object v0

    iget-object v0, v0, Lcom/google/glass/maps/b/aa;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/b/f;->a(Lcom/google/android/maps/driveabout/e/ab;)V

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->h()F

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/b/u;->e:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/google/glass/maps/b/u;->e:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/google/glass/maps/b/u;->e:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ab;->h()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->h()I

    move-result v0

    sub-int v0, v4, v0

    int-to-float v0, v0

    mul-float v4, v0, v1

    const-string v1, "pos"

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FFFF)V

    const-string v0, "size"

    iget v1, p0, Lcom/google/glass/maps/b/u;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/glass/maps/b/u;->i:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FF)V

    const-string v0, "viewSize"

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FF)V

    const-string v0, "maxTex"

    invoke-virtual {v7}, Lcom/google/glass/maps/opengl/i;->b()F

    move-result v1

    invoke-virtual {v7}, Lcom/google/glass/maps/opengl/i;->c()F

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FF)V

    const-string v0, "alpha"

    invoke-virtual {p2, v0, v6}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;F)V

    invoke-virtual {v7}, Lcom/google/glass/maps/opengl/i;->a()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0

    :cond_3
    move v6, v5

    goto :goto_1
.end method

.method public final a(Lcom/google/glass/maps/b/f;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f00

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->k()Lcom/google/android/maps/driveabout/e/bf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/maps/b/u;->e:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/bf;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/google/glass/maps/b/u;->h:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/google/glass/maps/b/u;->i:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/google/glass/maps/b/u;->h:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/google/glass/maps/b/u;->i:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/glass/maps/b/u;->e:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v7, p0, Lcom/google/glass/maps/b/u;->m:[F

    invoke-virtual {p1, v6, v7}, Lcom/google/glass/maps/b/f;->a(Lcom/google/android/maps/driveabout/e/ab;[F)V

    iget-object v6, p0, Lcom/google/glass/maps/b/u;->m:[F

    aget v0, v6, v0

    iget-object v6, p0, Lcom/google/glass/maps/b/u;->m:[F

    aget v6, v6, v1

    add-float/2addr v2, v0

    add-float/2addr v0, v4

    add-float/2addr v3, v6

    add-float v4, v6, v5

    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/google/glass/maps/b/f;->a(FFFF)Lcom/google/android/maps/driveabout/e/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/u;->j:Lcom/google/android/maps/driveabout/e/l;

    move v0, v1

    goto :goto_0
.end method

.method public final b(Lcom/google/glass/maps/b/f;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/u;->f:Lcom/google/android/maps/driveabout/e/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/u;->f:Lcom/google/android/maps/driveabout/e/ab;

    iput-object v0, p0, Lcom/google/glass/maps/b/u;->e:Lcom/google/android/maps/driveabout/e/ab;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/b/u;->f:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/b/u;->a(Lcom/google/glass/maps/b/f;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/maps/driveabout/e/am;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/u;->j:Lcom/google/android/maps/driveabout/e/l;

    return-object v0
.end method
