.class public final Lcom/google/glass/maps/opengl/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/glass/maps/opengl/k;

    invoke-direct {v0}, Lcom/google/glass/maps/opengl/k;-><init>()V

    sput-object v0, Lcom/google/glass/maps/opengl/j;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a()I
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/glass/maps/opengl/j;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/opengl/l;

    iget-object v0, v0, Lcom/google/glass/maps/opengl/l;->a:[I

    const/4 v1, 0x1

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v0, v2

    return v0
.end method

.method public static a(I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/glass/maps/opengl/j;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/opengl/l;

    iget-object v0, v0, Lcom/google/glass/maps/opengl/l;->a:[I

    aput p0, v0, v2

    const/4 v1, 0x1

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static b()V
    .locals 0

    return-void
.end method
