.class public final Lcom/google/glass/util/proto/LocationMessageUtils;
.super Ljava/lang/Object;
.source "LocationMessageUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAndroidLocation(Lcom/google/glass/companion/Proto$LocationMessage;)Landroid/location/Location;
    .locals 5
    .parameter "message"

    .prologue
    .line 28
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location:Lcom/google/glass/companion/Proto$Location;

    .line 29
    .local v2, proto:Lcom/google/glass/companion/Proto$Location;
    new-instance v1, Landroid/location/Location;

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, location:Landroid/location/Location;
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->latitude:Ljava/lang/Double;

    invoke-static {v3}, Lcom/google/glass/util/PrimitiveUtils;->safeDouble(Ljava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 31
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->longitude:Ljava/lang/Double;

    invoke-static {v3}, Lcom/google/glass/util/PrimitiveUtils;->safeDouble(Ljava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 32
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 33
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->accuracy:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 35
    :cond_0
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    if-eqz v3, :cond_1

    .line 36
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->altitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setAltitude(D)V

    .line 38
    :cond_1
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 39
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->bearing:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/Location;->setBearing(F)V

    .line 41
    :cond_2
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 42
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->speed:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/Location;->setSpeed(F)V

    .line 44
    :cond_3
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 45
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->time:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setTime(J)V

    .line 47
    :cond_4
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 50
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, extras:Landroid/os/Bundle;
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 52
    const-string v3, "satellites"

    iget-object v4, v2, Lcom/google/glass/companion/Proto$Location;->satellitesUsedInFix:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    :cond_6
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 55
    const-string v3, "visible_satellites"

    iget-object v4, v2, Lcom/google/glass/companion/Proto$Location;->visibleSatellites:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    :cond_7
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 58
    const-string v3, "levelId"

    iget-object v4, v2, Lcom/google/glass/companion/Proto$Location;->levelId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_8
    iget-object v3, v2, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    .line 61
    const-string v3, "levelNumberE3"

    iget-object v4, v2, Lcom/google/glass/companion/Proto$Location;->levelNumberE3:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 64
    const-string v3, "receiver"

    iget-object v4, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_a
    invoke-virtual {v1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 68
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_b
    return-object v1
.end method
