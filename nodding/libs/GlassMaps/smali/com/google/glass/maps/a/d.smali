.class public final Lcom/google/glass/maps/a/d;
.super Lcom/google/glass/maps/a/a;


# instance fields
.field private final a:Lcom/google/glass/location/GlassLocationManager;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/Set;

.field private final d:Ljava/util/IdentityHashMap;

.field private e:Lcom/google/android/maps/driveabout/location/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v1, Lcom/google/glass/location/f;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {}, Lcom/google/glass/util/q;->a()Lcom/google/glass/util/o;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/glass/location/f;-><init>(Landroid/location/LocationManager;Lcom/google/glass/util/o;)V

    invoke-direct {p0, p1, v1}, Lcom/google/glass/maps/a/a;-><init>(Landroid/content/Context;Lcom/google/glass/location/f;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/a/d;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/a/d;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/a/d;->d:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/google/glass/location/GlassLocationManager;->a()Lcom/google/glass/location/GlassLocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/a/d;->a:Lcom/google/glass/location/GlassLocationManager;

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->b:Ljava/util/ArrayList;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->b:Ljava/util/ArrayList;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/glass/maps/a/d;Lcom/google/android/maps/driveabout/location/r;)Lcom/google/android/maps/driveabout/location/r;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/a/d;->e:Lcom/google/android/maps/driveabout/location/r;

    return-object p1
.end method

.method static synthetic a(Lcom/google/glass/maps/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/maps/a/d;->g()V

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsStatus$Listener;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->a:Lcom/google/glass/location/GlassLocationManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/location/GlassLocationManager;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/a/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/a/d;->a:Lcom/google/glass/location/GlassLocationManager;

    invoke-virtual {v1, v0}, Lcom/google/glass/location/GlassLocationManager;->a(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JFLcom/google/android/maps/driveabout/location/b;)V
    .locals 6

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/a/e;

    if-nez v0, :cond_0

    new-instance v5, Lcom/google/glass/maps/a/e;

    invoke-direct {v5, p0, p5}, Lcom/google/glass/maps/a/e;-><init>(Lcom/google/glass/maps/a/d;Lcom/google/android/maps/driveabout/location/b;)V

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p5, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/a/d;->a:Lcom/google/glass/location/GlassLocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/location/GlassLocationManager;->a(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void

    :cond_0
    move-object v5, v0

    goto :goto_0
.end method

.method public final a(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/location/r;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/a/d;->e:Lcom/google/android/maps/driveabout/location/r;

    return-object v0
.end method
