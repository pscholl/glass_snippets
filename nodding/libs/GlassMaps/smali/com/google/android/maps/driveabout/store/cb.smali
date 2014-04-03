.class public Lcom/google/android/maps/driveabout/store/cb;
.super Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;


# static fields
.field private static final g:Ljava/util/List;


# instance fields
.field protected h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/store/cb;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILjava/util/Locale;ZLjava/io/File;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/cb;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x100

    sget-object v5, Lcom/google/android/maps/driveabout/store/cb;->g:Ljava/util/List;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v7, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILjava/util/List;IIZLjava/util/Locale;ZLjava/io/File;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/store/cb;->h:J

    return-void
.end method

.method private static a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "GlassNav"

    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/e/c;->a()V

    :try_start_0
    invoke-super {p0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/googlenav/e/c;->b()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/googlenav/e/c;->b()V

    throw v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/maps/driveabout/store/cb;->h:J

    return-void
.end method

.method protected final g()Lcom/google/android/maps/driveabout/store/m;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/store/cc;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/store/cc;-><init>(Lcom/google/android/maps/driveabout/store/cb;)V

    return-object v0
.end method
