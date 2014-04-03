.class public final Lcom/google/android/maps/driveabout/nav/ah;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/ab;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:F

.field private final j:F

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Landroid/text/Spanned;

.field private final o:Lcom/google/android/maps/driveabout/nav/aj;

.field private final p:Ljava/util/Map;

.field private final q:Ljava/util/List;

.field private final r:Ljava/util/List;

.field private final s:Ljava/util/List;

.field private final t:Ljava/util/List;

.field private final u:Ljava/util/List;

.field private final v:Ljava/util/List;

.field private w:Lcom/google/android/maps/driveabout/nav/ah;

.field private x:Lcom/google/android/maps/driveabout/nav/ah;


# direct methods
.method private constructor <init>(IIILcom/google/android/maps/driveabout/e/ab;IILjava/lang/String;IIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/nav/ah;->b:I

    iput p2, p0, Lcom/google/android/maps/driveabout/nav/ah;->c:I

    iput p3, p0, Lcom/google/android/maps/driveabout/nav/ah;->d:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/nav/ah;->a:Lcom/google/android/maps/driveabout/e/ab;

    iput p5, p0, Lcom/google/android/maps/driveabout/nav/ah;->e:I

    iput p6, p0, Lcom/google/android/maps/driveabout/nav/ah;->f:I

    iput p8, p0, Lcom/google/android/maps/driveabout/nav/ah;->g:I

    iput p9, p0, Lcom/google/android/maps/driveabout/nav/ah;->h:I

    iput p10, p0, Lcom/google/android/maps/driveabout/nav/ah;->i:F

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->j:F

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->k:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->l:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->m:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->u:Ljava/util/List;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/nav/i;

    invoke-virtual {v1, p0}, Lcom/google/android/maps/driveabout/nav/i;->a(Lcom/google/android/maps/driveabout/nav/ah;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->q:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->r:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->s:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->t:Ljava/util/List;

    move-object/from16 v0, p15

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/ah;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->q:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->r:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->r:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->s:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->t:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/util/List;Ljava/util/List;)V

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->b:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/nav/ah;->q:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/ah;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/nav/aj;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->o:Lcom/google/android/maps/driveabout/nav/aj;

    :goto_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    invoke-static {p7, v1}, Lcom/google/android/maps/driveabout/nav/ah;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->n:Landroid/text/Spanned;

    return-void

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->o:Lcom/google/android/maps/driveabout/nav/aj;

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/Spanned;
    .locals 9

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ai;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/nav/ai;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->b()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v3, v1, v7, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_3

    :cond_4
    if-ltz v1, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    const/16 v7, 0x21

    invoke-virtual {v3, v0, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_5
    return-object v3
.end method

.method public static a(Lcom/google/android/maps/driveabout/nav/al;III)Lcom/google/android/maps/driveabout/nav/ah;
    .locals 18

    new-instance v0, Lcom/google/android/maps/driveabout/nav/ah;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->b()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->c()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->d()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->a()Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->e()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->h()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->i()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->k()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->l()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->m()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->n()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->o()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/nav/al;->p()Ljava/util/List;

    move-result-object v17

    move/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v0 .. v17}, Lcom/google/android/maps/driveabout/nav/ah;-><init>(IIILcom/google/android/maps/driveabout/e/ab;IILjava/lang/String;IIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/e/ab;IIIFFLcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/nav/ah;
    .locals 20

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v14

    const/16 v3, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v15

    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v8

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v9

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v10

    const/16 v3, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/ah;->b(Lcom/google/googlenav/common/io/b/a;)I

    move-result v11

    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/ah;->c(Lcom/google/googlenav/common/io/b/a;)I

    move-result v7

    const/16 v3, 0xc

    if-ne v11, v3, :cond_0

    const/4 v3, 0x7

    const/4 v6, -0x1

    invoke-static {v4, v3, v6}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v3

    :goto_0
    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/ah;->d(Lcom/google/googlenav/common/io/b/a;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/e/ab;)Ljava/util/List;

    move-result-object v19

    const/16 v6, 0x10

    if-ne v11, v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p7, :cond_4

    move-object/from16 v0, p7

    invoke-static {v0, v6}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/ao;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_3

    :goto_1
    move-object v5, v4

    move-object v4, v6

    :goto_2
    move-object/from16 v17, v4

    move v6, v7

    move-object v13, v5

    move v5, v11

    move v7, v3

    :goto_3
    new-instance v3, Lcom/google/android/maps/driveabout/nav/al;

    move-object/from16 v4, p1

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v3 .. v19}, Lcom/google/android/maps/driveabout/nav/al;-><init>(Lcom/google/android/maps/driveabout/e/ab;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/al;III)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/googlenav/common/io/b/a;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_2

    :cond_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    move v5, v3

    goto :goto_3

    :cond_3
    move-object v4, v5

    goto :goto_1

    :cond_4
    move-object v4, v6

    goto :goto_2
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ao;Ljava/util/List;)Ljava/lang/String;
    .locals 10

    const/4 v6, 0x0

    const/4 v3, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/nav/aj;

    const/4 v1, 0x6

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/nav/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v9

    if-eqz v9, :cond_2

    move v7, v6

    :goto_0
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/nav/ap;->a()I

    move-result v0

    if-ge v7, v0, :cond_2

    new-instance v0, Lcom/google/android/maps/driveabout/nav/aj;

    const/4 v1, 0x7

    invoke-virtual {v9, v7}, Lcom/google/android/maps/driveabout/nav/ap;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/nav/aj;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v9, v7}, Lcom/google/android/maps/driveabout/nav/ap;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;)Ljava/util/ArrayList;
    .locals 5

    const/4 v4, 0x4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/nav/aj;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/e/ab;)Ljava/util/List;
    .locals 7

    const/4 v6, 0x6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v6, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lcom/google/android/maps/driveabout/nav/i;->a(Lcom/google/googlenav/common/io/b/a;D)Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ah;Ljava/util/List;)Ljava/util/Map;
    .locals 5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/nav/aj;->a(Lcom/google/android/maps/driveabout/nav/aj;Lcom/google/android/maps/driveabout/nav/ah;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/google/googlenav/common/io/b/a;)I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static c(Lcom/google/googlenav/common/io/b/a;)I
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static d(Lcom/google/googlenav/common/io/b/a;)Ljava/util/List;
    .locals 5

    const/4 v4, 0x5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/nav/ak;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/ak;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/e/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->a:Lcom/google/android/maps/driveabout/e/ab;

    return-object v0
