.class public final Lcom/google/glass/maps/opengl/c;
.super Lcom/google/glass/maps/opengl/a;


# instance fields
.field private final a:Ljava/nio/FloatBuffer;

.field private final b:[F


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/opengl/a;-><init>(IILcom/google/glass/maps/opengl/b;)V

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/opengl/c;->a:Ljava/nio/FloatBuffer;

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final a(FF)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    aput p1, v0, v3

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->a:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final a(FFF)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    aput p1, v0, v3

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->a:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final a(FI)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    aput p1, v0, v2

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    :goto_0
    if-lt p2, v3, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->a:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    add-int/lit8 p2, p2, -0x4

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->a:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/c;->b:[F

    invoke-virtual {v0, v1, v2, p2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    :cond_1
    return-void
.end method

.method public final a([F)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final a([FII)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final e()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/c;->a:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public final f()I
    .locals 1

    const/16 v0, 0x1406

    return v0
.end method
