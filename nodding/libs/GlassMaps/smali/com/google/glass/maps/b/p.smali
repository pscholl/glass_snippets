.class public final Lcom/google/glass/maps/b/p;
.super Lcom/google/glass/maps/b/o;


# instance fields
.field private final e:Lcom/google/glass/maps/b/aa;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/glass/maps/b/al;

.field private final h:Lcom/google/android/maps/driveabout/e/af;

.field private i:Lcom/google/android/maps/driveabout/e/af;

.field private j:I

.field private k:Lcom/google/android/maps/driveabout/e/am;

.field private final l:F

.field private m:Lcom/google/glass/maps/opengl/c;

.field private n:Lcom/google/glass/maps/opengl/c;

.field private o:Lcom/google/glass/maps/opengl/c;

.field private p:Lcom/google/glass/maps/opengl/e;

.field private q:Lcom/google/glass/maps/opengl/c;

.field private r:Lcom/google/glass/maps/b/b;

.field private s:Z

.field private final t:[F


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/e/j;ILcom/google/android/maps/driveabout/e/af;FLcom/google/glass/maps/b/al;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lcom/google/glass/maps/b/o;-><init>(Lcom/google/android/maps/driveabout/e/j;Ljava/lang/String;I)V

    invoke-static {}, Lcom/google/glass/maps/b/aa;->a()Lcom/google/glass/maps/b/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/b/p;->j:I

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/b/p;->t:[F

    iput-object p1, p0, Lcom/google/glass/maps/b/p;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    iput-object p6, p0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    iput p5, p0, Lcom/google/glass/maps/b/p;->l:F

    return-void
.end method

.method private static a(F[FI)I
    .locals 4

    const/4 v3, 0x0

    aget v0, p1, p2

    sub-float v0, p0, v0

    cmpg-float v1, v0, v3

    if-gtz v1, :cond_2

    :cond_0
    :goto_0
    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    :cond_2
    cmpl-float v1, v0, v3

    if-lez v1, :cond_3

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_3

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    sub-float v1, p0, v1

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_1

    neg-float v1, v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    array-length v0, p1

    add-int/lit8 p2, v0, -0x1

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/af;FF)Lcom/google/android/maps/driveabout/e/af;
    .locals 12

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v6, v0, Lcom/google/glass/maps/b/aa;->e:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v7, v0, Lcom/google/glass/maps/b/aa;->f:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v8, v0, Lcom/google/glass/maps/b/aa;->g:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v9, v0, Lcom/google/glass/maps/b/aa;->h:Lcom/google/android/maps/driveabout/e/ab;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    const/4 v2, 0x0

    move v3, p3

    :goto_0
    if-ge v2, v10, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/e/af;->b(I)F

    move-result v4

    sub-float/2addr p2, v4

    const v5, 0x38d1b717

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_1

    const v5, -0x472e48e9

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    const/4 v0, 0x1

    const/high16 v5, 0x3f80

    div-float v4, p2, v4

    add-float/2addr v4, v5

    invoke-virtual {p1, v2, v9}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5, v8}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    invoke-static {v9, v8, v4, v6}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    :cond_0
    move v4, v2

    :goto_1
    if-ge v4, v10, :cond_8

    invoke-virtual {p1, v4}, Lcom/google/android/maps/driveabout/e/af;->b(I)F

    move-result v11

    sub-float v5, v3, v11

    const v3, 0x38d1b717

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_2

    const v3, 0x38d1b717

    cmpg-float v3, v5, v3

    if-gez v3, :cond_8

    const/4 v1, 0x1

    const/high16 v3, 0x3f80

    div-float/2addr v5, v11

    add-float/2addr v3, v5

    invoke-virtual {p1, v4, v9}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5, v8}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    invoke-static {v9, v8, v3, v7}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    move v3, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    sub-int v1, v4, v2

    add-int/lit8 v5, v1, 0x1

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_3
    add-int/2addr v5, v1

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :goto_4
    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x3

    new-array v5, v1, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v6, v5, v1}, Lcom/google/android/maps/driveabout/e/ab;->a([II)V

    :goto_5
    move v1, v0

    move v0, v2

    :goto_6
    if-gt v0, v4, :cond_5

    invoke-virtual {p1, v0, v8}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v5, v1}, Lcom/google/android/maps/driveabout/e/ab;->a([II)V

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_6

    :cond_1
    sub-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v7, v5, v1}, Lcom/google/android/maps/driveabout/e/ab;->a([II)V

    :cond_6
    invoke-static {v5}, Lcom/google/android/maps/driveabout/e/af;->a([I)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v3, v1

    goto :goto_2
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/an;Ljava/lang/String;Lcom/google/android/maps/driveabout/e/af;Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/b/v;Lcom/google/glass/maps/b/ai;)Lcom/google/glass/maps/b/p;
    .locals 7

    const/high16 v3, 0x3f80

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p4, Lcom/google/glass/maps/b/v;->e:Lcom/google/glass/maps/b/x;

    invoke-virtual {p3}, Lcom/google/glass/maps/b/f;->c()F

    move-result v5

    move-object v0, p5

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/maps/b/al;->a(Lcom/google/glass/maps/b/ai;Ljava/lang/String;Lcom/google/glass/maps/b/x;FFF)Lcom/google/glass/maps/b/al;

    move-result-object v6

    invoke-virtual {p3}, Lcom/google/glass/maps/b/f;->i()F

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    invoke-virtual {v6}, Lcom/google/glass/maps/b/al;->b()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    const v2, 0x3eb33333

    mul-float/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/e/af;->b(F)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v4

    :goto_0
    new-instance v0, Lcom/google/glass/maps/b/p;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/an;->d()I

    move-result v3

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/maps/b/p;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/e/j;ILcom/google/android/maps/driveabout/e/af;FLcom/google/glass/maps/b/al;)V

    invoke-direct {v0}, Lcom/google/glass/maps/b/p;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v4, p2

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v0, v0, Lcom/google/glass/maps/b/aa;->e:Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {p2, p1, v0}, Lcom/google/android/maps/driveabout/e/ad;->d(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    invoke-static {v0, p4}, Lcom/google/android/maps/driveabout/e/ad;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    invoke-static {p4, p3, p4}, Lcom/google/android/maps/driveabout/e/ad;->a(Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/glass/maps/opengl/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p4, v0}, Lcom/google/glass/maps/opengl/c;->a(F)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p4, v0}, Lcom/google/glass/maps/opengl/c;->a(F)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p4, v0}, Lcom/google/glass/maps/opengl/c;->a(F)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p4, v0}, Lcom/google/glass/maps/opengl/c;->a(F)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/e/af;F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v6, v2, Lcom/google/glass/maps/b/aa;->a:Lcom/google/android/maps/driveabout/e/ab;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v5, v2, Lcom/google/glass/maps/b/aa;->b:Lcom/google/android/maps/driveabout/e/ab;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v4, v2, Lcom/google/glass/maps/b/aa;->c:Lcom/google/android/maps/driveabout/e/ab;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v7, v2, Lcom/google/glass/maps/b/aa;->d:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    mul-int/lit8 v2, v9, 0x4

    mul-int/lit8 v3, v9, 0x6

    new-instance v10, Lcom/google/glass/maps/opengl/c;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v2}, Lcom/google/glass/maps/opengl/c;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    new-instance v10, Lcom/google/glass/maps/opengl/c;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v2}, Lcom/google/glass/maps/opengl/c;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    new-instance v10, Lcom/google/glass/maps/opengl/c;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v2}, Lcom/google/glass/maps/opengl/c;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/glass/maps/b/p;->m:Lcom/google/glass/maps/opengl/c;

    new-instance v2, Lcom/google/glass/maps/opengl/e;

    const/4 v10, 0x1

    invoke-direct {v2, v10, v3}, Lcom/google/glass/maps/opengl/e;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/maps/b/p;->p:Lcom/google/glass/maps/opengl/e;

    new-array v10, v8, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v10, v2

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    invoke-virtual {v6, v5}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;)V

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/glass/maps/b/p;->l:F

    div-float v11, v2, v3

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v9, :cond_0

    add-int/lit8 v12, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v4, v1, v7}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/maps/b/p;->m:Lcom/google/glass/maps/opengl/c;

    invoke-static {v5, v7, v6, v11, v12}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/glass/maps/opengl/c;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/maps/b/p;->m:Lcom/google/glass/maps/opengl/c;

    invoke-static {v4, v7, v6, v11, v12}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/glass/maps/opengl/c;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/maps/b/p;->p:Lcom/google/glass/maps/opengl/e;

    add-int/lit8 v13, v3, 0x1

    add-int/lit8 v14, v3, 0x2

    add-int/lit8 v15, v3, 0x3

    invoke-virtual {v12, v3, v13, v14, v15}, Lcom/google/glass/maps/opengl/e;->a(IIII)V

    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v12

    add-int/lit8 v13, v2, 0x1

    aget v14, v10, v2

    add-float/2addr v12, v14

    aput v12, v10, v13

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v2}, Lcom/google/glass/maps/b/al;->d()Lcom/google/glass/maps/b/ai;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/maps/b/p;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v4}, Lcom/google/glass/maps/b/al;->c()Lcom/google/glass/maps/b/x;

    move-result-object v4

    iget-object v4, v4, Lcom/google/glass/maps/b/x;->a:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v5}, Lcom/google/glass/maps/b/al;->b()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/glass/maps/b/ai;->b(Ljava/lang/String;Landroid/graphics/Typeface;I)[F

    move-result-object v5

    const/high16 v2, 0x3f80

    array-length v3, v5

    add-int/lit8 v3, v3, -0x1

    aget v3, v5, v3

    div-float v3, v2, v3

    const/4 v2, 0x0

    :goto_1
    array-length v4, v5

    if-ge v2, v4, :cond_1

    aget v4, v5, v2

    mul-float/2addr v4, v3

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f80

    array-length v3, v10

    add-int/lit8 v3, v3, -0x1

    aget v3, v10, v3

    div-float v3, v2, v3

    new-array v6, v8, [F

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_2

    aget v4, v10, v2

    mul-float/2addr v4, v3

    aput v4, v10, v2

    add-int/lit8 v4, v8, -0x1

    sub-int/2addr v4, v2

    const/high16 v7, 0x3f80

    aget v9, v10, v2

    sub-float/2addr v7, v9

    aput v7, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_3

    aget v7, v10, v2

    invoke-static {v7, v5, v4}, Lcom/google/glass/maps/b/p;->a(F[FI)I

    move-result v4

    aget v7, v5, v4

    aput v7, v10, v2

    aget v7, v6, v2

    invoke-static {v7, v5, v3}, Lcom/google/glass/maps/b/p;->a(F[FI)I

    move-result v3

    aget v7, v5, v3

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v2}, Lcom/google/glass/maps/b/al;->i()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v2}, Lcom/google/glass/maps/b/al;->j()F

    move-result v4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_5

    aget v5, v10, v2

    mul-float/2addr v5, v3

    sub-int v7, v8, v2

    add-int/lit8 v7, v7, -0x1

    aget v7, v6, v7

    mul-float/2addr v7, v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v11}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v9, v5, v4}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v9, v7, v4}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v11}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    if-lez v2, :cond_4

    add-int/lit8 v9, v8, -0x1

    if-ge v2, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v11}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v9, v5, v4}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v5, v7, v4}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v2}, Lcom/google/glass/maps/opengl/c;->d()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v2}, Lcom/google/glass/maps/opengl/c;->d()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/b/p;->m:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v2}, Lcom/google/glass/maps/opengl/c;->d()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/b/p;->p:Lcom/google/glass/maps/opengl/e;

    invoke-virtual {v2}, Lcom/google/glass/maps/opengl/e;->d()V

    return-void
