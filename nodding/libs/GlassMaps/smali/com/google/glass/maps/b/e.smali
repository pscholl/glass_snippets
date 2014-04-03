.class public final Lcom/google/glass/maps/b/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/ab;

.field private final b:Lcom/google/android/maps/driveabout/e/ab;

.field private final c:Lcom/google/android/maps/driveabout/e/ab;

.field private final d:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/e;->a:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/e;->b:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/e;->c:Lcom/google/android/maps/driveabout/e/ab;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/b/e;->d:[F

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/d;Lcom/google/android/maps/driveabout/e/al;Lcom/google/glass/maps/opengl/c;Lcom/google/glass/maps/opengl/c;)V
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/d;->b()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ap;->c()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/d;->b()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/e/ap;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/b/e;->d:[F

    invoke-static {v0, v1}, Lcom/google/glass/maps/c/b;->a(I[F)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/d;->a()Lcom/google/android/maps/driveabout/e/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ay;->a()I

    move-result v7

    const/high16 v1, 0x3f80

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/al;->g()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v1, v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/e/al;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    move v1, v6

    :goto_0
    if-ge v1, v7, :cond_2

    iget-object v3, p0, Lcom/google/glass/maps/b/e;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v4, p0, Lcom/google/glass/maps/b/e;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v5, p0, Lcom/google/glass/maps/b/e;->c:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/e/ay;->a(ILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    iget-object v3, p0, Lcom/google/glass/maps/b/e;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    iget-object v4, p0, Lcom/google/glass/maps/b/e;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-virtual {p3, v3, v4}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    iget-object v3, p0, Lcom/google/glass/maps/b/e;->b:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    iget-object v4, p0, Lcom/google/glass/maps/b/e;->b:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-virtual {p3, v3, v4}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    iget-object v3, p0, Lcom/google/glass/maps/b/e;->c:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    iget-object v4, p0, Lcom/google/glass/maps/b/e;->c:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-virtual {p3, v3, v4}, Lcom/google/glass/maps/opengl/c;->a(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v6

    :goto_1
    mul-int/lit8 v1, v7, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/b/e;->d:[F

    const/4 v2, 0x3

    invoke-virtual {p4, v1, v6, v2}, Lcom/google/glass/maps/opengl/c;->a([FII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
