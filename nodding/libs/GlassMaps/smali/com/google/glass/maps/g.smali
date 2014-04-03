.class public Lcom/google/glass/maps/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/location/b;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/glass/maps/ca;

.field private final e:Lcom/google/glass/location/f;

.field private final f:Lcom/google/glass/ongoing/OngoingActivityManager;

.field private g:Lcom/google/glass/maps/NavigationActiveItemParams;

.field private final h:Lcom/google/glass/util/o;

.field private i:J

.field private j:Lcom/google/glass/maps/directions/i;

.field private k:Lcom/google/android/maps/driveabout/location/m;

.field private l:Lcom/google/android/maps/driveabout/c/t;

.field private m:Lcom/google/glass/maps/directions/TransitMapView;

.field private n:Lcom/google/glass/maps/h;

.field private o:Lcom/google/glass/maps/i;

.field private p:Lcom/google/glass/maps/directions/e;

.field private volatile q:Z

.field private r:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/maps/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/g;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/maps/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/g;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/ca;Lcom/google/glass/ongoing/OngoingActivityManager;Lcom/google/glass/util/o;Lcom/google/glass/location/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/g;->q:Z

    const/high16 v0, 0x4f00

    iput v0, p0, Lcom/google/glass/maps/g;->r:F

    iput-object p1, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/maps/g;->d:Lcom/google/glass/maps/ca;

    iput-object p3, p0, Lcom/google/glass/maps/g;->f:Lcom/google/glass/ongoing/OngoingActivityManager;

    iput-object p4, p0, Lcom/google/glass/maps/g;->h:Lcom/google/glass/util/o;

    iput-object p5, p0, Lcom/google/glass/maps/g;->e:Lcom/google/glass/location/f;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/g;)Lcom/google/glass/maps/ca;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/g;->d:Lcom/google/glass/maps/ca;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/maps/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/google/glass/maps/g;)Lcom/google/glass/maps/directions/i;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    return-object v0
.end method

