.class abstract Lcom/google/glass/maps/opengl/d;
.super Lcom/google/glass/maps/opengl/a;


# instance fields
.field private final a:Ljava/nio/IntBuffer;

.field private final b:[I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/opengl/a;-><init>(IILcom/google/glass/maps/opengl/b;)V

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/opengl/d;->a:Ljava/nio/IntBuffer;

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    aput p1, v0, v3

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->a:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-void
.end method

.method public a(IIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    aput p1, v0, v3

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    const/4 v1, 0x3

    aput p3, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    const/4 v1, 0x4

    aput p2, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    const/4 v1, 0x5

    aput p4, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->a:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/d;->b:[I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-void
.end method

.method public e()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/d;->a:Ljava/nio/IntBuffer;

    return-object v0
.end method
