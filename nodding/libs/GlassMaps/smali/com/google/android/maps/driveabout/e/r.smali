.class public final Lcom/google/android/maps/driveabout/e/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/p;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/p;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/r;->a:Lcom/google/android/maps/driveabout/e/p;

    iput p2, p0, Lcom/google/android/maps/driveabout/e/r;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/p;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->a:Lcom/google/android/maps/driveabout/e/p;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/e/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->a:Lcom/google/android/maps/driveabout/e/p;

    check-cast p1, Lcom/google/android/maps/driveabout/e/r;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/r;->a:Lcom/google/android/maps/driveabout/e/p;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/google/android/maps/driveabout/e/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->a:Lcom/google/android/maps/driveabout/e/p;

    check-cast p1, Lcom/google/android/maps/driveabout/e/p;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/e/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/r;->a:Lcom/google/android/maps/driveabout/e/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/p;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/r;->a:Lcom/google/android/maps/driveabout/e/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLevelNumberE3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/r;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
