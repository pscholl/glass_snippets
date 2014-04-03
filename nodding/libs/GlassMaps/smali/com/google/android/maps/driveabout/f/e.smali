.class public final Lcom/google/android/maps/driveabout/f/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/g/b;

.field private final b:Lcom/google/android/maps/driveabout/util/k;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/util/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/e;->a:Lcom/google/android/maps/driveabout/g/b;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/f/e;->b:Lcom/google/android/maps/driveabout/util/k;

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/af;I)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/g/e;I)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/nav/w;II)Lcom/google/android/maps/driveabout/nav/aa;
    .locals 12

    const/4 v4, 0x0

    int-to-double v0, p3

    invoke-virtual {p1, p0, v0, v1, v4}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/e/ab;DZ)[Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v6

    const/4 v3, 0x0

    const-wide v0, 0x7fefffffffffffffL

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v6, v5

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v8

    cmpg-double v8, v8, v0

    if-gez v8, :cond_4

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v0

    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v0

    const-wide/high16 v7, 0x4000

    mul-double/2addr v0, v7

    double-to-int v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search radius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/e;->a(Ljava/lang/String;)V

    array-length v7, v6

    move v0, v4

    move-object v2, v3

    move v3, v4

    :goto_2
    if-ge v3, v7, :cond_2

    aget-object v1, v6, v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v4

    if-lt v4, v0, :cond_3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v8

    int-to-double v10, v5

    cmpg-double v4, v8, v10

    if-gez v4, :cond_3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->e()I

    move-result v0

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_2

    :cond_1
    move-object v2, v3

    :cond_2
    return-object v2

    :cond_3
    move-object v1, v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/w;DDDDD)Ljava/util/List;
    .locals 24

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    sub-double v4, p1, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    add-double v14, p1, p5

    move-wide/from16 v0, p7

    neg-double v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/maps/driveabout/nav/w;->a(D)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/android/maps/driveabout/nav/w;->a(D)I

    move-result v2

    add-int/lit8 v3, v17, -0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/nav/w;->b(D)I

    move-result v19

    new-instance v20, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v21, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct/range {v21 .. v21}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    :goto_0
    move/from16 v0, v18

    if-gt v4, v0, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v9

    cmpl-double v2, v9, v12

    if-ltz v2, :cond_0

    cmpg-double v2, v9, v14

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    move v7, v2

    :goto_1
    sub-double v2, v9, v5

    cmpg-double v2, v2, p7

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/e/af;->b(I)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v22, v0

    cmpg-double v3, v22, p9

    if-gez v3, :cond_2

    const/4 v3, 0x1

    :goto_3
    if-eqz v7, :cond_5

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/e/af;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/google/android/maps/driveabout/nav/w;->b(D)I

    move-result v2

    sub-int v8, v2, v19

    new-instance v2, Lcom/google/android/maps/driveabout/f/f;

    const/high16 v3, 0x3f00

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;F)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/f/e;->a(Lcom/google/android/maps/driveabout/e/af;I)D

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/maps/driveabout/f/f;-><init>(Lcom/google/android/maps/driveabout/e/ab;IDZI)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v9

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v7, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v17, -0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    new-instance v2, Lcom/google/android/maps/driveabout/f/f;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/e/af;->c()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    add-int/lit8 v4, v17, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/maps/driveabout/f/f;-><init>(Lcom/google/android/maps/driveabout/e/ab;IDZI)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v11

    :cond_5
    move-wide v2, v5

    goto :goto_4
.end method

