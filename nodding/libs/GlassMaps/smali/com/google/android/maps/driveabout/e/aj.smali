.class final Lcom/google/android/maps/driveabout/e/aj;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/aj;->a:I

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/aj;->b:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/aj;->a:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/aj;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/aj;->b:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/aj;->d:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/e/aj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/maps/driveabout/e/aj;->a:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/aj;->a:I

    iget v0, p1, Lcom/google/android/maps/driveabout/e/aj;->b:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/aj;->b:I

    iget v0, p1, Lcom/google/android/maps/driveabout/e/aj;->c:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/aj;->c:I

    iget v0, p1, Lcom/google/android/maps/driveabout/e/aj;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/e/aj;->d:I

    return-void
.end method

.method private a(II)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/aj;->a:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/maps/driveabout/e/aj;->a:I

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/e/aj;->b:I

    if-ge p2, v0, :cond_1

    iput p2, p0, Lcom/google/android/maps/driveabout/e/aj;->b:I

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/e/aj;->c:I

    if-le p1, v0, :cond_2

    iput p1, p0, Lcom/google/android/maps/driveabout/e/aj;->c:I

    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/e/aj;->d:I

    if-le p2, v0, :cond_3

    iput p2, p0, Lcom/google/android/maps/driveabout/e/aj;->d:I

    :cond_3
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 2

    iget v0, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/e/aj;->a(II)V

    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/e/aj;)V
    .locals 2

    iget v0, p1, Lcom/google/android/maps/driveabout/e/aj;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/aj;->b:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/e/aj;->a(II)V

    iget v0, p1, Lcom/google/android/maps/driveabout/e/aj;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/aj;->d:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/e/aj;->a(II)V

    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/e/al;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->e()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/al;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/e/aj;->a:I

    iget v3, v0, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/aj;->b:I

    iget v0, v0, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-gt v2, v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/e/aj;->c:I

    iget v2, v1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/e/aj;->d:I

    iget v1, v1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/aj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/aj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/aj;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/aj;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
