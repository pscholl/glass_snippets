.class public final Lcom/google/glass/maps/b/ao;
.super Ljava/lang/Object;


# static fields
.field private static final a:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    new-array v2, v6, [[F

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    aput-object v3, v2, v1

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    aput-object v3, v2, v0

    const/4 v3, 0x2

    new-array v4, v5, [F

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v3, v5, [F

    fill-array-data v3, :array_3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    new-array v4, v5, [F

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v5, [F

    fill-array-data v4, :array_5

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/glass/maps/b/ao;->a:[[F

    sget-object v2, Lcom/google/glass/maps/b/ao;->a:[[F

    array-length v2, v2

    if-ne v6, v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :array_0
    .array-data 0x4
        0xect 0x51t 0xb8t 0x3dt
        0xaet 0x47t 0xe1t 0x3et
        0x1ft 0x85t 0x2bt 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0xect 0x51t 0xb8t 0x3dt
        0xaet 0x47t 0xe1t 0x3et
        0x1ft 0x85t 0x2bt 0x3ft
    .end array-data

    :array_5
    .array-data 0x4
        0xect 0x51t 0xb8t 0x3dt
        0xaet 0x47t 0xe1t 0x3et
        0x1ft 0x85t 0x2bt 0x3ft
    .end array-data
.end method

.method public static a(Lcom/google/android/maps/driveabout/e/af;Ljava/util/List;)Lcom/google/glass/maps/b/h;
    .locals 4

    new-instance v0, Lcom/google/glass/maps/b/h;

    sget-object v1, Lcom/google/glass/maps/b/ao;->a:[[F

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/af;->b()I

    move-result v2

    invoke-static {v2, p1}, Lcom/google/glass/maps/b/ao;->a(ILjava/util/List;)[I

    move-result-object v2

    invoke-static {p1}, Lcom/google/glass/maps/b/ao;->a(Ljava/util/List;)Z

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/maps/b/h;-><init>(Lcom/google/android/maps/driveabout/e/af;[[F[IZ)V

    return-object v0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 3

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->a()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->a()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(ILjava/util/List;)[I
    .locals 6

    new-array v2, p0, [I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->a()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->b()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ab;->c()I

    move-result v5

    if-ge v1, v5, :cond_0

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