.method private static a(ZLcom/google/android/maps/driveabout/e/ab;Ljava/util/Iterator;DIIDI)Ljava/util/List;
    .locals 17

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    mul-double v14, p7, p7

    new-instance v16, Lcom/google/android/maps/driveabout/f/g;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/maps/driveabout/f/g;-><init>()V

    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/maps/driveabout/g/e;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v6, v1}, Lcom/google/android/maps/driveabout/f/e;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/f/g;)V

    const/16 v3, 0x168

    move/from16 v0, p5

    if-eq v0, v3, :cond_1

    move-object/from16 v0, v16

    iget v3, v0, Lcom/google/android/maps/driveabout/f/g;->b:I

    move-wide/from16 v0, p3

    move/from16 v2, p5

    invoke-static {v0, v1, v6, v3, v2}, Lcom/google/android/maps/driveabout/f/e;->a(DLcom/google/android/maps/driveabout/g/e;II)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    move-object/from16 v0, v16

    iget v3, v0, Lcom/google/android/maps/driveabout/f/g;->c:F

    float-to-double v3, v3

    cmpg-double v3, v3, v14

    if-gez v3, :cond_0

    new-instance v3, Lcom/google/android/maps/driveabout/f/d;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/google/android/maps/driveabout/f/g;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-static {v4}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    move-object/from16 v0, v16

    iget v7, v0, Lcom/google/android/maps/driveabout/f/g;->b:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/google/android/maps/driveabout/f/g;->c:F

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move/from16 v4, p0

    move/from16 v8, p9

    move-object/from16 v9, p1

    move/from16 v12, p6

    invoke-direct/range {v3 .. v12}, Lcom/google/android/maps/driveabout/f/d;-><init>(ZLcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/g/e;IILcom/google/android/maps/driveabout/e/ab;DI)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v13
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/f/g;)V
    .locals 7

    new-instance v1, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v2, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    new-instance v3, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    const v0, 0x7f7fffff

    iput v0, p2, Lcom/google/android/maps/driveabout/f/g;->c:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/g/e;->e()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-ge v0, v5, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/g/e;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5, v2}, Lcom/google/android/maps/driveabout/g/e;->a(ILcom/google/android/maps/driveabout/e/ab;)V

    invoke-static {v1, v2, p0, v3}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v5

    iget v6, p2, Lcom/google/android/maps/driveabout/f/g;->c:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_0

    iput v5, p2, Lcom/google/android/maps/driveabout/f/g;->c:F

    iput v0, p2, Lcom/google/android/maps/driveabout/f/g;->b:I

    iget-object v5, p2, Lcom/google/android/maps/driveabout/f/g;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v5, v3}, Lcom/google/android/maps/driveabout/e/ab;->b(Lcom/google/android/maps/driveabout/e/ab;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EndpointFinder"

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/d;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/f/d;

    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "More than 2 endpoints. Dropping all."

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/e;->a(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/google/android/maps/driveabout/f/d;->c:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/g/e;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/maps/driveabout/f/d;->c:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v4, v5}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/e/ab;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/google/android/maps/driveabout/f/d;->c:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/maps/driveabout/f/d;->c:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/g/e;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/ab;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_4
    const-string v0, "Endpoints don\'t line up. Dropping all."

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/e;->a(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;D)V
    .locals 5

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/d;

    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/f/d;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, v0, Lcom/google/android/maps/driveabout/f/d;->c:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/g/e;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/f/d;->a:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget-object v3, v0, Lcom/google/android/maps/driveabout/f/d;->c:Lcom/google/android/maps/driveabout/g/e;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/g/e;->b(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_3
    iget-wide v2, v0, Lcom/google/android/maps/driveabout/f/d;->g:D

    cmpl-double v0, v2, p1

    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static a(DLcom/google/android/maps/driveabout/g/e;II)Z
    .locals 4

    invoke-static {p2, p3}, Lcom/google/android/maps/driveabout/f/e;->a(Lcom/google/android/maps/driveabout/g/e;I)D

    move-result-wide v0

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const-wide v2, 0x4076800000000000L

    sub-double v0, v2, v0

    :cond_0
    int-to-double v2, p4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Ljava/util/Collection;
    .locals 13

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->b:Lcom/google/android/maps/driveabout/util/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/k;->f()I

    move-result v0

    int-to-double v4, v0

    mul-double v7, v2, v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->a:Lcom/google/android/maps/driveabout/g/b;

    invoke-virtual {v0, v1, v7, v8}, Lcom/google/android/maps/driveabout/g/b;->a(Lcom/google/android/maps/driveabout/e/ab;D)Ljava/util/Iterator;

    move-result-object v2

    const/16 v5, 0x168

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getBearing()F

    move-result v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/f/e;->b:Lcom/google/android/maps/driveabout/util/k;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/util/k;->d()I

    move-result v5

    move v3, v0

    :goto_0
    const/4 v0, 0x1

    float-to-double v3, v3

    const/4 v6, 0x0

    const/4 v9, -0x1

    invoke-static/range {v0 .. v9}, Lcom/google/android/maps/driveabout/f/e;->a(ZLcom/google/android/maps/driveabout/e/ab;Ljava/util/Iterator;DIIDI)Ljava/util/List;

    move-result-object v10

    const-wide v2, 0x7fefffffffffffffL

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/d;

    iget-wide v5, v0, Lcom/google/android/maps/driveabout/f/d;->g:D

    cmpg-double v5, v5, v2

    if-gez v5, :cond_0

    iget-wide v2, v0, Lcom/google/android/maps/driveabout/f/d;->g:D

    goto :goto_1

    :cond_1
    const-wide/high16 v4, 0x4000

    mul-double/2addr v2, v4

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/f/e;->b:Lcom/google/android/maps/driveabout/util/k;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/k;->g()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v10, v0, v1}, Lcom/google/android/maps/driveabout/f/e;->a(Ljava/util/List;D)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/maps/driveabout/f/d;

    iget-object v0, v9, Lcom/google/android/maps/driveabout/f/d;->c:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/g/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/e;->a:Lcom/google/android/maps/driveabout/g/b;

    iget-object v1, v9, Lcom/google/android/maps/driveabout/f/d;->c:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/g/b;->a(Lcom/google/android/maps/driveabout/g/e;)Lcom/google/android/maps/driveabout/g/e;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v0, Lcom/google/android/maps/driveabout/f/d;

    iget-boolean v1, v9, Lcom/google/android/maps/driveabout/f/d;->a:Z

    iget-object v2, v9, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v4, v9, Lcom/google/android/maps/driveabout/f/d;->d:I

    iget v5, v9, Lcom/google/android/maps/driveabout/f/d;->e:I

    iget-object v6, v9, Lcom/google/android/maps/driveabout/f/d;->f:Lcom/google/android/maps/driveabout/e/ab;

    iget-wide v7, v9, Lcom/google/android/maps/driveabout/f/d;->g:D

    iget v9, v9, Lcom/google/android/maps/driveabout/f/d;->h:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/f/d;-><init>(ZLcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/g/e;IILcom/google/android/maps/driveabout/e/ab;DI)V

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v10

    :cond_5
    move v3, v0

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;)Ljava/util/Collection;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/e/ab;->a(DD)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/f/e;->b:Lcom/google/android/maps/driveabout/util/k;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/k;->b()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/f/e;->b:Lcom/google/android/maps/driveabout/util/k;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/k;->c()I

    move-result v4

    int-to-double v4, v4

    mul-double v14, v12, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/f/e;->b:Lcom/google/android/maps/driveabout/util/k;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/util/k;->h()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/f/e;->b:Lcom/google/android/maps/driveabout/util/k;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/util/k;->i()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v12

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/maps/driveabout/f/e;->b:Lcom/google/android/maps/driveabout/util/k;

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/util/k;->j()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/maps/driveabout/f/e;->b:Lcom/google/android/maps/driveabout/util/k;

    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/util/k;->k()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v12

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    double-to-int v2, v2

    double-to-int v3, v14

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/f/e;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/nav/w;II)Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Projection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/aa;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/ab;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/f/e;->a(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v2

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v11}, Lcom/google/android/maps/driveabout/f/e;->a(Lcom/google/android/maps/driveabout/nav/w;DDDDD)Ljava/util/List;

    move-result-object v1

    const-wide/high16 v2, 0x4024

    mul-double v8, v12, v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/google/android/maps/driveabout/f/f;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/f/e;->a:Lcom/google/android/maps/driveabout/g/b;

    iget-object v2, v11, Lcom/google/android/maps/driveabout/f/f;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v1, v2, v8, v9}, Lcom/google/android/maps/driveabout/g/b;->a(Lcom/google/android/maps/driveabout/e/ab;D)Ljava/util/Iterator;

    move-result-object v3

    iget-boolean v1, v11, Lcom/google/android/maps/driveabout/f/f;->d:Z

    if-eqz v1, :cond_0

    const/16 v6, 0x168

    :goto_1
    const/4 v1, 0x0

    iget-object v2, v11, Lcom/google/android/maps/driveabout/f/f;->a:Lcom/google/android/maps/driveabout/e/ab;

    iget-wide v4, v11, Lcom/google/android/maps/driveabout/f/f;->c:D

    iget v7, v11, Lcom/google/android/maps/driveabout/f/f;->e:I

    iget v10, v11, Lcom/google/android/maps/driveabout/f/f;->b:I

    invoke-static/range {v1 .. v10}, Lcom/google/android/maps/driveabout/f/e;->a(ZLcom/google/android/maps/driveabout/e/ab;Ljava/util/Iterator;DIIDI)Ljava/util/List;

    move-result-object v1

    iget-boolean v2, v11, Lcom/google/android/maps/driveabout/f/f;->d:Z

    if-eqz v2, :cond_1

    invoke-static {v1, v8, v9}, Lcom/google/android/maps/driveabout/f/e;->a(Ljava/util/List;D)V

    :goto_2
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/f/e;->b:Lcom/google/android/maps/driveabout/util/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/k;->e()I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/google/android/maps/driveabout/f/e;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    return-object v16
.end method
