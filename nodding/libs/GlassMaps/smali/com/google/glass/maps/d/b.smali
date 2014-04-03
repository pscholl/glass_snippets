.class public Lcom/google/glass/maps/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v1, 0x3f00

    const v0, 0x40490fdb

    mul-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    mul-float/2addr v0, v1

    sub-float v0, v1, v0

    return v0
.end method
