.class public Lcom/google/android/maps/driveabout/e/av;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Lcom/google/android/maps/driveabout/e/k;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/e/av;-><init>(IIILcom/google/android/maps/driveabout/e/k;)V

    return-void
.end method

.method private constructor <init>(IIILcom/google/android/maps/driveabout/e/k;)V
    .locals 3

    const/high16 v2, 0x2000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/e/av;->d:I

    iput p2, p0, Lcom/google/android/maps/driveabout/e/av;->e:I

    iput p3, p0, Lcom/google/android/maps/driveabout/e/av;->f:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    rsub-int/lit8 v0, p1, 0x12

    iput v0, p0, Lcom/google/android/maps/driveabout/e/av;->c:I

    const/high16 v0, 0x4000

    shr-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->e:I

    mul-int/2addr v1, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/e/av;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->f:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    sub-int/2addr v0, v2

    neg-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/av;->b:I

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/e/av;)I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->d:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->d:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->e:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->e:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->f:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->f:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/k;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->f:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->f:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->e:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->e:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->d:I

    iget v1, p1, Lcom/google/android/maps/driveabout/e/av;->d:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(III)Lcom/google/android/maps/driveabout/e/av;
    .locals 5

    const/high16 v4, 0x2000

    const/16 v1, 0x1e

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    new-instance v1, Lcom/google/android/maps/driveabout/e/av;

    invoke-direct {v1, v0, v0, v0}, Lcom/google/android/maps/driveabout/e/av;-><init>(III)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-le p0, v1, :cond_1

    move p0, v1

    :cond_1
    rsub-int/lit8 v1, p0, 0x1e

    add-int v2, p1, v4

    shr-int/2addr v2, v1

    neg-int v3, p2

    add-int/2addr v3, v4

    shr-int v1, v3, v1

    const/4 v3, 0x1

    shl-int/2addr v3, p0

    if-gez v2, :cond_3

    add-int/2addr v2, v3

    :cond_2
    :goto_1
    if-gez v1, :cond_4

    :goto_2
    new-instance v1, Lcom/google/android/maps/driveabout/e/av;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/maps/driveabout/e/av;-><init>(III)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    if-lt v2, v3, :cond_2

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_4
    if-lt v1, v3, :cond_5

    add-int/lit8 v0, v3, -0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/e/av;
    .locals 4

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v2

    new-instance v3, Lcom/google/android/maps/driveabout/e/av;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/e/av;-><init>(III)V

    return-object v3
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/bg;I)Ljava/util/ArrayList;
    .locals 11

    const/4 v10, 0x2

    const/4 v3, 0x0

    if-gez p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/bg;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/bg;->e()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/e/av;->a(III)Lcom/google/android/maps/driveabout/e/av;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/bg;->e()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/bg;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/e/av;->a(III)Lcom/google/android/maps/driveabout/e/av;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v2

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/av;->b()I

    move-result v7

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/av;->c()I

    move-result v8

    const/4 v0, 0x1

    shl-int v9, v0, p1

    if-le v1, v7, :cond_2

    sub-int v0, v9, v1

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    sub-int v4, v8, v2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    move v4, v0

    :goto_1
    if-gez v4, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_2
    sub-int v0, v7, v1

    add-int/lit8 v0, v0, 0x1

    sub-int v4, v8, v2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-gt v4, v10, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v4, v10, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-le v1, v7, :cond_8

    move v4, v1

    :goto_2
    if-ge v4, v9, :cond_7

    move v1, v2

    :goto_3
    if-gt v1, v8, :cond_5

    new-instance v5, Lcom/google/android/maps/driveabout/e/av;

    invoke-direct {v5, p1, v4, v1}, Lcom/google/android/maps/driveabout/e/av;-><init>(III)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    :cond_7
    if-gt v3, v7, :cond_0

    move v1, v2

    :goto_4
    if-gt v1, v8, :cond_6

    new-instance v4, Lcom/google/android/maps/driveabout/e/av;

    invoke-direct {v4, p1, v3, v1}, Lcom/google/android/maps/driveabout/e/av;-><init>(III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_5
    if-gt v3, v7, :cond_0

    move v1, v2

    :goto_6
    if-gt v1, v8, :cond_9

    new-instance v4, Lcom/google/android/maps/driveabout/e/av;

    invoke-direct {v4, p1, v3, v1}, Lcom/google/android/maps/driveabout/e/av;-><init>(III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->d:I

    return v0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->d:I

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->e:I

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->f:I

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataOutput;I)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->e:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->f:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/maps/driveabout/e/av;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/e/av;->a(Lcom/google/android/maps/driveabout/e/av;)I

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/e/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    return-object v0
.end method

.method public final e()Lcom/google/android/maps/driveabout/e/al;
    .locals 6

    const/high16 v0, 0x4000

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->d:I

    shr-int/2addr v0, v1

    new-instance v1, Lcom/google/android/maps/driveabout/e/al;

    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    iget v3, p0, Lcom/google/android/maps/driveabout/e/av;->a:I

    iget v4, p0, Lcom/google/android/maps/driveabout/e/av;->b:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    new-instance v3, Lcom/google/android/maps/driveabout/e/ab;

    iget v4, p0, Lcom/google/android/maps/driveabout/e/av;->a:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/google/android/maps/driveabout/e/av;->b:I

    add-int/2addr v0, v5

    invoke-direct {v3, v4, v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>(II)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/maps/driveabout/e/av;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/e/av;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->e:I

    iget v2, p1, Lcom/google/android/maps/driveabout/e/av;->e:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->f:I

    iget v2, p1, Lcom/google/android/maps/driveabout/e/av;->f:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->d:I

    iget v2, p1, Lcom/google/android/maps/driveabout/e/av;->d:I

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/e/av;->d:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->f:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/k;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/av;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/av;->g:Lcom/google/android/maps/driveabout/e/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
