.class public final Lcom/google/glass/maps/b/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/ab;

.field private final b:Lcom/google/android/maps/driveabout/e/ab;

.field private final c:J

.field private final d:J

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/maps/b/c;->a:Lcom/google/android/maps/driveabout/e/ab;

    iput-object p2, p0, Lcom/google/glass/maps/b/c;->b:Lcom/google/android/maps/driveabout/e/ab;

    iput-wide p3, p0, Lcom/google/glass/maps/b/c;->c:J

    iput-wide p5, p0, Lcom/google/glass/maps/b/c;->d:J

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/maps/driveabout/e/ab;
    .locals 6

    iget-wide v0, p0, Lcom/google/glass/maps/b/c;->c:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    if-ltz v0, :cond_0

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/google/glass/maps/b/c;->d:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/b/c;->e:Z

    iget-object v0, p0, Lcom/google/glass/maps/b/c;->b:Lcom/google/android/maps/driveabout/e/ab;

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/b/c;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v2, p0, Lcom/google/glass/maps/b/c;->b:Lcom/google/android/maps/driveabout/e/ab;

    int-to-float v0, v0

    const/high16 v3, 0x3f80

    iget-wide v4, p0, Lcom/google/glass/maps/b/c;->d:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;F)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/b/c;->e:Z

    return v0
.end method
