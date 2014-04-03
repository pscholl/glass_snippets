.class public final Lcom/google/android/maps/driveabout/location/z;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/maps/driveabout/location/z;->b:J

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/location/z;->b:J

    iget v0, p1, Lcom/google/android/maps/driveabout/location/z;->c:F

    iput v0, p0, Lcom/google/android/maps/driveabout/location/z;->c:F

    iget v0, p1, Lcom/google/android/maps/driveabout/location/z;->d:F

    iput v0, p0, Lcom/google/android/maps/driveabout/location/z;->d:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/maps/driveabout/location/z;->b:J

    iput p4, p0, Lcom/google/android/maps/driveabout/location/z;->c:F

    iput p5, p0, Lcom/google/android/maps/driveabout/location/z;->d:F

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/location/z;->c:F

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/location/z;->b:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/location/z;->b:J

    return-wide v0
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/location/z;->d:F

    return-void
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/location/z;->c:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/location/z;->d:F

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/location/z;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/location/z;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
