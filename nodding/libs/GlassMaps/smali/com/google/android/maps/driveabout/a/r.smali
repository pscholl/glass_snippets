.class public final Lcom/google/android/maps/driveabout/a/r;
.super Lcom/google/android/maps/driveabout/a/m;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/a/m;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/a/m;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/m;-><init>(Lcom/google/android/maps/driveabout/a/n;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/r;->a:Lcom/google/android/maps/driveabout/a/m;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/a/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/r;->a:Lcom/google/android/maps/driveabout/a/m;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/r;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/a/r;

    iget-object v0, p1, Lcom/google/android/maps/driveabout/a/r;->a:Lcom/google/android/maps/driveabout/a/m;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/r;->a:Lcom/google/android/maps/driveabout/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/r;->a:Lcom/google/android/maps/driveabout/a/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<optional>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/r;->a:Lcom/google/android/maps/driveabout/a/m;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</optional>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
