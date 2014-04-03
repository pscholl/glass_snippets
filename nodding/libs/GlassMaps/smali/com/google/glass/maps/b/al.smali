.class public final Lcom/google/glass/maps/b/al;
.super Lcom/google/glass/maps/b/am;


# instance fields
.field private final a:Lcom/google/glass/maps/b/ai;

.field private final b:Lcom/google/glass/maps/b/ak;

.field private final c:I

.field private final d:Lcom/google/glass/maps/b/x;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/b/ai;Lcom/google/glass/maps/b/ak;IIILcom/google/glass/maps/b/x;)V
    .locals 0

    invoke-direct {p0, p4, p5}, Lcom/google/glass/maps/b/am;-><init>(II)V

    iput-object p1, p0, Lcom/google/glass/maps/b/al;->a:Lcom/google/glass/maps/b/ai;

    iput-object p2, p0, Lcom/google/glass/maps/b/al;->b:Lcom/google/glass/maps/b/ak;

    iput p3, p0, Lcom/google/glass/maps/b/al;->c:I

    iput-object p6, p0, Lcom/google/glass/maps/b/al;->d:Lcom/google/glass/maps/b/x;

    return-void
.end method

.method public static a(Lcom/google/glass/maps/b/ai;Ljava/lang/String;Lcom/google/glass/maps/b/x;FFF)Lcom/google/glass/maps/b/al;
    .locals 11

    iget v0, p2, Lcom/google/glass/maps/b/x;->b:F

    mul-float/2addr v0, p3

    mul-float v0, v0, p5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v0, p2, Lcom/google/glass/maps/b/x;->a:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/glass/maps/b/ai;->a(Ljava/lang/String;Landroid/graphics/Typeface;I)I

    move-result v8

    iget-object v0, p2, Lcom/google/glass/maps/b/x;->a:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0, v3}, Lcom/google/glass/maps/b/ai;->a(Landroid/graphics/Typeface;I)I

    move-result v9

    iget v4, p2, Lcom/google/glass/maps/b/x;->c:I

    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {v4, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float/2addr v4, p4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    :cond_0
    new-instance v0, Lcom/google/glass/maps/b/ak;

    iget-object v2, p2, Lcom/google/glass/maps/b/x;->a:Landroid/graphics/Typeface;

    iget v5, p2, Lcom/google/glass/maps/b/x;->d:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/b/ak;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;III)V

    new-instance v4, Lcom/google/glass/maps/b/al;

    move-object v5, p0

    move-object v6, v0

    move v7, v3

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/glass/maps/b/al;-><init>(Lcom/google/glass/maps/b/ai;Lcom/google/glass/maps/b/ak;IIILcom/google/glass/maps/b/x;)V

    return-object v4
.end method


# virtual methods
.method public final a()Lcom/google/glass/maps/opengl/i;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/b/al;->a:Lcom/google/glass/maps/b/ai;

    iget-object v1, p0, Lcom/google/glass/maps/b/al;->b:Lcom/google/glass/maps/b/ak;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/b/ai;->a(Lcom/google/glass/maps/b/ak;)Lcom/google/glass/maps/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/i;->f()V

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/b/al;->c:I

    return v0
.end method

.method public final c()Lcom/google/glass/maps/b/x;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/al;->d:Lcom/google/glass/maps/b/x;

    return-object v0
.end method

.method public final d()Lcom/google/glass/maps/b/ai;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/b/al;->a:Lcom/google/glass/maps/b/ai;

    return-object v0
.end method
