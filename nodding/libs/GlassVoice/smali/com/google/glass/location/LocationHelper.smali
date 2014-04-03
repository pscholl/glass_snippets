.class public Lcom/google/glass/location/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSatelliteExtras(Landroid/location/Location;Landroid/location/GpsStatus;)V
    .locals 7
    .parameter "location"
    .parameter "status"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    const-string v5, "gps"

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 61
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #extras:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_2
    const/4 v4, 0x0

    .line 65
    .local v4, visibleSatellites:I
    const/4 v3, 0x0

    .line 66
    .local v3, satellitesUsedInFix:I
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    .line 67
    .local v2, satellite:Landroid/location/GpsSatellite;
    add-int/lit8 v4, v4, 0x1

    .line 68
    invoke-virtual {v2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    .end local v2           #satellite:Landroid/location/GpsSatellite;
    :cond_4
    const-string v5, "visible_satellites"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v5, "satellites"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static toLocationProto(Landroid/location/Location;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 4
    .parameter "location"
    .parameter "source"

    .prologue
    .line 27
    new-instance v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    .line 28
    .local v1, locationProto:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    iput-object p1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    .line 30
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    .line 31
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    .line 32
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 37
    const-string v2, "levelId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    const-string v2, "levelId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    .line 40
    :cond_1
    const-string v2, "levelNumberE3"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    const-string v2, "levelNumberE3"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    .line 44
    :cond_2
    return-object v1
.end method
