.class public final Lcom/google/android/maps/driveabout/e/af;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private volatile b:Lcom/google/android/maps/driveabout/e/al;

.field private volatile c:F


# direct methods
.method private constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/e/af;->c:F

    return-void
.end method

.method synthetic constructor <init>([ILcom/google/android/maps/driveabout/e/ag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/e/af;-><init>([I)V

    return-void
.end method

.method private a(FIIILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;[Z)I
    .locals 15

    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    move/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    const/4 v8, -0x1

    add-int v6, p3, p2

    move/from16 v5, p1

    :goto_0
    add-int/lit8 v4, p4, -0x1

    if-gt v6, v4, :cond_0

    move-object/from16 v0, p8

    invoke-virtual {p0, v6, v0}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v4

    cmpl-float v7, v4, v5

    if-lez v7, :cond_3

    move v8, v6

    :goto_1
    add-int v6, v6, p2

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-ltz v8, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, p9, v8

    add-int/lit8 v5, p3, 0x1

    if-le v8, v5, :cond_1

    move-object v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/google/android/maps/driveabout/e/af;->a(FIIILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;[Z)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v5, p4, -0x1

    if-ge v8, v5, :cond_2

    move-object v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/google/android/maps/driveabout/e/af;->a(FIIILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;[Z)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    return v4

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/af;
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/e/ab;->a([II)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/e/ab;->a([II)V

    new-instance v1, Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/e/af;-><init>([I)V

    return-object v1
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;)Lcom/google/android/maps/driveabout/e/af;
    .locals 3

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v1

    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p0, p1, v2, v0}, Lcom/google/android/maps/driveabout/e/ab;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/e/av;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/e/af;-><init>([I)V

    return-object v0
.end method

.method public static a([I)Lcom/google/android/maps/driveabout/e/af;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/e/af;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public final a(F)Lcom/google/android/maps/driveabout/e/ab;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/af;->c()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/af;->d()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/e/af;->b(I)F

    move-result v2

    cmpl-float v4, v2, v0

    if-ltz v4, :cond_2

    div-float v2, v0, v2

    new-instance v3, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    invoke-virtual {p0, v1, v3}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    invoke-static {v3, v0, v2, v0}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;FLcom/google/android/maps/driveabout/e/ab;)V

    goto :goto_0

    :cond_2
    sub-float v2, v0, v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/af;->c()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/e/ab;
    .locals 5

    mul-int/lit8 v0, p1, 0x3

    new-instance v1, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>(III)V

    return-object v1
.end method

.method public final a()Lcom/google/android/maps/driveabout/e/al;
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->b:Lcom/google/android/maps/driveabout/e/al;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/af;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->b:Lcom/google/android/maps/driveabout/e/al;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->b:Lcom/google/android/maps/driveabout/e/al;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/e/al;

    new-instance v1, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/e/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->b:Lcom/google/android/maps/driveabout/e/al;

    goto :goto_0
.end method

.method public final a(ILcom/google/android/maps/driveabout/e/ab;)V
    .locals 3

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    aget v1, v1, v0

    iput v1, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method public final a(ILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 3

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    aget v1, v1, v0

    iget v2, p2, Lcom/google/android/maps/driveabout/e/ab;->a:I

    sub-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget v2, p2, Lcom/google/android/maps/driveabout/e/ab;->b:I

    sub-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iget v1, p2, Lcom/google/android/maps/driveabout/e/ab;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    aget v1, v1, v0

    iput v1, p1, Lcom/google/android/maps/driveabout/e/ab;->a:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p1, Lcom/google/android/maps/driveabout/e/ab;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p1, Lcom/google/android/maps/driveabout/e/ab;->c:I

    return-void
.end method

.method public final a(FI)[Z
    .locals 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v9, v0, [Z

    array-length v1, v9

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    :goto_0
    array-length v0, v9

    if-ge v3, v0, :cond_1

    aput-boolean v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aput-boolean v4, v9, v3

    add-int/lit8 v1, v0, -0x1

    aput-boolean v4, v9, v1

    mul-float v1, p1, p1

    add-int/lit8 v4, v0, -0x1

    new-instance v5, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v6, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v6}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v7, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v7}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v8, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v8}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/e/af;->a(FIIILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;[Z)I

    :cond_1
    return-object v9
.end method

.method public final b(I)F
    .locals 6

    mul-int/lit8 v0, p1, 0x3

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    aget v2, v3, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    aget v3, v3, v5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final b(F)Lcom/google/android/maps/driveabout/e/af;
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    array-length v0, v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    array-length v0, v0

    div-int/lit8 v10, v0, 0x3

    new-array v9, v10, [Z

    aput-boolean v2, v9, v3

    add-int/lit8 v0, v10, -0x1

    aput-boolean v2, v9, v0

    mul-float v1, p1, p1

    add-int/lit8 v4, v10, -0x1

    new-instance v5, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v6, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v6}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v7, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v7}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v8, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v8}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/e/af;->a(FIIILcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;[Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-eq v0, v10, :cond_0

    mul-int/lit8 v0, v0, 0x3

    new-array v1, v0, [I

    move v0, v3

    :goto_1
    if-ge v3, v10, :cond_3

    aget-boolean v2, v9, v3

    if-eqz v2, :cond_2

    mul-int/lit8 v2, v3, 0x3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v1, v0

    add-int/lit8 v2, v4, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v5, v6, 0x1

    aget v0, v0, v6

    aput v0, v1, v4

    add-int/lit8 v0, v2, 0x1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    aget v4, v4, v5

    aput v4, v1, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/google/android/maps/driveabout/e/af;

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/e/af;-><init>([I)V

    goto :goto_0
.end method

.method public final c(I)F
    .locals 4

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/e/ad;->a(II)F

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/e/ab;
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    new-instance v1, Lcom/google/android/maps/driveabout/e/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>(III)V

    return-object v1
.end method

.method public final d()F
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/e/af;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/e/af;->b(I)F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/maps/driveabout/e/af;->c:F

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/e/af;->c:F

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/e/af;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/maps/driveabout/e/af;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    iget-object v1, p1, Lcom/google/android/maps/driveabout/e/af;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/af;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
