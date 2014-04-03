.class public final Lcom/google/android/maps/driveabout/store/bn;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/store/bv;

.field private c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/maps/driveabout/store/bn;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/store/bv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bn;->b:Lcom/google/android/maps/driveabout/store/bv;

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/bd;Lcom/google/android/maps/driveabout/e/f;ZLcom/google/android/maps/driveabout/store/bm;)V
    .locals 14

    new-instance v13, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/bd;->d()I

    move-result v1

    if-ge v11, v1, :cond_4

    invoke-virtual {p0, v11}, Lcom/google/android/maps/driveabout/e/bd;->a(I)Lcom/google/android/maps/driveabout/e/j;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/maps/driveabout/e/an;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/android/maps/driveabout/e/an;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/an;->a()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v2

    invoke-virtual {p1, v2, v13}, Lcom/google/android/maps/driveabout/e/f;->a(Lcom/google/android/maps/driveabout/e/af;Ljava/util/List;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/e/af;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/bm;->a(Lcom/google/android/maps/driveabout/e/an;Lcom/google/android/maps/driveabout/e/af;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_2
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_1

    instance-of v2, v1, Lcom/google/android/maps/driveabout/e/x;

    if-eqz v2, :cond_1

    move-object v10, v1

    check-cast v10, Lcom/google/android/maps/driveabout/e/x;

    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/e/x;->a()Lcom/google/android/maps/driveabout/e/af;

    move-result-object v1

    invoke-virtual {p1, v1, v13}, Lcom/google/android/maps/driveabout/e/f;->a(Lcom/google/android/maps/driveabout/e/af;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    new-array v9, v1, [I

    const/4 v1, 0x0

    move v12, v1

    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    new-instance v1, Lcom/google/android/maps/driveabout/e/an;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/e/af;

    sget-object v3, Lcom/google/android/maps/driveabout/store/bn;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/e/x;->d()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/e/an;-><init>(Lcom/google/android/maps/driveabout/e/af;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/maps/driveabout/e/ap;III[I)V

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/e/af;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/bm;->a(Lcom/google/android/maps/driveabout/e/an;Lcom/google/android/maps/driveabout/e/af;)V

    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/al;ZJ)Lcom/google/android/maps/driveabout/store/bm;
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/bg;->a(Lcom/google/android/maps/driveabout/e/al;)Lcom/google/android/maps/driveabout/e/bg;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/av;->a(Lcom/google/android/maps/driveabout/e/bg;I)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    move v3, v0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v7, p0, Lcom/google/android/maps/driveabout/store/bn;->b:Lcom/google/android/maps/driveabout/store/bv;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/av;

    invoke-interface {v7, v0, v2}, Lcom/google/android/maps/driveabout/store/bv;->a(Lcom/google/android/maps/driveabout/e/av;Z)Lcom/google/android/maps/driveabout/e/au;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-lez v3, :cond_5

    new-instance v7, Lcom/google/android/maps/driveabout/store/c;

    invoke-direct {v7, v3}, Lcom/google/android/maps/driveabout/store/c;-><init>(I)V

    move v1, v2

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/bn;->b:Lcom/google/android/maps/driveabout/store/bv;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/av;

    invoke-interface {v3, v0, v7}, Lcom/google/android/maps/driveabout/store/bv;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_7

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/store/c;->b()V

    :cond_4
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/store/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iput-object v6, p0, Lcom/google/android/maps/driveabout/store/bn;->c:Ljava/util/List;

    new-instance v1, Lcom/google/android/maps/driveabout/store/bm;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/store/bm;-><init>()V

    new-instance v3, Lcom/google/android/maps/driveabout/e/f;

    invoke-direct {v3, p1}, Lcom/google/android/maps/driveabout/e/f;-><init>(Lcom/google/android/maps/driveabout/e/am;)V

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/au;

    instance-of v4, v0, Lcom/google/android/maps/driveabout/e/bd;

    if-eqz v4, :cond_6

    check-cast v0, Lcom/google/android/maps/driveabout/e/bd;

    invoke-static {v0, v3, p2, v1}, Lcom/google/android/maps/driveabout/store/bn;->a(Lcom/google/android/maps/driveabout/e/bd;Lcom/google/android/maps/driveabout/e/f;ZLcom/google/android/maps/driveabout/store/bm;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v7, p3, p4}, Lcom/google/android/maps/driveabout/store/c;->a(J)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v4

    :goto_3
    return-object v0

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method
