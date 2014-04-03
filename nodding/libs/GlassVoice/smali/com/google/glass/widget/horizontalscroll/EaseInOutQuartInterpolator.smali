.class public Lcom/google/glass/widget/horizontalscroll/EaseInOutQuartInterpolator;
.super Ljava/lang/Object;
.source "EaseInOutQuartInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static instance:Lcom/google/glass/widget/horizontalscroll/EaseInOutQuartInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/EaseInOutQuartInterpolator;

    invoke-direct {v0}, Lcom/google/glass/widget/horizontalscroll/EaseInOutQuartInterpolator;-><init>()V

    sput-object v0, Lcom/google/glass/widget/horizontalscroll/EaseInOutQuartInterpolator;->instance:Lcom/google/glass/widget/horizontalscroll/EaseInOutQuartInterpolator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .parameter "input"

    .prologue
    const/high16 v6, 0x4000

    .line 16
    mul-float v0, p1, v6

    .line 17
    .local v0, time:F
    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 18
    const/high16 v1, 0x3f00

    float-to-double v2, v0

    const-wide/high16 v4, 0x4010

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    .line 20
    :goto_0
    return v1

    :cond_0
    const/high16 v1, -0x4100

    sub-float/2addr v0, v6

    float-to-double v2, v0

    const-wide/high16 v4, 0x4008

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v2, v6

    mul-float/2addr v1, v2

    goto :goto_0
.end method
