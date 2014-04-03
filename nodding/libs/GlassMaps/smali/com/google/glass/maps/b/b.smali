.class public final Lcom/google/glass/maps/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)F
    .locals 4

    iget-wide v0, p0, Lcom/google/glass/maps/b/b;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/google/glass/maps/b/b;->a:J

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/glass/maps/b/b;->a:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    if-ltz v0, :cond_1

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/b/b;->b:Z

    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    const v1, 0x3b03126f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/b/b;->b:Z

    return v0
.end method
