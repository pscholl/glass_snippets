.class public final Lcom/google/glass/maps/opengl/e;
.super Lcom/google/glass/maps/opengl/a;


# instance fields
.field private final a:Ljava/nio/ShortBuffer;

.field private final b:[S


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/maps/opengl/a;-><init>(IILcom/google/glass/maps/opengl/b;)V

    const/4 v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/glass/maps/opengl/e;->b:[S

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/opengl/e;->a:Ljava/nio/ShortBuffer;

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/opengl/e;->b:[S

    int-to-short v1, p1

    aput-short v1, v0, v3

    iget-object v0, p0, Lcom/google/glass/maps/opengl/e;->b:[S

    const/4 v1, 0x1

    int-to-short v2, p2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/e;->b:[S

    const/4 v1, 0x2

    int-to-short v2, p3

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/e;->b:[S

    const/4 v1, 0x3

    int-to-short v2, p3

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/e;->b:[S

    const/4 v1, 0x4

    int-to-short v2, p2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/e;->b:[S

    const/4 v1, 0x5

    int-to-short v2, p4

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/e;->a:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/google/glass/maps/opengl/e;->b:[S

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    return-void
.end method

.method public final e()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/opengl/e;->a:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public final f()I
    .locals 1

    const/16 v0, 0x1403

    return v0
.end method
