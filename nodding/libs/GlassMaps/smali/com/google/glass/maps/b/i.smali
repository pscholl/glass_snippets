.class public final Lcom/google/glass/maps/b/i;
.super Lcom/google/glass/maps/b/am;


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/maps/b/am;-><init>(II)V

    iput-object p1, p0, Lcom/google/glass/maps/b/i;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/maps/opengl/i;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/maps/b/i;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/glass/maps/opengl/i;

    invoke-direct {v0}, Lcom/google/glass/maps/opengl/i;-><init>()V

    iget-object v2, p0, Lcom/google/glass/maps/b/i;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/opengl/i;->a(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/google/glass/maps/b/i;->a:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
