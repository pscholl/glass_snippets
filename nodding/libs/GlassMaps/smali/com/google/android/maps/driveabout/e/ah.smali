.class public final Lcom/google/android/maps/driveabout/e/ah;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/maps/driveabout/e/af;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/maps/driveabout/e/ah;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/e/ah;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/google/android/maps/driveabout/e/ah;->a:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    return-void
.end method

.method private a(III)Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    :cond_0
    iget v1, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    add-int/lit8 v3, v1, -0x3

    aget v2, v2, v3

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    add-int/lit8 v3, v1, -0x2

    aget v2, v2, v3

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-ne p3, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    add-int/lit8 v2, v1, 0x1

    aput p2, v0, v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    return v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/e/ab;
    .locals 5

    mul-int/lit8 v0, p1, 0x3

    new-instance v1, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>(III)V

    return-object v1
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/ab;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->g()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->h()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/e/ah;->a(III)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/ah;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    return-void
.end method

.method public final d()Lcom/google/android/maps/driveabout/e/af;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ah;->b:[I

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ah;->c:I

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/google/android/maps/driveabout/e/af;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/e/af;-><init>([ILcom/google/android/maps/driveabout/e/ag;)V

    return-object v1
.end method
