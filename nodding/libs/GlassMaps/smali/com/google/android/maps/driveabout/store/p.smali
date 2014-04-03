.class public final Lcom/google/android/maps/driveabout/store/p;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/maps/driveabout/e/av;

.field final b:Lcom/google/android/maps/driveabout/store/bt;

.field final c:Z

.field final d:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

.field final e:Z

.field f:I

.field private g:Lcom/google/android/maps/driveabout/store/p;


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;)V
    .locals 6

    sget-object v3, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->NORMAL:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/store/p;-><init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;ZI)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/store/bt;Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/p;->g:Lcom/google/android/maps/driveabout/store/p;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/p;->a:Lcom/google/android/maps/driveabout/e/av;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/p;->b:Lcom/google/android/maps/driveabout/store/bt;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/p;->d:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    sget-object v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_AREA:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_ROUTE:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    invoke-virtual {p3, v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/p;->c:Z

    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/store/p;->e:Z

    iput p5, p0, Lcom/google/android/maps/driveabout/store/p;->f:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ILcom/google/android/maps/driveabout/e/au;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/p;->b:Lcom/google/android/maps/driveabout/store/bt;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/p;->a:Lcom/google/android/maps/driveabout/e/av;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/maps/driveabout/store/bt;->a(Lcom/google/android/maps/driveabout/e/av;ILcom/google/android/maps/driveabout/e/au;)V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/maps/driveabout/e/av;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/p;->a:Lcom/google/android/maps/driveabout/e/av;

    return-object v0
.end method

.method protected final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/store/p;->f:I

    return-void
.end method

.method final a(ILcom/google/android/maps/driveabout/e/au;)V
    .locals 0

    :goto_0
    if-eqz p0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/p;->b(ILcom/google/android/maps/driveabout/e/au;)V

    iget-object p0, p0, Lcom/google/android/maps/driveabout/store/p;->g:Lcom/google/android/maps/driveabout/store/p;

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/store/p;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/p;->g:Lcom/google/android/maps/driveabout/store/p;

    iput-object v0, p1, Lcom/google/android/maps/driveabout/store/p;->g:Lcom/google/android/maps/driveabout/store/p;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/p;->g:Lcom/google/android/maps/driveabout/store/p;

    return-void
.end method

.method protected final b()Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/p;->d:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    return-object v0
.end method

.method protected final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/p;->c:Z

    return v0
.end method

.method protected final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/p;->e:Z

    return v0
.end method

.method protected final e()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/p;->f:I

    return v0
.end method
