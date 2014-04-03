.class public final Lcom/google/android/maps/driveabout/e/ar;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/af;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/af;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/ar;->a:Lcom/google/android/maps/driveabout/e/af;

    iput p2, p0, Lcom/google/android/maps/driveabout/e/ar;->b:I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ar;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/e/af;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/ar;->a:Lcom/google/android/maps/driveabout/e/af;

    iput p2, p0, Lcom/google/android/maps/driveabout/e/ar;->b:I

    iput p3, p0, Lcom/google/android/maps/driveabout/e/ar;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ar;->c:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ar;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(ILcom/google/android/maps/driveabout/e/ab;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ar;->a:Lcom/google/android/maps/driveabout/e/af;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ar;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ar;->b:I

    return v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/e/al;
    .locals 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ar;->a:Lcom/google/android/maps/driveabout/e/af;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ar;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    iget v2, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget v1, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ar;->b:I

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_0
    iget v6, p0, Lcom/google/android/maps/driveabout/e/ar;->c:I

    if-ge v0, v6, :cond_4

    iget-object v6, p0, Lcom/google/android/maps/driveabout/e/ar;->a:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v6, v0, v5}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-ge v6, v4, :cond_0

    iget v4, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    :cond_0
    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    if-le v6, v3, :cond_1

    iget v3, v5, Lcom/google/android/maps/driveabout/e/ab;->a:I

    :cond_1
    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-ge v6, v2, :cond_2

    iget v2, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    :cond_2
    iget v6, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    if-le v6, v1, :cond_3

    iget v1, v5, Lcom/google/android/maps/driveabout/e/ab;->b:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v4, v2}, Lcom/google/android/maps/driveabout/e/ab;->d(II)V

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v1, Lcom/google/android/maps/driveabout/e/al;

    invoke-direct {v1, v5, v0}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/maps/driveabout/e/ar;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/maps/driveabout/e/ar;

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ar;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ar;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/google/android/maps/driveabout/e/ar;->c:I

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ar;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/google/android/maps/driveabout/e/ar;->a:Lcom/google/android/maps/driveabout/e/af;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/ar;->a:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ar;->b:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ar;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ar;->a:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/af;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ar;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ar;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ar;->a:Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
