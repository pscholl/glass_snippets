.class final Lcom/google/glass/maps/bb;
.super Lcom/google/glass/maps/d/b;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/ba;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/bb;->a:Lcom/google/glass/maps/ba;

    invoke-direct {p0}, Lcom/google/glass/maps/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    const/high16 v0, 0x3f80

    const/high16 v1, 0x4000

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Lcom/google/glass/maps/d/b;->getInterpolation(F)F

    move-result v0

    return v0
.end method
