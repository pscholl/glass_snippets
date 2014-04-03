.class public final Lcom/google/glass/location/f;
.super Ljava/lang/Object;


# static fields
.field static final a:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final b:Ljava/util/Comparator;

.field public static final c:J


# instance fields
.field private final d:Lcom/google/glass/logging/i;

.field private final e:Landroid/location/LocationManager;

.field private final f:Lcom/google/common/base/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/location/f;->a:J

    new-instance v0, Lcom/google/glass/location/g;

    invoke-direct {v0}, Lcom/google/glass/location/g;-><init>()V

    sput-object v0, Lcom/google/glass/location/f;->b:Ljava/util/Comparator;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/location/f;->c:J

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Lcom/google/glass/util/o;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/google/glass/logging/j;->a(Ljava/lang/Object;)Lcom/google/glass/logging/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/f;->d:Lcom/google/glass/logging/i;

    const-string v0, "null locationManager"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/location/f;->e:Landroid/location/LocationManager;

    const-string v0, "null clock"

    invoke-static {p2, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/glass/location/h;

    sget-wide v1, Lcom/google/glass/location/f;->c:J

    invoke-direct {v0, v1, v2, p2}, Lcom/google/glass/location/h;-><init>(JLcom/google/glass/util/o;)V

    iput-object v0, p0, Lcom/google/glass/location/f;->f:Lcom/google/common/base/aj;

    return-void
.end method

.method private a(Ljava/util/Comparator;Lcom/google/common/base/aj;)Landroid/location/Location;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/glass/location/f;->e:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/location/f;->e:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/location/f;->d:Lcom/google/glass/logging/i;

    const-string v4, "Location failed predicate check: [%s]"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/location/f;->d:Lcom/google/glass/logging/i;

    const-string v1, "Could not get any last known location..."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_3
    invoke-static {v1, p1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iget-object v2, p0, Lcom/google/glass/location/f;->d:Lcom/google/glass/logging/i;

    const-string v3, "Found [%s] last known locations.  Best was from provider: [%s], accuracy: [%s], time: [%s]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 2

    sget-object v0, Lcom/google/glass/location/f;->b:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/glass/location/f;->f:Lcom/google/common/base/aj;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/location/f;->a(Ljava/util/Comparator;Lcom/google/common/base/aj;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
