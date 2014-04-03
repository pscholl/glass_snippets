.class public abstract Lcom/google/glass/maps/opengl/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/glass/maps/opengl/a;->a:I

    iput p2, p0, Lcom/google/glass/maps/opengl/a;->b:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/google/glass/maps/opengl/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/opengl/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/opengl/a;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 3

    iget v0, p0, Lcom/google/glass/maps/opengl/a;->b:I

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/a;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/a;->e()Ljava/nio/Buffer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/opengl/a;->b:I

    return v0
.end method

.method public final c()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/a;->e()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/glass/maps/opengl/a;->a:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/a;->e()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/a;->c()I

    move-result v1

    iput v1, p0, Lcom/google/glass/maps/opengl/a;->b:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public abstract e()Ljava/nio/Buffer;
.end method

.method public abstract f()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Buffer type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " comp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
