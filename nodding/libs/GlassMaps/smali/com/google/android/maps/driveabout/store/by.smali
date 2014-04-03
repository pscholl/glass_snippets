.class public final Lcom/google/android/maps/driveabout/store/by;
.super Lcom/google/android/maps/driveabout/store/cb;


# static fields
.field public static final g:Lcom/google/android/maps/driveabout/store/ca;


# instance fields
.field private volatile i:Lcom/google/android/maps/driveabout/store/ca;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/store/bz;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/store/bz;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/store/by;->g:Lcom/google/android/maps/driveabout/store/ca;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILjava/util/Locale;ZLjava/io/File;Lcom/google/android/maps/driveabout/store/ca;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/maps/driveabout/store/cb;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILjava/util/Locale;ZLjava/io/File;)V

    iput-object p7, p0, Lcom/google/android/maps/driveabout/store/by;->i:Lcom/google/android/maps/driveabout/store/ca;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/bd;Lcom/google/android/maps/driveabout/store/bt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/by;->i:Lcom/google/android/maps/driveabout/store/ca;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/store/ca;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/bd;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p3}, Lcom/google/android/maps/driveabout/store/cb;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p3, p1, v0, v1}, Lcom/google/android/maps/driveabout/store/bt;->a(Lcom/google/android/maps/driveabout/e/av;ILcom/google/android/maps/driveabout/e/au;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/store/by;->a(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/bd;Lcom/google/android/maps/driveabout/store/bt;)V

    return-void
.end method