.method static synthetic n()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/g;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/g;->a:Ljava/lang/String;

    const-string v1, "initializing location pipeline"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/maps/driveabout/location/m;

    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/ao;->f()Lcom/google/android/maps/driveabout/location/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/m;-><init>(Lcom/google/android/maps/driveabout/location/t;)V

    iput-object v0, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    iget-object v0, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/m;->a(I)V

    iget-object v0, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/m;->c()V

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/c/a;

    iget-object v1, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/c/b;->b()Lcom/google/android/maps/driveabout/location/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v2, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    const-string v3, "network"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v2, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    const-string v3, "android_orientation"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/h/f;->a(Lcom/google/android/maps/driveabout/h/f;)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->h()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    iget-object v2, v2, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    invoke-static {v1, v2}, Lcom/google/glass/maps/directions/b;->b(Landroid/content/Context;[Lcom/google/glass/maps/directions/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/glass/maps/NavigationActiveItemParams;

    sget-object v3, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->DIRECTIONS:Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    invoke-direct {v2, v3}, Lcom/google/glass/maps/NavigationActiveItemParams;-><init>(Lcom/google/glass/maps/NavigationActiveItemParams$CardType;)V

    invoke-virtual {v2, v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/google/glass/maps/NavigationActiveItemParams;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    iget-object v1, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/i;->b(Landroid/content/Context;)Lcom/google/glass/util/ParcelableImageSpannable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->a(Lcom/google/glass/util/ParcelableImageSpannable;)V

    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/i;->c()[Lcom/google/glass/maps/SchematicSegment;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->a([Lcom/google/glass/maps/SchematicSegment;)V

    iget-object v0, p0, Lcom/google/glass/maps/g;->g:Lcom/google/glass/maps/NavigationActiveItemParams;

    invoke-static {v0, v2}, Lcom/google/glass/maps/c/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/google/glass/maps/g;->g:Lcom/google/glass/maps/NavigationActiveItemParams;

    iget-object v0, p0, Lcom/google/glass/maps/g;->f:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationActiveItemParams;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/g;->g:Lcom/google/glass/maps/NavigationActiveItemParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/g;->g:Lcom/google/glass/maps/NavigationActiveItemParams;

    iget-object v0, p0, Lcom/google/glass/maps/g;->f:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0, v1}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/maps/directions/b;)Lcom/google/android/maps/driveabout/e/ab;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    iget-object v0, v0, Lcom/google/glass/maps/directions/i;->c:Lcom/google/android/maps/driveabout/e/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    iget-object v0, v0, Lcom/google/glass/maps/directions/i;->c:Lcom/google/android/maps/driveabout/e/af;

    iget v1, p1, Lcom/google/glass/maps/directions/b;->j:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/af;->a(I)Lcom/google/android/maps/driveabout/e/ab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/glass/maps/g;->b:Lcom/google/glass/logging/i;

    const-string v1, "stopDirections"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/glass/maps/g;->q()V

    iput-object v3, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    iget-object v0, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/location/m;->b(Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v3, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/g;->d:Lcom/google/glass/maps/ca;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/ca;->b(I)V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/g;->m:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/g;->m:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->a(Lcom/google/android/maps/driveabout/location/z;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZZ)V
    .locals 10

    invoke-direct {p0}, Lcom/google/glass/maps/g;->o()V

    iget-object v0, p0, Lcom/google/glass/maps/g;->d:Lcom/google/glass/maps/ca;

    invoke-virtual {v0}, Lcom/google/glass/maps/ca;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/g;->q:Z

    sget-object v0, Lcom/google/glass/maps/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDirections: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/maps/g;->h:Lcom/google/glass/util/o;

    invoke-interface {v0}, Lcom/google/glass/util/o;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/g;->i:J

    iget-object v0, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/glass/maps/g;->d:Lcom/google/glass/maps/ca;

    iget-object v1, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    sget v3, Lcom/google/glass/maps/bs;->directions:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/maps/ca;->a(ILjava/lang/CharSequence;)V

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    const-string v1, "GlassNav"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/util/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/google/glass/maps/i;

    invoke-direct {v0, p0, v1, p4}, Lcom/google/glass/maps/i;-><init>(Lcom/google/glass/maps/g;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V

    iput-object v0, p0, Lcom/google/glass/maps/g;->o:Lcom/google/glass/maps/i;

    iget-object v0, p0, Lcom/google/glass/maps/g;->o:Lcom/google/glass/maps/i;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    iget-object v0, p0, Lcom/google/glass/maps/g;->e:Lcom/google/glass/location/f;

    invoke-virtual {v0}, Lcom/google/glass/location/f;->a()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/maps/driveabout/nav/ao;

    if-nez p1, :cond_2

    new-instance v4, Lcom/google/android/maps/driveabout/e/m;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    const-wide v7, 0x412e848000000000L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const-wide v8, 0x412e848000000000L

    mul-double/2addr v6, v8

    double-to-int v0, v6

    invoke-direct {v4, v5, v0}, Lcom/google/android/maps/driveabout/e/m;-><init>(II)V

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v0, 0x0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ap;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v0, v4, v7, v8}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/nav/ap;Lcom/google/android/maps/driveabout/e/m;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v5

    :goto_1
    const/4 v0, 0x1

    aput-object p2, v3, v0

    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/maps/ao;->a(Lcom/google/android/maps/driveabout/nav/ao;)V

    new-instance v0, Lcom/google/glass/maps/directions/g;

    iget-object v4, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/google/glass/maps/directions/g;-><init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;II)V

    if-nez p4, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/directions/g;->a(I)Lcom/google/glass/maps/directions/g;

    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/maps/directions/g;->a()Lcom/google/glass/maps/directions/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    iput-object v0, p0, Lcom/google/glass/maps/g;->p:Lcom/google/glass/maps/directions/e;

    :goto_2
    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/GlassUserEventLogger;->e(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    aput-object p1, v3, v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/glass/maps/g;->b:Lcom/google/glass/logging/i;

    const-string v1, "No last known location"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/google/glass/maps/directions/TransitMapView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/g;->m:Lcom/google/glass/maps/directions/TransitMapView;

    return-void
.end method

.method public final a(Lcom/google/glass/maps/directions/i;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    iget-object v0, p0, Lcom/google/glass/maps/g;->d:Lcom/google/glass/maps/ca;

    invoke-virtual {v0, p1, v2}, Lcom/google/glass/maps/ca;->a(Lcom/google/glass/maps/directions/i;I)V

    iget-object v0, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->a()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_NAVIGATION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    iget-object v0, p1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v0, v0

    if-le v0, v2, :cond_0

    iget-object v0, p1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    iget-object v1, p1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x4120

    :goto_0
    iput v0, p0, Lcom/google/glass/maps/g;->r:F

    :cond_0
    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->j()Lcom/google/android/maps/driveabout/c/v;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/maps/driveabout/c/t;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/c/t;-><init>()V

    iput-object v1, p0, Lcom/google/glass/maps/g;->l:Lcom/google/android/maps/driveabout/c/t;

    iget-object v1, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    iget-object v2, p0, Lcom/google/glass/maps/g;->l:Lcom/google/android/maps/driveabout/c/t;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/c/t;)V

    iget-object v1, p0, Lcom/google/glass/maps/g;->l:Lcom/google/android/maps/driveabout/c/t;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/c/t;->a(Lcom/google/android/maps/driveabout/h/f;)V

    :cond_1
    return-void

    :cond_2
    const/high16 v0, 0x42c8

    goto :goto_0
.end method

.method public final a(Lcom/google/glass/maps/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/g;->n:Lcom/google/glass/maps/h;

    return-void
.end method

.method public final b()V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/ao;->h()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/c/p;->a(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/g;->a(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZZ)V

    return-void
.end method

.method public final c()V
    .locals 3

    sget-object v0, Lcom/google/glass/maps/g;->b:Lcom/google/glass/logging/i;

    const-string v1, "onActivityPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/glass/maps/g;->p()V

    return-void
.end method

.method public final d()V
    .locals 3

    sget-object v0, Lcom/google/glass/maps/g;->b:Lcom/google/glass/logging/i;

    const-string v1, "onActivityResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/m;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/g;->l:Lcom/google/android/maps/driveabout/c/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/g;->l:Lcom/google/android/maps/driveabout/c/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/c/t;->c()V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/glass/maps/g;->b:Lcom/google/glass/logging/i;

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/m;->e()V

    iput-object v3, p0, Lcom/google/glass/maps/g;->k:Lcom/google/android/maps/driveabout/location/m;

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/g;->l:Lcom/google/android/maps/driveabout/c/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/g;->l:Lcom/google/android/maps/driveabout/c/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/c/t;->d()V

    iput-object v3, p0, Lcom/google/glass/maps/g;->l:Lcom/google/android/maps/driveabout/c/t;

    :cond_1
    return-void
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/g;->d:Lcom/google/glass/maps/ca;

    invoke-virtual {v0}, Lcom/google/glass/maps/ca;->c()I

    move-result v0

    return v0
.end method

.method public final g()Lcom/google/glass/maps/directions/b;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    iget-object v0, v0, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    iget-object v1, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    iget-object v1, v1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()I
    .locals 4

    iget-object v0, p0, Lcom/google/glass/maps/g;->h:Lcom/google/glass/util/o;

    invoke-interface {v0}, Lcom/google/glass/util/o;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/g;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/g;->d:Lcom/google/glass/maps/ca;

    invoke-virtual {v0}, Lcom/google/glass/maps/ca;->a()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/g;->d:Lcom/google/glass/maps/ca;

    invoke-virtual {v0}, Lcom/google/glass/maps/ca;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/g;->q:Z

    return v0
.end method

.method public final m()Lcom/google/glass/location/f;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/g;->e:Lcom/google/glass/location/f;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/g;->l:Lcom/google/android/maps/driveabout/c/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/g;->a(Lcom/google/android/maps/driveabout/location/z;)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/g;->m:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/g;->m:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->a(Landroid/location/Location;)V

    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    iget-object v0, v0, Lcom/google/glass/maps/directions/i;->a:Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget-object v0, p0, Lcom/google/glass/maps/g;->j:Lcom/google/glass/maps/directions/i;

    iget-object v0, v0, Lcom/google/glass/maps/directions/i;->a:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Lcom/google/android/maps/driveabout/e/m;)F

    move-result v0

    iget v1, p0, Lcom/google/glass/maps/g;->r:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    sget-object v0, Lcom/google/glass/maps/g;->b:Lcom/google/glass/logging/i;

    const-string v1, "Distance within threshold - stopping directions"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/g;->q:Z

    iget-object v0, p0, Lcom/google/glass/maps/g;->n:Lcom/google/glass/maps/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/g;->n:Lcom/google/glass/maps/h;

    invoke-interface {v0}, Lcom/google/glass/maps/h;->a()V

    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->a()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    iget-object v0, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/g;->c:Landroid/content/Context;

    sget v2, Lcom/google/glass/maps/bs;->you_have_arrived:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassApplication;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
