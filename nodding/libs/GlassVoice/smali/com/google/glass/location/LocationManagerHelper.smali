.class public Lcom/google/glass/location/LocationManagerHelper;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;
    }
.end annotation


# static fields
.field static final DEFAULT_FRESHNESS_THRESHOLD_MS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_STALE_LOCATION_MILLIS:J


# instance fields
.field private final defaultLocationPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final locationManager:Landroid/location/LocationManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_FRESHNESS_THRESHOLD_MS:J

    .line 58
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$1;

    invoke-direct {v0}, Lcom/google/glass/location/LocationManagerHelper$1;-><init>()V

    sput-object v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    .line 115
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_STALE_LOCATION_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Lcom/google/glass/util/Clock;)V
    .locals 3
    .parameter "locationManager"
    .parameter "clock"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 135
    const-string v0, "null locationManager"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    .line 136
    const-string v0, "null clock"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    sget-wide v1, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_STALE_LOCATION_MILLIS:J

    invoke-direct {v0, v1, v2, p2}, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;-><init>(JLcom/google/glass/util/Clock;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->defaultLocationPredicate:Lcom/google/common/base/Predicate;

    .line 139
    return-void
.end method


# virtual methods
.method public getLastKnownLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper;->defaultLocationPredicate:Lcom/google/common/base/Predicate;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/Predicate;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/Predicate;)Landroid/location/Location;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Landroid/location/Location;",
            ">;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/location/Location;"
        }
    .end annotation

    .prologue
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-Landroid/location/Location;>;"
    .local p2, isUsableLocationPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-Landroid/location/Location;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 154
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v6}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v5

    .line 155
    .local v5, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 157
    .local v2, lastKnownLocations:Ljava/util/List;,"Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 158
    .local v4, provider:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 159
    .local v3, location:Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 163
    if-eqz p2, :cond_1

    invoke-interface {p2, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 164
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Location failed predicate check: [%s]"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v3           #location:Landroid/location/Location;
    .end local v4           #provider:Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 171
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Could not get any last known location..."

    new-array v8, v10, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    const/4 v0, 0x0

    .line 181
    :goto_1
    return-object v0

    .line 175
    :cond_3
    invoke-static {v2, p1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 176
    .local v0, bestLastKnownLocation:Landroid/location/Location;
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Found [%s] last known locations.  Best was from provider: [%s], accuracy: [%s], time: [%s]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public obtainNewLocation(Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Landroid/location/Location;
    .locals 16
    .parameter "criteria"
    .parameter
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .parameter "looper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Ljava/util/Comparator",
            "<-",
            "Landroid/location/Location;",
            ">;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Landroid/location/Location;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Landroid/os/Looper;",
            ")",
            "Landroid/location/Location;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 206
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-Landroid/location/Location;>;"
    .local p3, isUsableLocationPredicate:Lcom/google/common/base/Predicate;,"Lcom/google/common/base/Predicate<-Landroid/location/Location;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v15

    .line 207
    .local v15, providers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "obtainNewLocation(): enabled providers that match criteria: [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    const/4 v10, 0x0

    .line 260
    :goto_0
    return-object v10

    .line 212
    :cond_0
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v13

    .line 214
    .local v13, locationByProvider:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/location/Location;>;"
    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 216
    .local v12, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Lcom/google/glass/location/LocationManagerHelper$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v8, v0, v1, v13, v12}, Lcom/google/glass/location/LocationManagerHelper$2;-><init>(Lcom/google/glass/location/LocationManagerHelper;Lcom/google/common/base/Predicate;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V

    .line 237
    .local v8, listener:Landroid/location/LocationListener;
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 238
    .local v4, provider:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Requesting updates from provider: [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v9, p7

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_1

    .line 244
    .end local v4           #provider:Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Waiting for location updates."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    move-wide/from16 v0, p4

    move-object/from16 v2, p6

    invoke-virtual {v12, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Done waiting for location updates."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v8}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 251
    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Did not obtain any location."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    const/4 v10, 0x0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v8}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    throw v3

    .line 256
    :cond_2
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    .line 257
    .local v14, locations:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/location/Location;>;"
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/Location;

    .line 258
    .local v10, bestObtainedLocation:Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Obtained [%s] new locations.  Best was from provider: [%s], accuracy: [%s]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v10}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
