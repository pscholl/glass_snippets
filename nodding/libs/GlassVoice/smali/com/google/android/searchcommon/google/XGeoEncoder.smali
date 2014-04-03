.class public Lcom/google/android/searchcommon/google/XGeoEncoder;
.super Ljava/lang/Object;
.source "XGeoEncoder.java"


# static fields
.field private static final E7:D = 1.0E7

.field public static final HEADER:Ljava/lang/String; = "X-Geo"

.field private static final LOCATION_PREFIX:Ljava/lang/String; = "w "

.field private static final MILLIMETERS_IN_A_METER:D = 1000.0


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 8
    .parameter "location"

    .prologue
    const-wide v6, 0x416312d000000000L

    .line 35
    new-instance v1, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;-><init>()V

    .line 36
    .local v1, locationBuilder:Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    new-instance v0, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    .line 38
    .local v0, latLngBuilder:Llocation/unified/LocationDescriptorProto$LatLng;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setRole(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 39
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setProducer(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 41
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Llocation/unified/LocationDescriptorProto$LatLng;->setLatitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 42
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Llocation/unified/LocationDescriptorProto$LatLng;->setLongitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 43
    invoke-virtual {v1, v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setLatlng(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 44
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 45
    .local v2, timestampMs:J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setTimestamp(J)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 47
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v1, v4}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setRadius(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 50
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "w "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->toByteArray()[B

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
