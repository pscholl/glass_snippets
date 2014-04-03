.class public final Lcom/google/android/maps/driveabout/f/x;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/g/b;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/g/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/x;->a:Lcom/google/android/maps/driveabout/g/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/f/x;->b:Z

    return-void
.end method

.method private static a(Ljava/util/HashMap;Lcom/google/android/maps/driveabout/f/d;)Lcom/google/android/maps/driveabout/f/aa;
    .locals 8

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/f/d;->c:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/ab;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/google/android/maps/driveabout/f/ab;->f:Lcom/google/android/maps/driveabout/f/ab;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/z;

    iget-object v5, v0, Lcom/google/android/maps/driveabout/f/z;->a:Lcom/google/android/maps/driveabout/f/d;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Lcom/google/android/maps/driveabout/g/e;

    array-length v0, v6

    new-array v7, v0, [I

    move v2, v1

    :goto_1
    array-length v0, v6

    if-ge v1, v0, :cond_1

    array-length v0, v6

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/ab;

    iget-object v3, v0, Lcom/google/android/maps/driveabout/f/ab;->b:Lcom/google/android/maps/driveabout/g/e;

    aput-object v3, v6, v1

    iget v3, v0, Lcom/google/android/maps/driveabout/f/ab;->c:I

    sub-int v0, v3, v2

    aput v0, v7, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v2, v3

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/f/aa;

    invoke-direct {v0, v5, p1, v6, v7}, Lcom/google/android/maps/driveabout/f/aa;-><init>(Lcom/google/android/maps/driveabout/f/d;Lcom/google/android/maps/driveabout/f/d;[Lcom/google/android/maps/driveabout/g/e;[I)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/maps/driveabout/f/aa;
    .locals 19

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/f/x;->b:Z

    new-instance v8, Ljava/util/PriorityQueue;

    const/16 v2, 0x64

    new-instance v3, Lcom/google/android/maps/driveabout/f/y;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/f/y;-><init>()V

    invoke-direct {v8, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/f/d;

    new-instance v4, Lcom/google/android/maps/driveabout/f/z;

    iget v5, v2, Lcom/google/android/maps/driveabout/f/d;->h:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/maps/driveabout/f/z;-><init>(ILcom/google/android/maps/driveabout/f/ab;Lcom/google/android/maps/driveabout/f/d;)V

    iget-object v2, v2, Lcom/google/android/maps/driveabout/f/d;->c:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v9, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const v3, 0x7fffffff

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/f/d;

    new-instance v6, Lcom/google/android/maps/driveabout/f/z;

    const v7, 0x7fffffff

    const/4 v10, 0x0

    invoke-direct {v6, v7, v10, v2}, Lcom/google/android/maps/driveabout/f/z;-><init>(ILcom/google/android/maps/driveabout/f/ab;Lcom/google/android/maps/driveabout/f/d;)V

    iget-object v7, v2, Lcom/google/android/maps/driveabout/f/d;->c:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v9, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v2, Lcom/google/android/maps/driveabout/f/d;->h:I

    if-ge v6, v3, :cond_c

    iget-object v3, v2, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/e/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/f/d;->h:I

    :goto_2
    move-object v4, v3

    move v3, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    const/4 v2, 0x0

    :goto_3
    return-object v2

    :cond_2
    invoke-static {}, Lcom/google/android/maps/driveabout/util/l;->a()Lcom/google/android/maps/driveabout/util/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/j;->y()Lcom/google/android/maps/driveabout/util/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/k;->l()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v5

    mul-double v10, v2, v5

    const/4 v7, 0x0

    const v6, 0x7fffffff

    :cond_3
    :goto_4
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/f/x;->b:Z

    if-nez v2, :cond_5

    const/4 v7, 0x0

    :cond_4
    if-eqz v7, :cond_a

    invoke-static {v9, v7}, Lcom/google/android/maps/driveabout/f/x;->a(Ljava/util/HashMap;Lcom/google/android/maps/driveabout/f/d;)Lcom/google/android/maps/driveabout/f/aa;

    move-result-object v2

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/maps/driveabout/f/ab;

    iget-boolean v2, v3, Lcom/google/android/maps/driveabout/f/ab;->g:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/google/android/maps/driveabout/f/ab;->g:Z

    if-eqz v3, :cond_b

    instance-of v2, v3, Lcom/google/android/maps/driveabout/f/z;

    if-eqz v2, :cond_b

    move-object v2, v3

    check-cast v2, Lcom/google/android/maps/driveabout/f/z;

    iget-object v5, v2, Lcom/google/android/maps/driveabout/f/z;->a:Lcom/google/android/maps/driveabout/f/d;

    iget-boolean v5, v5, Lcom/google/android/maps/driveabout/f/d;->a:Z

    if-nez v5, :cond_b

    iget v5, v3, Lcom/google/android/maps/driveabout/f/ab;->c:I

    iget-object v12, v2, Lcom/google/android/maps/driveabout/f/z;->a:Lcom/google/android/maps/driveabout/f/d;

    iget v12, v12, Lcom/google/android/maps/driveabout/f/d;->h:I

    add-int/2addr v5, v12

    if-ge v5, v6, :cond_b

    iget-object v2, v2, Lcom/google/android/maps/driveabout/f/z;->a:Lcom/google/android/maps/driveabout/f/d;

    move-object v6, v2

    :goto_5
    iget-object v12, v3, Lcom/google/android/maps/driveabout/f/ab;->b:Lcom/google/android/maps/driveabout/g/e;

    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/g/e;->c()I

    move-result v13

    const/4 v2, 0x0

    move v7, v2

    :goto_6
    if-ge v7, v13, :cond_9

    invoke-virtual {v12, v7}, Lcom/google/android/maps/driveabout/g/e;->a(I)Lcom/google/android/maps/driveabout/g/a;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/f/x;->a:Lcom/google/android/maps/driveabout/g/b;

    invoke-virtual {v14, v2}, Lcom/google/android/maps/driveabout/g/a;->a(Lcom/google/android/maps/driveabout/g/b;)Lcom/google/android/maps/driveabout/g/e;

    move-result-object v15

    if-nez v15, :cond_7

    :cond_6
    :goto_7
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_6

    :cond_7
    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/f/ab;

    if-nez v2, :cond_8

    new-instance v2, Lcom/google/android/maps/driveabout/f/ab;

    const v16, 0x7fffffff

    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/g/e;->d()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v17, v17, v10

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v2, v0, v15, v3, v1}, Lcom/google/android/maps/driveabout/f/ab;-><init>(ILcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/f/ab;I)V

    invoke-virtual {v9, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget v15, v3, Lcom/google/android/maps/driveabout/f/ab;->c:I

    invoke-virtual {v14}, Lcom/google/android/maps/driveabout/g/a;->a()I

    move-result v14

    add-int/2addr v14, v15

    iget v15, v2, Lcom/google/android/maps/driveabout/f/ab;->c:I

    if-ge v14, v15, :cond_6

    iput v14, v2, Lcom/google/android/maps/driveabout/f/ab;->c:I

    iget v15, v2, Lcom/google/android/maps/driveabout/f/ab;->d:I

    add-int/2addr v14, v15

    iput v14, v2, Lcom/google/android/maps/driveabout/f/ab;->e:I

    iput-object v3, v2, Lcom/google/android/maps/driveabout/f/ab;->f:Lcom/google/android/maps/driveabout/f/ab;

    iget v14, v2, Lcom/google/android/maps/driveabout/f/ab;->c:I

    if-gt v14, v5, :cond_6

    invoke-virtual {v8, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    move-object v7, v6

    move v6, v5

    goto/16 :goto_4

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    move v5, v6

    move-object v6, v7

    goto :goto_5

    :cond_c
    move v2, v3

    move-object v3, v4

    goto/16 :goto_2
.end method

.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/f/x;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "Searcher"

    const-string v1, "Stopping search"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/f/x;->b:Z

    return-void
.end method