.end method

.method final a(Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/ah;->w:Lcom/google/android/maps/driveabout/nav/ah;

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/i;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/google/android/maps/driveabout/nav/i;->a(Lcom/google/android/maps/driveabout/nav/ah;)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->b:I

    return v0
.end method

.method final b(Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/ah;->x:Lcom/google/android/maps/driveabout/nav/ah;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->g:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->h:I

    return v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->i:F

    return v0
.end method

.method public final h()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->j:F

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->e:I

    return v0
.end method

.method public final j()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->w:Lcom/google/android/maps/driveabout/nav/ah;

    return-object v0
.end method

.method public final k()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->x:Lcom/google/android/maps/driveabout/nav/ah;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Landroid/text/Spanned;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->n:Landroid/text/Spanned;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->q:Ljava/util/List;

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->r:Ljava/util/List;

    return-object v0
.end method

.method public final r()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->q:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->s:Ljava/util/List;

    goto :goto_0
.end method

.method public final s()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->p:Ljava/util/Map;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->u:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[idx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->a:Lcom/google/android/maps/driveabout/e/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " side:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/ah;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->o()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->v:Ljava/util/List;

    return-object v0
.end method

.method public final v()Lcom/google/android/maps/driveabout/nav/aj;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Lcom/google/android/maps/driveabout/nav/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->o:Lcom/google/android/maps/driveabout/nav/aj;

    return-object v0
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/nav/ah;->f:I

    return v0
.end method
