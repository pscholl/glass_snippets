.class public final Lcom/google/glass/maps/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/e/ab;

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Lcom/google/glass/maps/b/d;

.field private g:Lcom/google/glass/maps/b/c;

.field private final h:Lcom/google/android/maps/driveabout/e/ab;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/ab;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/b/r;->e:I

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/r;->h:Lcom/google/android/maps/driveabout/e/ab;

    iput-object p1, p0, Lcom/google/glass/maps/b/r;->a:Lcom/google/android/maps/driveabout/e/ab;

    iput p2, p0, Lcom/google/glass/maps/b/r;->b:I

    iput p3, p0, Lcom/google/glass/maps/b/r;->c:I

    iput-boolean p4, p0, Lcom/google/glass/maps/b/r;->d:Z

    return-void
.end method

.method private static a(J)F
    .locals 4

    const/high16 v3, 0x4000

    const v2, 0x3f4ccccd

    const-wide/16 v0, 0x3e8

    rem-long v0, p0, v0

    long-to-float v0, v0

    const v1, 0x3a83126f

    mul-float/2addr v0, v1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    div-float/2addr v0, v3

    :goto_0
    return v0

    :cond_0
    const v1, 0x3ecccccd

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    sub-float v0, v1, v0

    goto :goto_0
.end method

.method private a(Lcom/google/glass/maps/b/r;)I
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/b/r;->c:I

    iget v1, p1, Lcom/google/glass/maps/b/r;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;Lcom/google/glass/maps/opengl/i;J)V
    .locals 6

    const/high16 v2, 0x4000

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/i;->e()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/glass/maps/b/f;->a()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/i;->e()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/glass/maps/b/f;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/i;->d()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/i;->e()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/i;->b()F

    move-result v3

    int-to-float v2, v2

    div-float v2, v3, v2

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/i;->c()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/g;->a()V

    const-string v4, "MVP"

    invoke-virtual {p0}, Lcom/google/glass/maps/b/f;->j()[F

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;[F)V

    const-string v4, "markerSize"

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FF)V

    const-string v0, "markerTexCoordSize"

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FF)V

    const-string v0, "pulseFactor"

    invoke-static {p3, p4}, Lcom/google/glass/maps/b/r;->a(J)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;F)V

    const-string v0, "markerTexture"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;I)V

    const-string v0, "displacement"

    sget-object v1, Lcom/google/glass/maps/b/ac;->c:Lcom/google/glass/maps/opengl/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;Lcom/google/glass/maps/opengl/a;)V

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/i;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/b/r;->a:Lcom/google/android/maps/driveabout/e/ab;

    return-void
.end method

.method public final a(Lcom/google/glass/maps/b/f;Lcom/google/glass/maps/opengl/g;J)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v5, 0x3f80

    iget-object v0, p0, Lcom/google/glass/maps/b/r;->g:Lcom/google/glass/maps/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/b/r;->g:Lcom/google/glass/maps/b/c;

    invoke-virtual {v0, p3, p4}, Lcom/google/glass/maps/b/c;->a(J)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/b/r;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v0, p0, Lcom/google/glass/maps/b/r;->g:Lcom/google/glass/maps/b/c;

    invoke-virtual {v0}, Lcom/google/glass/maps/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v8, p0, Lcom/google/glass/maps/b/r;->g:Lcom/google/glass/maps/b/c;

    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/maps/b/f;->h()F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/b/r;->h:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {p1, v1}, Lcom/google/glass/maps/b/f;->a(Lcom/google/android/maps/driveabout/e/ab;)V

    const-string v1, "location"

    iget-object v2, p0, Lcom/google/glass/maps/b/r;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/maps/b/r;->h:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/google/glass/maps/b/r;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v3

    iget-object v4, p0, Lcom/google/glass/maps/b/r;->h:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/google/glass/maps/b/r;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ab;->h()I

    move-result v4

    iget-object v6, p0, Lcom/google/glass/maps/b/r;->h:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/ab;->h()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v4, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FFFF)V

    const-string v0, "markerType"

    iget v1, p0, Lcom/google/glass/maps/b/r;->b:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;F)V

    const-string v1, "isPulse"

    iget-boolean v0, p0, Lcom/google/glass/maps/b/r;->d:Z

    if-eqz v0, :cond_3

    move v0, v5

    :goto_0
    invoke-virtual {p2, v1, v0}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;F)V

    iget v0, p0, Lcom/google/glass/maps/b/r;->e:I

    if-ne v0, v7, :cond_4

    const-string v0, "markerScale"

    invoke-virtual {p2, v0, v5, v5}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FF)V

    :cond_1
    :goto_1
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/b/r;->f:Lcom/google/glass/maps/b/d;

    if-eqz v0, :cond_2

    const-string v0, "markerScale"

    iget-object v1, p0, Lcom/google/glass/maps/b/r;->f:Lcom/google/glass/maps/b/d;

    invoke-virtual {v1, p3, p4}, Lcom/google/glass/maps/b/d;->b(J)F

    move-result v1

    invoke-virtual {p2, v0, v5, v1}, Lcom/google/glass/maps/opengl/g;->a(Ljava/lang/String;FF)V

    iget-object v0, p0, Lcom/google/glass/maps/b/r;->f:Lcom/google/glass/maps/b/d;

    invoke-virtual {v0, p3, p4}, Lcom/google/glass/maps/b/d;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v8, p0, Lcom/google/glass/maps/b/r;->f:Lcom/google/glass/maps/b/d;

    iget v0, p0, Lcom/google/glass/maps/b/r;->e:I

    if-nez v0, :cond_5

    iput v7, p0, Lcom/google/glass/maps/b/r;->e:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/glass/maps/b/r;->e:I

    goto :goto_1
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/b/r;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/glass/maps/b/r;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/b/r;->a(Lcom/google/glass/maps/b/r;)I

    move-result v0

    return v0
.end method
