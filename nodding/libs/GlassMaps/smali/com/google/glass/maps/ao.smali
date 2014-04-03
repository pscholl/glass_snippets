.class public final Lcom/google/glass/maps/ao;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/google/glass/logging/i;

.field private static c:Lcom/google/glass/maps/ao;


# instance fields
.field public a:Lcom/google/glass/maps/ca;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final d:Lcom/google/glass/navlib/g;

.field private final e:Lcom/google/android/maps/driveabout/location/t;

.field private final f:Lcom/google/glass/maps/NavigationManager;

.field private final g:Lcom/google/glass/maps/g;

.field private h:Lcom/google/android/maps/driveabout/nav/ao;

.field private i:Z

.field private j:Lcom/google/android/maps/driveabout/c/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/ao;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/ca;Lcom/google/glass/maps/NavigationManager;Lcom/google/glass/maps/g;Lcom/google/android/maps/driveabout/location/t;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/glass/maps/c/o;->a(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/google/glass/maps/ao;->e:Lcom/google/android/maps/driveabout/location/t;

    new-instance v0, Lcom/google/glass/navlib/h;

    invoke-direct {v0, p1}, Lcom/google/glass/navlib/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/ao;->d:Lcom/google/glass/navlib/g;

    iget-object v0, p0, Lcom/google/glass/maps/ao;->d:Lcom/google/glass/navlib/g;

    const-string v1, "GlassNav"

    invoke-interface {v0, v1, p5}, Lcom/google/glass/navlib/g;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V

    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v7

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/google/glass/maps/ao;->a:Lcom/google/glass/maps/ca;

    invoke-static {p1}, Lcom/google/glass/ongoing/OngoingActivityManager;->a(Landroid/content/Context;)Lcom/google/glass/ongoing/OngoingActivityManager;

    move-result-object v3

    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/google/glass/maps/ao;->g:Lcom/google/glass/maps/g;

    :goto_1
    if-eqz p3, :cond_2

    :goto_2
    iput-object p3, p0, Lcom/google/glass/maps/ao;->f:Lcom/google/glass/maps/NavigationManager;

    return-void

    :cond_0
    new-instance p2, Lcom/google/glass/maps/ca;

    invoke-direct {p2, p1}, Lcom/google/glass/maps/ca;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v5, Lcom/google/glass/location/f;

    invoke-static {}, Lcom/google/glass/util/q;->a()Lcom/google/glass/util/o;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/google/glass/location/f;-><init>(Landroid/location/LocationManager;Lcom/google/glass/util/o;)V

    new-instance v0, Lcom/google/glass/maps/g;

    iget-object v2, p0, Lcom/google/glass/maps/ao;->a:Lcom/google/glass/maps/ca;

    invoke-static {}, Lcom/google/glass/util/q;->a()Lcom/google/glass/util/o;

    move-result-object v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/g;-><init>(Landroid/content/Context;Lcom/google/glass/maps/ca;Lcom/google/glass/ongoing/OngoingActivityManager;Lcom/google/glass/util/o;Lcom/google/glass/location/f;)V

    iput-object v0, p0, Lcom/google/glass/maps/ao;->g:Lcom/google/glass/maps/g;

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/google/glass/maps/NavigationManager;

    iget-object v6, p0, Lcom/google/glass/maps/ao;->d:Lcom/google/glass/navlib/g;

    invoke-virtual {v7}, Lcom/google/glass/app/GlassApplication;->a()Lcom/google/glass/sound/SoundManager;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/maps/ao;->a:Lcom/google/glass/maps/ca;

    move-object v5, p1

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/maps/NavigationManager;-><init>(Landroid/content/Context;Lcom/google/glass/navlib/g;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/maps/ca;Lcom/google/glass/ongoing/OngoingActivityManager;)V

    move-object p3, v4

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v0, Lcom/google/glass/maps/ao;->c:Lcom/google/glass/maps/ao;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/google/android/maps/driveabout/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v5, Lcom/google/glass/maps/a/d;

    invoke-direct {v5, v1}, Lcom/google/glass/maps/a/d;-><init>(Landroid/content/Context;)V

    :goto_0
    new-instance v0, Lcom/google/glass/maps/ao;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/ao;-><init>(Landroid/content/Context;Lcom/google/glass/maps/ca;Lcom/google/glass/maps/NavigationManager;Lcom/google/glass/maps/g;Lcom/google/android/maps/driveabout/location/t;)V

    sput-object v0, Lcom/google/glass/maps/ao;->c:Lcom/google/glass/maps/ao;

    sget-object v0, Lcom/google/glass/maps/ao;->b:Lcom/google/glass/logging/i;

    const-string v1, "Created in %sms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance v5, Lcom/google/glass/maps/a/h;

    invoke-direct {v5, v1}, Lcom/google/glass/maps/a/h;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/google/glass/maps/ao;->c:Lcom/google/glass/maps/ao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    sget-object v0, Lcom/google/glass/maps/ao;->c:Lcom/google/glass/maps/ao;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/maps/ao;->c:Lcom/google/glass/maps/ao;

    invoke-direct {v0}, Lcom/google/glass/maps/ao;->k()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/maps/ao;->c:Lcom/google/glass/maps/ao;

    sget-object v0, Lcom/google/glass/maps/ao;->b:Lcom/google/glass/logging/i;

    const-string v1, "Destroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static c()Lcom/google/glass/maps/ao;
    .locals 2

    sget-object v0, Lcom/google/glass/maps/ao;->c:Lcom/google/glass/maps/ao;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initialize() must be called before getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/glass/maps/ao;->c:Lcom/google/glass/maps/ao;

    return-object v0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ao;->d:Lcom/google/glass/navlib/g;

    invoke-interface {v0}, Lcom/google/glass/navlib/g;->a()V

    iget-object v0, p0, Lcom/google/glass/maps/ao;->g:Lcom/google/glass/maps/g;

    invoke-virtual {v0}, Lcom/google/glass/maps/g;->e()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/c/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/ao;->j:Lcom/google/android/maps/driveabout/c/v;

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/ao;->h:Lcom/google/android/maps/driveabout/nav/ao;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/maps/ao;->i:Z

    return-void
.end method

.method public final d()Lcom/google/glass/maps/NavigationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ao;->f:Lcom/google/glass/maps/NavigationManager;

    return-object v0
.end method

.method public final e()Lcom/google/glass/maps/g;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ao;->g:Lcom/google/glass/maps/g;

    return-object v0
.end method

.method public final f()Lcom/google/android/maps/driveabout/location/t;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ao;->e:Lcom/google/android/maps/driveabout/location/t;

    return-object v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/ao;->h:Lcom/google/android/maps/driveabout/nav/ao;

    return-void
.end method

.method public final h()Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ao;->h:Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/ao;->i:Z

    return v0
.end method

.method public final j()Lcom/google/android/maps/driveabout/c/v;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ao;->j:Lcom/google/android/maps/driveabout/c/v;

    return-object v0
.end method
