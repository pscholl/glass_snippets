.class public final Lcom/google/android/maps/driveabout/store/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/common/a;

.field private final b:Lcom/google/android/maps/driveabout/store/b;

.field private final c:I

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/a;IJLcom/google/android/maps/driveabout/store/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/a;->a:Lcom/google/googlenav/common/a;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/store/a;->b:Lcom/google/android/maps/driveabout/store/b;

    iput p2, p0, Lcom/google/android/maps/driveabout/store/a;->c:I

    iput-wide p3, p0, Lcom/google/android/maps/driveabout/store/a;->d:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/maps/driveabout/store/a;->c:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/a;->b:Lcom/google/android/maps/driveabout/store/b;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/store/b;->a()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/a;->b:Lcom/google/android/maps/driveabout/store/b;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/store/b;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/a;->a:Lcom/google/googlenav/common/a;

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/maps/driveabout/store/a;->d:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_0

    iget-wide v6, p0, Lcom/google/android/maps/driveabout/store/a;->d:J

    add-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
