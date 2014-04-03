.class public final Lcom/google/android/maps/driveabout/f/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/maps/driveabout/g/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/g/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/f/a;->b:Lcom/google/android/maps/driveabout/g/b;

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/w;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v1

    if-le v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v0

    goto :goto_1
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ah;IIII)Lcom/google/android/maps/driveabout/nav/ah;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->s()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/nav/aj;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->u()Ljava/util/List;

    move-result-object v3

    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/nav/i;

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->j()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v9, 0x0

    :goto_2
    if-nez v3, :cond_4

    const/4 v10, 0x0

    :goto_3
    new-instance v3, Lcom/google/android/maps/driveabout/nav/al;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->d()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->g()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->h()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->l()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->m()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->n()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->t()Ljava/util/List;

    move-result-object v18

    move/from16 v8, p2

    invoke-direct/range {v3 .. v19}, Lcom/google/android/maps/driveabout/nav/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/al;III)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v3

    return-object v3

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v9

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ah;->f()I

    move-result v10

    goto :goto_3
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/e/ah;)Lcom/google/android/maps/driveabout/nav/al;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->s()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/e/ah;->a()I

    move-result v6

    add-int/lit8 v1, v6, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/ah;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/e/ah;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/e/ab;->a(Lcom/google/android/maps/driveabout/e/ab;Lcom/google/android/maps/driveabout/e/ab;)D

    move-result-wide v1

    double-to-float v9, v1

    const/4 v14, 0x0

    new-instance v1, Lcom/google/android/maps/driveabout/nav/al;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/e/ah;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, -0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->l()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->m()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/ah;->t()Ljava/util/List;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move v10, v9

    invoke-direct/range {v1 .. v17}, Lcom/google/android/maps/driveabout/nav/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method private static a(ILcom/google/android/maps/driveabout/f/ac;)Ljava/util/ArrayList;
    .locals 12

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/f/ac;->d()[Lcom/google/android/maps/driveabout/g/f;

    move-result-object v10

    array-length v11, v10

    move v8, v7

    :goto_0
    if-ge v8, v11, :cond_2

    aget-object v3, v10, v8

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/g/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/nav/aj;

    const/4 v1, 0x3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/g/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/g/f;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/nav/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/maps/driveabout/g/e;->a:Lcom/google/android/maps/driveabout/g/f;

    if-eq v3, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    move v1, v7

    :goto_2
    new-instance v0, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/g/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/g/f;->a()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/nav/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x2

    goto :goto_2

    :cond_2
    return-object v9

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/f/aa;)Ljava/util/LinkedList;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    iget-object v2, p1, Lcom/google/android/maps/driveabout/f/aa;->c:[Lcom/google/android/maps/driveabout/g/e;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/google/android/maps/driveabout/f/ac;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/maps/driveabout/f/ac;-><init>(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/f/aa;I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/f/ac;->f()I

    move-result v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static a(Lcom/google/android/maps/driveabout/f/aa;Ljava/util/List;Ljava/util/List;Lcom/google/android/maps/driveabout/e/ah;)Ljava/util/List;
    .locals 23

    new-instance v20, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/f/aa;->c:[Lcom/google/android/maps/driveabout/g/e;

    move-object/from16 v21, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    const/4 v7, 0x0

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/maps/driveabout/f/ac;

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/maps/driveabout/f/h;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/f/ac;->e()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/google/android/maps/driveabout/f/ac;->a(Lcom/google/android/maps/driveabout/e/ah;)D

    move-result-wide v4

    double-to-int v8, v4

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    aget-object v3, v21, v3

    invoke-static {v2}, Lcom/google/android/maps/driveabout/f/b;->a(Lcom/google/android/maps/driveabout/g/e;)F

    move-result v10

    invoke-static {v3}, Lcom/google/android/maps/driveabout/f/b;->b(Lcom/google/android/maps/driveabout/g/e;)F

    move-result v11

    if-nez v2, :cond_0

    move v10, v11

    :cond_0
    new-instance v2, Lcom/google/android/maps/driveabout/nav/al;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/f/ac;->i()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/f/h;->a()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/f/h;->b()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/f/ac;->a()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/f/h;->c()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/driveabout/f/h;->d()Ljava/util/List;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {v2 .. v18}, Lcom/google/android/maps/driveabout/nav/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/maps/driveabout/e/ah;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, -0x1

    aget-object v2, v21, v2

    goto :goto_1

    :cond_2
    return-object v20
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 8

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/ac;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/f/a;->a(ILcom/google/android/maps/driveabout/f/ac;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Lcom/google/android/maps/driveabout/f/i;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/f/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/f/ac;->g()Lcom/google/android/maps/driveabout/g/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/b;->c(Lcom/google/android/maps/driveabout/g/e;)I

    move-result v0

    invoke-direct {v5, v6, v2, v0}, Lcom/google/android/maps/driveabout/f/i;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/maps/driveabout/f/ac;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/f/ac;->b()I

    move-result v5

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/ac;

    invoke-static {v5, v0}, Lcom/google/android/maps/driveabout/f/a;->a(ILcom/google/android/maps/driveabout/f/ac;)Ljava/util/ArrayList;

    move-result-object v0

    packed-switch v5, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_0
    new-instance v6, Lcom/google/android/maps/driveabout/f/n;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/f/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/f/ac;->c()I

    move-result v1

    invoke-direct {v6, v7, v0, v5, v1}, Lcom/google/android/maps/driveabout/f/n;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    new-instance v5, Lcom/google/android/maps/driveabout/f/m;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/f/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/f/ac;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lcom/google/android/maps/driveabout/f/m;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    new-instance v5, Lcom/google/android/maps/driveabout/f/l;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/f/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/f/ac;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lcom/google/android/maps/driveabout/f/l;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    new-instance v5, Lcom/google/android/maps/driveabout/f/o;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/f/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/f/ac;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lcom/google/android/maps/driveabout/f/o;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    new-instance v1, Lcom/google/android/maps/driveabout/f/k;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/f/a;->a:Landroid/content/Context;

    invoke-direct {v1, v5, v0}, Lcom/google/android/maps/driveabout/f/k;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    new-instance v5, Lcom/google/android/maps/driveabout/f/j;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/f/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/f/ac;->c()I

    move-result v1

    invoke-direct {v5, v6, v0, v1}, Lcom/google/android/maps/driveabout/f/j;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private static a(ILcom/google/android/maps/driveabout/nav/w;IILjava/util/ArrayList;Lcom/google/android/maps/driveabout/e/ah;)Z
    .locals 8

    invoke-static {p1, p0}, Lcom/google/android/maps/driveabout/f/a;->a(Lcom/google/android/maps/driveabout/nav/w;I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v4

    add-int/lit8 v0, p0, 0x1

    :goto_1
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual {p5, v3}, Lcom/google/android/maps/driveabout/e/ah;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v5

    invoke-virtual {p5}, Lcom/google/android/maps/driveabout/e/ah;->a()I

    move-result v6

    if-ne v0, v1, :cond_2

    move v2, p3

    move v3, p2

    :goto_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v5, v7, v6, v3, v2}, Lcom/google/android/maps/driveabout/f/a;->a(Lcom/google/android/maps/driveabout/nav/ah;IIII)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ah;->i()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v2

    :goto_4
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ah;->x()I

    move-result v3

    :goto_5
    if-ge v3, v2, :cond_4

    invoke-virtual {v4, v3}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v5

    invoke-virtual {p5, v5}, Lcom/google/android/maps/driveabout/e/ah;->a(Lcom/google/android/maps/driveabout/e/ab;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ah;->e()I

    move-result v3

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ah;->f()I

    move-result v2

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v2

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/f/aa;Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/w;)Lcom/google/android/maps/driveabout/nav/w;
    .locals 11

    const/4 v6, 0x0

    const/4 v0, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/e/ah;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/e/ah;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/a;->b:Lcom/google/android/maps/driveabout/g/b;

    invoke-static {v1, p1}, Lcom/google/android/maps/driveabout/f/a;->a(Lcom/google/android/maps/driveabout/g/b;Lcom/google/android/maps/driveabout/f/aa;)Ljava/util/LinkedList;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/f/ad;

    invoke-direct {v2, p1}, Lcom/google/android/maps/driveabout/f/ad;-><init>(Lcom/google/android/maps/driveabout/f/aa;)V

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/f/ad;->a(Ljava/util/LinkedList;)V

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/f/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v5}, Lcom/google/android/maps/driveabout/f/a;->a(Lcom/google/android/maps/driveabout/f/aa;Ljava/util/List;Ljava/util/List;Lcom/google/android/maps/driveabout/e/ah;)Ljava/util/List;

    move-result-object v8

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v0

    move v3, v0

    move v2, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/al;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/nav/al;

    invoke-static {v1, v7, v2, v3}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/al;III)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/al;->f()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/al;->g()I

    move-result v3

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ah;->b()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    const-string v1, "Describer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Join point: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/e/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ah;->a()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    iget-object v0, p1, Lcom/google/android/maps/driveabout/f/aa;->b:Lcom/google/android/maps/driveabout/f/d;

    iget v0, v0, Lcom/google/android/maps/driveabout/f/d;->e:I

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/f/a;->a(ILcom/google/android/maps/driveabout/nav/w;IILjava/util/ArrayList;Lcom/google/android/maps/driveabout/e/ah;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/f/a;->a(Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/e/ah;)Lcom/google/android/maps/driveabout/nav/al;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/al;->f()I

    move-result v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/al;->g()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/al;III)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v10, v0, [Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lcom/google/android/maps/driveabout/f/q;

    invoke-direct {v0, v10}, Lcom/google/android/maps/driveabout/f/q;-><init>([Lcom/google/android/maps/driveabout/nav/ah;)V

    new-instance v1, Lcom/google/android/maps/driveabout/f/c;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/f/c;-><init>()V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/c;->a(Lcom/google/android/maps/driveabout/f/q;)I

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/e/ah;->d()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v5

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/w;->m()I

    move-result v7

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/w;->x()[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v8

    move-object v2, p2

    move-object v4, v10

    move-object v10, v6

    invoke-static/range {v0 .. v10}, Lcom/google/android/maps/driveabout/nav/w;->a(IILcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/android/maps/driveabout/nav/ah;Lcom/google/android/maps/driveabout/e/af;Ljava/lang/String;I[Lcom/google/android/maps/driveabout/nav/b;ILjava/util/List;)Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v0

    return-object v0
.end method
