.class public final Lcom/google/android/maps/driveabout/store/bh;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/google/android/maps/driveabout/store/bj;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/store/bm;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/maps/driveabout/store/bh;->b:I

    iput p3, p0, Lcom/google/android/maps/driveabout/store/bh;->c:I

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/bh;->a(Lcom/google/android/maps/driveabout/store/bm;)V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/e/ab;)V
    .locals 4

    invoke-static {p0}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/store/bj;->h(Lcom/google/android/maps/driveabout/store/bj;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/google/android/maps/driveabout/store/bi;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/maps/driveabout/store/bi;-><init>(Lcom/google/android/maps/driveabout/store/bj;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->h(Lcom/google/android/maps/driveabout/store/bj;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/google/android/maps/driveabout/store/bi;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/maps/driveabout/store/bi;-><init>(Lcom/google/android/maps/driveabout/store/bj;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/bm;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/bh;->b(Lcom/google/android/maps/driveabout/store/bm;)[Lcom/google/android/maps/driveabout/store/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/bh;->a:[Lcom/google/android/maps/driveabout/store/bj;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/bh;->b()V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/e/ad;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, p4}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/high16 v3, 0x3ff0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/an;I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/an;->g()I

    move-result v2

    const/16 v3, 0x70

    if-gt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/an;->i()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/an;->g()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/store/bj;ILcom/google/android/maps/driveabout/e/ab;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/store/bj;->f(Lcom/google/android/maps/driveabout/store/bj;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/google/android/maps/driveabout/store/bj;->g(Lcom/google/android/maps/driveabout/store/bj;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    :cond_2
    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->f(Lcom/google/android/maps/driveabout/store/bj;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    :cond_3
    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->g(Lcom/google/android/maps/driveabout/store/bj;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-static {v1, v2, v3, p3}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v1

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bh;->a:[Lcom/google/android/maps/driveabout/store/bj;

    array-length v2, v0

    new-instance v3, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bh;->a:[Lcom/google/android/maps/driveabout/store/bj;

    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/google/android/maps/driveabout/store/bj;->e(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/bh;->a:[Lcom/google/android/maps/driveabout/store/bj;

    aget-object v6, v6, v0

    invoke-static {v6}, Lcom/google/android/maps/driveabout/store/bj;->e(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/maps/driveabout/e/al;->b(Lcom/google/android/maps/driveabout/e/am;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4, v6}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/store/bj;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v7

    invoke-static {v4}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v8

    invoke-static {v6}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v9

    invoke-static {v6}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v10

    invoke-static {v7, v8, v9, v10, v3}, Lcom/google/android/maps/driveabout/store/bh;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/google/android/maps/driveabout/store/bh;->b:I

    invoke-static {v4, v6, v7, v3}, Lcom/google/android/maps/driveabout/store/bh;->a(Lcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/store/bj;ILcom/google/android/maps/driveabout/e/ab;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-static {v4, v6, v3}, Lcom/google/android/maps/driveabout/store/bh;->a(Lcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/store/bj;Lcom/google/android/maps/driveabout/e/ab;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/store/bm;)[Lcom/google/android/maps/driveabout/store/bj;
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/store/bm;->a()I

    move-result v16

    new-instance v17, Ljava/util/ArrayList;

    mul-int/lit8 v1, v16, 0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v15, v1

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/google/android/maps/driveabout/store/bm;->a(I)Lcom/google/android/maps/driveabout/e/an;

    move-result-object v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/store/bh;->c:I

    invoke-static {v2, v1}, Lcom/google/android/maps/driveabout/store/bh;->a(Lcom/google/android/maps/driveabout/e/an;I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/google/android/maps/driveabout/store/bm;->b(I)Lcom/google/android/maps/driveabout/e/af;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v19

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    const/4 v1, 0x1

    move v14, v1

    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    const/4 v1, 0x1

    if-ne v14, v1, :cond_6

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v1, v19, -0x1

    if-ne v14, v1, :cond_7

    const/4 v6, 0x1

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/bh;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/an;->j()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Lcom/google/android/maps/driveabout/store/bj;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/maps/driveabout/store/bh;->b:I

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/store/bj;-><init>(Lcom/google/android/maps/driveabout/e/an;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;ZZI)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/store/bh;->c()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/an;->k()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    new-instance v7, Lcom/google/android/maps/driveabout/store/bj;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/maps/driveabout/store/bh;->b:I

    move-object v8, v2

    move-object v9, v4

    move-object v10, v3

    move v11, v6

    move v12, v5

    invoke-direct/range {v7 .. v13}, Lcom/google/android/maps/driveabout/store/bj;-><init>(Lcom/google/android/maps/driveabout/e/an;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;ZZI)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    move-object v3, v4

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/store/bj;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/maps/driveabout/store/bj;

    return-object v1
.end method

.method private c()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/store/bh;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bh;->a:[Lcom/google/android/maps/driveabout/store/bj;

    array-length v0, v0

    return v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/store/bj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bh;->a:[Lcom/google/android/maps/driveabout/store/bj;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/store/bj;
    .locals 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bh;->a:[Lcom/google/android/maps/driveabout/store/bj;

    array-length v2, v0

    new-instance v3, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    const v4, 0x3dcccccd

    invoke-virtual {v0, v1, v4}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;F)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    const v5, 0x3f666666

    invoke-virtual {v0, v1, v5}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;F)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bh;->a:[Lcom/google/android/maps/driveabout/store/bj;

    aget-object v0, v0, v1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->c(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/an;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bj;->c(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/an;

    move-result-object v7

    if-ne v6, v7, :cond_2

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/bj;->d(Lcom/google/android/maps/driveabout/store/bj;)F

    move-result v6

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bj;->d(Lcom/google/android/maps/driveabout/store/bj;)F

    move-result v7

    invoke-static {v6, v7}, Lcom/google/android/maps/driveabout/e/ad;->a(FF)F

    move-result v6

    const/high16 v7, 0x40a0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bj;->e(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v7

    invoke-static {v6, v7, v4, v3}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v6

    iget v7, p0, Lcom/google/android/maps/driveabout/store/bh;->b:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bj;->e(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/al;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/maps/driveabout/e/al;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bj;->b(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v6

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bj;->a(Lcom/google/android/maps/driveabout/store/bj;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v7

    invoke-static {v6, v7, v5, v3}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v6

    iget v7, p0, Lcom/google/android/maps/driveabout/store/bh;->b:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
