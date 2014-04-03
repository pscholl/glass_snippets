.class public final Lcom/google/android/maps/driveabout/b/t;
.super Lcom/google/android/maps/driveabout/util/SharedSingleton;


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/b/t;


# instance fields
.field private c:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private d:Lcom/google/android/maps/driveabout/nav/q;

.field private e:Lcom/google/android/maps/driveabout/b/z;

.field private f:Lcom/google/android/maps/driveabout/b/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/b/t;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/b/t;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/b/t;->a:Lcom/google/android/maps/driveabout/b/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/util/SharedSingleton;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/b/t;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/b/t;->a:Lcom/google/android/maps/driveabout/b/t;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/b/t;->c(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/maps/driveabout/b/t;->a:Lcom/google/android/maps/driveabout/b/t;

    return-object v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/store/ax;Lcom/google/android/maps/driveabout/b/x;Lcom/google/android/maps/driveabout/nav/q;)Lcom/google/android/maps/driveabout/b/z;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/b/z;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/b/z;-><init>(Lcom/google/android/maps/driveabout/store/ax;Lcom/google/android/maps/driveabout/b/x;)V

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/nav/n;)V

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/b/z;Lcom/google/android/maps/driveabout/b/x;)V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/b/u;

    const-string v1, "OfflineReroutingHelper"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/google/android/maps/driveabout/b/u;-><init>(Lcom/google/android/maps/driveabout/b/t;Ljava/lang/String;Lcom/google/android/maps/driveabout/b/x;Lcom/google/android/maps/driveabout/b/z;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/u;->start()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->e:Lcom/google/android/maps/driveabout/b/z;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/z;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->f:Lcom/google/android/maps/driveabout/b/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->f:Lcom/google/android/maps/driveabout/b/z;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/z;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->d:Lcom/google/android/maps/driveabout/nav/q;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/q;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->c:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p()V

    return-void
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->c:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/q;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->d:Lcom/google/android/maps/driveabout/nav/q;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bx;->c(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/store/bv;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/cb;

    new-instance v1, Lcom/google/android/maps/driveabout/b/x;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/b/x;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/t;->d:Lcom/google/android/maps/driveabout/nav/q;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/b/t;->a(Lcom/google/android/maps/driveabout/store/ax;Lcom/google/android/maps/driveabout/b/x;Lcom/google/android/maps/driveabout/nav/q;)Lcom/google/android/maps/driveabout/b/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->e:Lcom/google/android/maps/driveabout/b/z;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->e:Lcom/google/android/maps/driveabout/b/z;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/z;->b()V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->ROAD_GRAPH:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bx;->c(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/store/bv;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/bk;

    new-instance v1, Lcom/google/android/maps/driveabout/b/x;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/b/x;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/t;->d:Lcom/google/android/maps/driveabout/nav/q;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/b/t;->a(Lcom/google/android/maps/driveabout/store/ax;Lcom/google/android/maps/driveabout/b/x;Lcom/google/android/maps/driveabout/nav/q;)Lcom/google/android/maps/driveabout/b/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->f:Lcom/google/android/maps/driveabout/b/z;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/t;->f:Lcom/google/android/maps/driveabout/b/z;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/b/t;->a(Lcom/google/android/maps/driveabout/b/z;Lcom/google/android/maps/driveabout/b/x;)V

    return-void
.end method
