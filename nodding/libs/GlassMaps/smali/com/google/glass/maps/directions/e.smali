.class public final Lcom/google/glass/maps/directions/e;
.super Lcom/google/googlenav/datarequest/a;


# instance fields
.field private final a:I

.field private final b:[Lcom/google/android/maps/driveabout/nav/ao;

.field private final c:[Lcom/google/android/maps/driveabout/nav/b;

.field private final d:I

.field private final e:I

.field private f:Lcom/google/googlenav/common/io/b/a;

.field private g:I

.field private h:[Lcom/google/android/maps/driveabout/nav/ao;

.field private i:[Lcom/google/android/maps/driveabout/nav/b;

.field private j:[Lcom/google/glass/maps/directions/i;

.field private k:Lcom/google/android/maps/driveabout/nav/ao;

.field private l:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/maps/directions/e;->g:I

    iput-object p1, p0, Lcom/google/glass/maps/directions/e;->l:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/maps/directions/e;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    iput p3, p0, Lcom/google/glass/maps/directions/e;->a:I

    iput p5, p0, Lcom/google/glass/maps/directions/e;->e:I

    iput p4, p0, Lcom/google/glass/maps/directions/e;->d:I

    iput-object p6, p0, Lcom/google/glass/maps/directions/e;->c:[Lcom/google/android/maps/driveabout/nav/b;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;Lcom/google/glass/maps/directions/f;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/glass/maps/directions/e;-><init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;)V

    return-void
.end method

.method private a(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->f:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/glass/maps/directions/e;I)I
    .locals 0

    iput p1, p0, Lcom/google/glass/maps/directions/e;->g:I

    return p1
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Lcom/google/android/maps/driveabout/nav/ao;
    .locals 4

    const/16 v3, 0xf

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    new-instance v0, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v0, v2, p1}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/ao;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/directions/b;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/b;->c()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v3, :cond_0

    move v1, v2

    :goto_1
    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/glass/maps/directions/b;->a(Lcom/google/glass/maps/directions/b;)V

    move-object v0, v1

    move v1, v3

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/b;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/google/glass/maps/bs;->walk_to:I

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/glass/maps/directions/b;->e:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {p0, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/glass/maps/directions/b;->b:Ljava/lang/String;

    :goto_2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    :cond_2
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move v1, v3

    goto :goto_1

    :cond_3
    sget v3, Lcom/google/glass/maps/bs;->walk_to:I

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/glass/maps/directions/b;->d:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {p0, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/glass/maps/directions/b;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    return-object v5
.end method

.method private a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/directions/e;->f:Lcom/google/googlenav/common/io/b/a;

    invoke-direct {p0}, Lcom/google/glass/maps/directions/e;->i()V

    return-void
.end method

.method static a([Lcom/google/android/maps/driveabout/nav/ao;)Z
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/android/maps/driveabout/e/ab;->b(II)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/android/maps/driveabout/e/ab;->b(II)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/e/ab;->c(Lcom/google/android/maps/driveabout/e/ab;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/e/ab;->e()D

    move-result-wide v5

    div-double v2, v3, v5

    const-wide/high16 v4, 0x4000

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Ljava/util/ArrayList;[Lcom/google/glass/maps/directions/d;)[Lcom/google/glass/maps/directions/b;
    .locals 16

    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v8

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_a

    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v9

    const/16 v1, 0xa

    invoke-virtual {v9, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v10

    if-nez v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v1

    :cond_0
    invoke-static {v9}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/e/m;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v7, v5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_1

    aget-object v11, v5, v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    const/4 v1, 0x0

    move v7, v1

    :goto_2
    if-ge v7, v10, :cond_8

    new-instance v11, Lcom/google/glass/maps/directions/b;

    const/16 v1, 0xa

    invoke-virtual {v9, v1, v7}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-direct {v11, v1, v0}, Lcom/google/glass/maps/directions/b;-><init>(Lcom/google/googlenav/common/io/b/a;[Lcom/google/glass/maps/directions/d;)V

    iget-boolean v1, v11, Lcom/google/glass/maps/directions/b;->k:Z

    if-nez v1, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_2

    :cond_3
    iget-wide v12, v11, Lcom/google/glass/maps/directions/b;->f:J

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-lez v1, :cond_7

    iget-wide v3, v11, Lcom/google/glass/maps/directions/b;->f:J

    :cond_4
    :goto_4
    const-wide/16 v12, 0x0

    cmp-long v1, v3, v12

    if-lez v1, :cond_5

    iget-wide v12, v11, Lcom/google/glass/maps/directions/b;->i:J

    add-long/2addr v3, v12

    :cond_5
    iget-object v1, v11, Lcom/google/glass/maps/directions/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v11}, Lcom/google/glass/maps/directions/b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_6
    iget-wide v12, v11, Lcom/google/glass/maps/directions/b;->f:J

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-gtz v1, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_5
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v1

    goto :goto_3

    :cond_7
    const-wide/16 v12, 0x0

    cmp-long v1, v3, v12

    if-lez v1, :cond_4

    iput-wide v3, v11, Lcom/google/glass/maps/directions/b;->f:J

    goto :goto_4

    :cond_8
    if-ltz v5, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v7, v5, 0x1

    if-le v1, v7, :cond_9

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/directions/b;

    iget-wide v3, v1, Lcom/google/glass/maps/directions/b;->f:J

    :goto_6
    if-ltz v5, :cond_9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/directions/b;

    iget-wide v9, v1, Lcom/google/glass/maps/directions/b;->i:J

    sub-long/2addr v3, v9

    iput-wide v3, v1, Lcom/google/glass/maps/directions/b;->f:J

    iget-wide v3, v1, Lcom/google/glass/maps/directions/b;->f:J

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_b

    new-instance v1, Lcom/google/glass/util/p;

    invoke-direct {v1}, Lcom/google/glass/util/p;-><init>()V

    invoke-interface {v1}, Lcom/google/glass/util/o;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/directions/b;

    iput-wide v3, v1, Lcom/google/glass/maps/directions/b;->f:J

    iget-wide v6, v1, Lcom/google/glass/maps/directions/b;->i:J

    add-long/2addr v3, v6

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/glass/maps/directions/e;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/glass/maps/directions/b;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/glass/maps/directions/b;

    return-object v1

    :cond_c
    move v1, v5

    goto :goto_5
.end method

.method private static a(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/glass/maps/directions/d;)[Lcom/google/glass/maps/directions/i;
    .locals 8

    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    const/4 v0, 0x1

    if-ge v2, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v2, [Lcom/google/glass/maps/directions/i;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v7, v1}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v3, v4, p3}, Lcom/google/glass/maps/directions/e;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Ljava/util/ArrayList;[Lcom/google/glass/maps/directions/d;)[Lcom/google/glass/maps/directions/b;

    move-result-object v3

    invoke-static {p1}, Lcom/google/glass/maps/directions/e;->d(Lcom/google/googlenav/common/io/b/a;)I

    move-result v5

    new-instance v6, Lcom/google/glass/maps/directions/i;

    invoke-direct {v6, p2, v3, v4, v5}, Lcom/google/glass/maps/directions/i;-><init>(Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/glass/maps/directions/b;Ljava/util/ArrayList;I)V

    aput-object v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "SUCCESS_CODE"

    goto :goto_0

    :sswitch_1
    const-string v0, "BAD_WAYPOINT_COUNT"

    goto :goto_0

    :sswitch_2
    const-string v0, "WAYPOINT_REFINEMENT"

    goto :goto_0

    :sswitch_3
    const-string v0, "WAYPOINT_FAILURE"

    goto :goto_0

    :sswitch_4
    const-string v0, "NO_ROUTES_FOUND"

    goto :goto_0

    :sswitch_5
    const-string v0, "NO_ROUTING_COVERAGE"

    goto :goto_0

    :sswitch_6
    const-string v0, "NO_TRIPS_ON_GIVEN_DATE"

    goto :goto_0

    :sswitch_7
    const-string v0, "NAVIGATION_NOT_ALLOWED"

    goto :goto_0

    :sswitch_8
    const-string v0, "REQUEST_BLOCKED"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x64 -> :sswitch_8
    .end sparse-switch
.end method

.method private static b(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/glass/maps/directions/d;
    .locals 9

    const/4 v1, 0x0

    const/16 v8, 0xc

    new-array v0, v1, [Lcom/google/glass/maps/directions/d;

    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    new-array v0, v2, [Lcom/google/glass/maps/directions/d;

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v8, v1}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    new-instance v4, Lcom/google/glass/maps/directions/d;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v3, v7}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/google/glass/maps/directions/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static c(Lcom/google/googlenav/common/io/b/a;)V
    .locals 8

    const/16 v2, 0x11

    const/16 v1, 0xa

    const/4 v7, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/glass/maps/directions/a;->a(I)V

    :cond_2
    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v7, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/glass/maps/directions/a;->a(J)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/google/glass/maps/directions/a;->a([BJ)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static d(Lcom/google/googlenav/common/io/b/a;)I
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {p0, v1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v1

    if-le v1, v2, :cond_1

    :goto_0
    if-ne v0, v2, :cond_0

    const/16 v1, 0x17

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/b/f;->e(Lcom/google/googlenav/common/io/b/a;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static e(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 8

    const/4 v7, 0x7

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [Lcom/google/android/maps/driveabout/nav/ao;

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    new-array v0, v3, [Lcom/google/android/maps/driveabout/nav/ao;

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v7, v1}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    new-instance v5, Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static f(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/b;
    .locals 7

    const/16 v6, 0xe

    const/4 v2, 0x0

    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    new-array v0, v3, [Lcom/google/android/maps/driveabout/nav/b;

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/b;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v5

    aput-object v5, v0, v1

    aget-object v5, v0, v1

    if-nez v5, :cond_1

    const-string v0, "TransitDirectionsRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Option with no value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Lcom/google/android/maps/driveabout/nav/b;

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->f:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/directions/e;->g:I

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->f:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v0}, Lcom/google/glass/maps/directions/e;->f(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/e;->i:[Lcom/google/android/maps/driveabout/nav/b;

    invoke-direct {p0}, Lcom/google/glass/maps/directions/e;->m()V

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/e;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v1, p0, Lcom/google/glass/maps/directions/e;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/directions/e;->f:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v1, v0}, Lcom/google/glass/maps/directions/e;->a(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/e;->k:Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->f:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v0}, Lcom/google/glass/maps/directions/e;->b(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/glass/maps/directions/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/directions/e;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/maps/directions/e;->f:Lcom/google/googlenav/common/io/b/a;

    iget-object v3, p0, Lcom/google/glass/maps/directions/e;->k:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-static {v1, v2, v3, v0}, Lcom/google/glass/maps/directions/e;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/glass/maps/directions/d;)[Lcom/google/glass/maps/directions/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/e;->j:[Lcom/google/glass/maps/directions/i;

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->f:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v0}, Lcom/google/glass/maps/directions/e;->c(Lcom/google/googlenav/common/io/b/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/e;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->f:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v0}, Lcom/google/glass/maps/directions/e;->e(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/e;->h:[Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->h:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/glass/maps/directions/e;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/directions/e;->h:[Lcom/google/android/maps/driveabout/nav/ao;

    goto :goto_0

    :cond_2
    const-string v0, "TransitDirectionsRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/maps/directions/e;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()Lcom/google/googlenav/common/io/b/a;
    .locals 7

    const v6, 0x186a0

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/i/a/a/b/h;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    iget v0, p0, Lcom/google/glass/maps/directions/e;->a:I

    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/glass/maps/directions/e;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/maps/directions/e;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->j()Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    iget v3, p0, Lcom/google/glass/maps/directions/e;->d:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    iget v0, p0, Lcom/google/glass/maps/directions/e;->d:I

    if-le v0, v4, :cond_1

    const/16 v0, 0x16

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    :cond_1
    const/4 v0, 0x7

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/16 v0, 0xf

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x15

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x1d

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x1f

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x18

    iget v3, p0, Lcom/google/glass/maps/directions/e;->e:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/16 v0, 0x2c

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x1e

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    const/16 v0, 0x21

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    iget v0, p0, Lcom/google/glass/maps/directions/e;->e:I

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v3, Lcom/google/i/a/a/b/l;->g:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    iget-object v3, p0, Lcom/google/glass/maps/directions/e;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/util/f;->b(Lcom/google/android/maps/driveabout/e/m;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    invoke-virtual {v0, v5, v6}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    :cond_2
    const/4 v0, 0x6

    invoke-static {}, Lcom/google/glass/maps/directions/e;->k()Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->c:[Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->c:[Lcom/google/android/maps/driveabout/nav/b;

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    const/16 v5, 0xa

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/b;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method private static k()Lcom/google/googlenav/common/io/b/a;
    .locals 6

    const/4 v5, 0x3

    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/i/a/a/b/i;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/4 v0, 0x2

    invoke-static {}, Lcom/google/glass/maps/directions/a;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0, v5}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    invoke-static {}, Lcom/google/glass/maps/directions/a;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v5, v3, v4}, Lcom/google/googlenav/common/io/b/a;->a(IJ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {}, Lcom/google/glass/maps/directions/e;->l()Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    return-object v1
.end method

.method private static l()Lcom/google/googlenav/common/io/b/a;
    .locals 3

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/d;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    return-object v0
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x2

    iget v0, p0, Lcom/google/glass/maps/directions/e;->g:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->f:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    if-lt v1, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/google/glass/maps/directions/e;->a(I)I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lcom/google/glass/maps/directions/e;->a(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput v3, p0, Lcom/google/glass/maps/directions/e;->g:I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/maps/directions/e;->j()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/google/i/a/a/b/h;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/directions/e;->a(Lcom/google/googlenav/common/io/b/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DA:TransitDirectionsRequest"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "TransitDirectionsRequest: Handling request failed"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "TransitDirectionsRequest"

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "DA:TransitDirectionsRequest"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "TransitDirectionsRequest: Parse failed"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c()[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->h:[Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->k:Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public final e()[Lcom/google/glass/maps/directions/i;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->j:[Lcom/google/glass/maps/directions/i;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/directions/e;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/directions/e;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/glass/maps/directions/e;->g:I

    invoke-static {v0}, Lcom/google/glass/maps/directions/e;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " mode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/glass/maps/directions/e;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " action:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/glass/maps/directions/e;->e:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " waypoints: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/glass/maps/directions/e;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/maps/directions/e;->b:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, " maxTripCount:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/glass/maps/directions/e;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->c:[Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/directions/e;->c:[Lcom/google/android/maps/driveabout/nav/b;

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, " ] ]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
