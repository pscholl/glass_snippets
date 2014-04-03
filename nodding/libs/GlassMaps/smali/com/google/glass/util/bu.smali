.class final Lcom/google/glass/util/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/util/aj;


# instance fields
.field final synthetic a:Lcom/google/glass/util/bt;


# direct methods
.method constructor <init>(Lcom/google/glass/util/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/bu;->a:Lcom/google/glass/util/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/google/glass/util/bu;->a:Lcom/google/glass/util/bt;

    iget-object v0, v0, Lcom/google/glass/util/bt;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/glass/util/bu;->a:Lcom/google/glass/util/bt;

    iget-object v0, v0, Lcom/google/glass/util/bt;->c:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/glass/util/bs;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Failed to compress screenshot."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