.end method

.method public static a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/g;->a()V

    const-string v0, "MVP"

    invoke-virtual {p0}, Lcom/google/glass/maps/b/f;->j()[F

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;[F)V

    const-string v0, "scale"

    invoke-virtual {p0}, Lcom/google/glass/maps/b/f;->h()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;F)V

    const-string v0, "displacement"

    sget-object v1, Lcom/google/glass/maps/b/ac;->c:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/af;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    const/4 v2, 0x2

    if-ge v3, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/af;->c(I)F

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/e/af;->c(I)F

    move-result v5

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x4270

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    const/high16 v6, 0x4396

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private c(Lcom/google/glass/maps/b/f;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v0, v0, Lcom/google/glass/maps/b/aa;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v1, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v1, v1, Lcom/google/glass/maps/b/aa;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v2, v4, v0}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/e/af;->a(Lcom/google/android/maps/driveabout/e/ab;)V

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->t:[F

    invoke-virtual {p1, v0, v2}, Lcom/google/glass/maps/b/f;->a(Lcom/google/android/maps/driveabout/e/ab;[F)V

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->t:[F

    aget v0, v0, v4

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->t:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/google/glass/maps/b/p;->t:[F

    invoke-virtual {p1, v1, v3}, Lcom/google/glass/maps/b/f;->a(Lcom/google/android/maps/driveabout/e/ab;[F)V

    iget-object v1, p0, Lcom/google/glass/maps/b/p;->t:[F

    aget v3, v1, v4

    sub-float v0, v3, v0

    aput v0, v1, v4

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->t:[F

    aget v1, v0, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    return-void
.end method

.method private h()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v2}, Lcom/google/glass/maps/b/al;->g()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/glass/maps/b/p;->l:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/af;->d()F

    move-result v3

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v4, p0, Lcom/google/glass/maps/b/p;->j:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/glass/maps/b/p;->j:I

    :cond_2
    iget v4, p0, Lcom/google/glass/maps/b/p;->j:I

    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    iget v4, p0, Lcom/google/glass/maps/b/p;->j:I

    if-le v4, v1, :cond_3

    const/high16 v4, 0x4000

    mul-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_0

    :cond_3
    iget v4, p0, Lcom/google/glass/maps/b/p;->j:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    const/high16 v4, 0x4040

    mul-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/google/glass/maps/b/p;->k()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    iget-object v4, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/google/glass/maps/b/p;->m()V

    move v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/maps/b/p;->j()V

    invoke-virtual {p0}, Lcom/google/glass/maps/b/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/glass/maps/b/b;

    invoke-direct {v0}, Lcom/google/glass/maps/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/p;->r:Lcom/google/glass/maps/b/b;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/b/p;->s:Z

    return-void
.end method

.method private j()V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/al;->h()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/glass/maps/b/p;->l:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v1

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v1, v1, Lcom/google/glass/maps/b/aa;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v2, v2, Lcom/google/glass/maps/b/aa;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v3, v3, Lcom/google/glass/maps/b/aa;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v4, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v4, v9, v1}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    iget-object v4, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v4, v8, v2}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    new-instance v0, Lcom/google/glass/maps/opengl/c;

    invoke-direct {v0, v7, v5}, Lcom/google/glass/maps/opengl/c;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    new-instance v0, Lcom/google/glass/maps/opengl/c;

    invoke-direct {v0, v7, v5}, Lcom/google/glass/maps/opengl/c;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    new-instance v0, Lcom/google/glass/maps/opengl/c;

    invoke-direct {v0, v7, v5}, Lcom/google/glass/maps/opengl/c;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/b/p;->m:Lcom/google/glass/maps/opengl/c;

    new-instance v0, Lcom/google/glass/maps/opengl/e;

    const/4 v4, 0x6

    invoke-direct {v0, v8, v4}, Lcom/google/glass/maps/opengl/e;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/b/p;->p:Lcom/google/glass/maps/opengl/e;

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/al;->i()F

    move-result v0

    iget-object v4, p0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v4}, Lcom/google/glass/maps/b/al;->j()F

    move-result v4

    iget-object v5, p0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v5, v6, v6}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    iget-object v5, p0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v5, v6, v4}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    iget-object v5, p0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v5, v0, v6}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    iget-object v5, p0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v5, v0, v4}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    iget-object v5, p0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v5, v0, v4}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    iget-object v5, p0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v5, v0, v6}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0, v6, v4}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0, v6, v6}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    const/high16 v0, 0x3f80

    iget v4, p0, Lcom/google/glass/maps/b/p;->l:F

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/google/glass/maps/b/p;->m:Lcom/google/glass/maps/opengl/c;

    invoke-static {v1, v3, v1, v0, v4}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/glass/maps/opengl/c;)V

    iget-object v4, p0, Lcom/google/glass/maps/b/p;->m:Lcom/google/glass/maps/opengl/c;

    invoke-static {v2, v3, v1, v0, v4}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/glass/maps/opengl/c;)V

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->p:Lcom/google/glass/maps/opengl/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v9, v8, v7, v1}, Lcom/google/glass/maps/opengl/e;->a(IIII)V

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/c;->d()V

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/c;->d()V

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->m:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/c;->d()V

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->p:Lcom/google/glass/maps/opengl/e;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/e;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {p0, v1, v0}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/af;F)V

    goto :goto_0
