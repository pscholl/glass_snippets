.class Lcom/google/glass/location/LocationManagerHelper$2;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/location/LocationManagerHelper;->obtainNewLocation(Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/LocationManagerHelper;

.field final synthetic val$isUsableLocationPredicate:Lcom/google/common/base/Predicate;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$locationByProvider:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/glass/location/LocationManagerHelper;Lcom/google/common/base/Predicate;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/glass/location/LocationManagerHelper$2;->this$0:Lcom/google/glass/location/LocationManagerHelper;

    iput-object p2, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$isUsableLocationPredicate:Lcom/google/common/base/Predicate;

    iput-object p3, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$locationByProvider:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 219
    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$isUsableLocationPredicate:Lcom/google/common/base/Predicate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$isUsableLocationPredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v1, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$locationByProvider:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 227
    .local v0, previousLocation:Landroid/location/Location;
    if-nez v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 232
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 233
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 234
    return-void
.end method
