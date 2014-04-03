.class public final Lcom/google/glass/maps/b/v;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:F

.field public e:Lcom/google/glass/maps/b/x;

.field public f:Lcom/google/glass/maps/b/x;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xcfcfd0

    iput v0, p0, Lcom/google/glass/maps/b/v;->a:I

    const v0, -0x7f7f80

    iput v0, p0, Lcom/google/glass/maps/b/v;->b:I

    const v0, -0x5f5f60

    iput v0, p0, Lcom/google/glass/maps/b/v;->c:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/glass/maps/b/v;->d:F

    new-instance v0, Lcom/google/glass/maps/b/x;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v5, v1, v4, v2}, Lcom/google/glass/widget/aj;->a(Landroid/content/Context;IZZ)Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x4160

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/b/x;-><init>(Landroid/graphics/Typeface;FIILcom/google/glass/maps/b/w;)V

    iput-object v0, p0, Lcom/google/glass/maps/b/v;->e:Lcom/google/glass/maps/b/x;

    new-instance v0, Lcom/google/glass/maps/b/x;

    const/4 v1, 0x2

    invoke-static {v5, v1}, Lcom/google/glass/widget/aj;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x4130

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/b/x;-><init>(Landroid/graphics/Typeface;FIILcom/google/glass/maps/b/w;)V

    iput-object v0, p0, Lcom/google/glass/maps/b/v;->f:Lcom/google/glass/maps/b/x;

    return-void
.end method