.end method

.method private k()Lcom/google/android/maps/driveabout/e/af;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/glass/maps/b/p;->l()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/google/glass/maps/b/p;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/af;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private l()Lcom/google/android/maps/driveabout/e/af;
    .locals 9

    const/high16 v5, 0x4000

    const/high16 v8, 0x3e80

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/al;->g()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/glass/maps/b/p;->l:F

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget v0, p0, Lcom/google/glass/maps/b/p;->j:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/e/af;->b(I)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v2, v2, Lcom/google/glass/maps/b/aa;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v4, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v4, v4, Lcom/google/glass/maps/b/aa;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v5, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v5, v5, Lcom/google/glass/maps/b/aa;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v6, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v6, v6, Lcom/google/glass/maps/b/aa;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v7, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v7, v0, v5}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    iget-object v7, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0, v6}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    sub-float v0, v3, v1

    div-float/2addr v0, v3

    mul-float v1, v0, v8

    invoke-static {v5, v6, v1, v2}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    const/high16 v1, 0x3f40

    mul-float/2addr v0, v1

    invoke-static {v6, v5, v0, v4}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    invoke-static {v2, v4}, Lcom/google/android/maps/driveabout/e/af;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/b/p;->j:I

    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->d()F

    move-result v0

    iget v2, p0, Lcom/google/glass/maps/b/p;->j:I

    packed-switch v2, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    sub-float/2addr v0, v1

    mul-float/2addr v0, v8

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/af;FF)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/google/glass/maps/b/p;->l:F

    mul-float/2addr v2, v5

    iget-object v3, p0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v3}, Lcom/google/glass/maps/b/al;->b()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/af;FF)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x0

    sub-float/2addr v0, v1

    iget v3, p0, Lcom/google/glass/maps/b/p;->l:F

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v4}, Lcom/google/glass/maps/b/al;->b()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/af;FF)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    sub-float/2addr v0, v1

    const v2, 0x3ea8f5c3

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/af;FF)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    sub-float/2addr v0, v1

    const v2, 0x3f2b851f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->h:Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/maps/b/p;->a(Lcom/google/android/maps/driveabout/e/af;FF)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private m()V
    .locals 12

    const/4 v1, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v2, v0, Lcom/google/glass/maps/b/aa;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v3, v0, Lcom/google/glass/maps/b/aa;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v4, v0, Lcom/google/glass/maps/b/aa;->c:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v5, v0, Lcom/google/glass/maps/b/aa;->d:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v6

    iget v0, p0, Lcom/google/glass/maps/b/p;->l:F

    iget-object v7, p0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v7}, Lcom/google/glass/maps/b/al;->b()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v0, v7

    const v7, 0x3f99999a

    mul-float/2addr v0, v7

    const/high16 v7, 0x4000

    div-float v7, v0, v7

    mul-int/lit8 v0, v6, 0x2

    new-array v8, v0, [Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0, v11, v5}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_1

    iget-object v9, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v9, v0, v4}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    invoke-static {v4, v5, v2}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    invoke-static {v2, v7, v3}, Lcom/google/android/maps/driveabout/e/ad;->b(Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    invoke-virtual {v4, v3}, Lcom/google/android/maps/driveabout/e/ab;->f(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v9

    aput-object v9, v8, v0

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v9, v0

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v3}, Lcom/google/android/maps/driveabout/e/ab;->e(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v10

    aput-object v10, v8, v9

    if-ne v0, v1, :cond_0

    invoke-virtual {v5, v3}, Lcom/google/android/maps/driveabout/e/ab;->f(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v9

    aput-object v9, v8, v11

    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v3}, Lcom/google/android/maps/driveabout/e/ab;->e(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v10

    aput-object v10, v8, v9

    :cond_0
    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/e/ae;

    invoke-direct {v0, v8}, Lcom/google/android/maps/driveabout/e/ae;-><init>([Lcom/google/android/maps/driveabout/e/ab;)V

    iput-object v0, p0, Lcom/google/glass/maps/b/p;->k:Lcom/google/android/maps/driveabout/e/am;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/al;->e()V

    return-void
.end method

.method public final a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;J)V
    .locals 8

    const/4 v7, 0x0

    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/google/glass/maps/b/p;->s:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/glass/maps/b/p;->i()V

    :cond_0
    iget-object v2, p0, Lcom/google/glass/maps/b/p;->q:Lcom/google/glass/maps/opengl/c;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->f()F

    move-result v2

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->e()F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/maps/b/p;->c(Lcom/google/glass/maps/b/f;)V

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->t:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/google/glass/maps/b/p;->t:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_6

    move v2, v1

    :goto_0
    cmpl-float v5, v3, v6

    if-ltz v5, :cond_2

    move v0, v1

    :cond_2
    mul-float/2addr v3, v0

    div-float/2addr v3, v4

    sub-float v3, v1, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/glass/maps/b/p;->q:Lcom/google/glass/maps/opengl/c;

    if-nez v3, :cond_3

    cmpl-float v0, v0, v6

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    :goto_1
    iput-object v0, p0, Lcom/google/glass/maps/b/p;->q:Lcom/google/glass/maps/opengl/c;

    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/b/p;->q:Lcom/google/glass/maps/opengl/c;

    iget-object v3, p0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    if-ne v0, v3, :cond_9

    const v0, 0x3a83126f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    :goto_2
    iput-object v0, p0, Lcom/google/glass/maps/b/p;->q:Lcom/google/glass/maps/opengl/c;

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/google/glass/maps/b/p;->r:Lcom/google/glass/maps/b/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->r:Lcom/google/glass/maps/b/b;

    invoke-virtual {v0, p3, p4}, Lcom/google/glass/maps/b/b;->a(J)F

    move-result v0

    iget-object v2, p0, Lcom/google/glass/maps/b/p;->r:Lcom/google/glass/maps/b/b;

    invoke-virtual {v2}, Lcom/google/glass/maps/b/b;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/maps/b/p;->r:Lcom/google/glass/maps/b/b;

    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v2, v2, Lcom/google/glass/maps/b/aa;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v3, v3, Lcom/google/glass/maps/b/aa;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v4, p0, Lcom/google/glass/maps/b/p;->e:Lcom/google/glass/maps/b/aa;

    iget-object v4, v4, Lcom/google/glass/maps/b/aa;->c:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p1, v4}, Lcom/google/glass/maps/b/f;->a(Lcom/google/android/maps/driveabout/e/ab;)V

    iget-object v5, p0, Lcom/google/glass/maps/b/p;->i:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v5, v7, v2}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    invoke-static {v2, v4, v3}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    iget v2, p0, Lcom/google/glass/maps/b/p;->l:F

    div-float/2addr v1, v2

    invoke-static {v3, v1, v3}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    const-string v1, "scale"

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->h()F

    move-result v2

    iget v4, p0, Lcom/google/glass/maps/b/p;->l:F

    mul-float/2addr v2, v4

    invoke-virtual {p2, v1, v2}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;F)V

    const-string v1, "origin"

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v1, v2, v3}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FF)V

    const-string v1, "alpha"

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;F)V

    const-string v0, "position"

    iget-object v1, p0, Lcom/google/glass/maps/b/p;->m:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    const-string v0, "texCoord"

    iget-object v1, p0, Lcom/google/glass/maps/b/p;->q:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->g:Lcom/google/glass/maps/b/al;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/al;->f()Lcom/google/glass/maps/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/i;->a()V

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->p:Lcom/google/glass/maps/opengl/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/e;->a(I)V

    return-void

    :cond_6
    move v2, v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    goto :goto_2

    :cond_9
    const v0, -0x457ced91

    cmpg-float v0, v2, v0

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->o:Lcom/google/glass/maps/opengl/c;

    :goto_5
    iput-object v0, p0, Lcom/google/glass/maps/b/p;->q:Lcom/google/glass/maps/opengl/c;

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/glass/maps/b/p;->n:Lcom/google/glass/maps/opengl/c;

    goto :goto_5

    :cond_b
    move v0, v1

    goto :goto_4
.end method

.method public final a(Lcom/google/glass/maps/b/f;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->g()F

    move-result v1

    const/high16 v2, 0x4160

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->i()F

    move-result v1

    iget v2, p0, Lcom/google/glass/maps/b/p;->l:F

    div-float/2addr v1, v2

    const v2, 0x3f666666

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3fa0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/google/glass/maps/b/f;)Z
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/b/p;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/b/p;->j:I

    invoke-direct {p0}, Lcom/google/glass/maps/b/p;->h()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/e/am;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/p;->k:Lcom/google/android/maps/driveabout/e/am;

    return-object v0
.end method

.method public final f()I
    .locals 2

    invoke-super {p0}, Lcom/google/glass/maps/b/o;->f()I

    move-result v1

    iget v0, p0, Lcom/google/glass/maps/b/p;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
