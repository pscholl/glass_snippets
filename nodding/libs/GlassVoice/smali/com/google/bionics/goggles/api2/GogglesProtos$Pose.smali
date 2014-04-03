.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pose"
.end annotation


# static fields
.field public static final ALTITUDE_METERS_FIELD_NUMBER:I = 0x4

.field public static final LAT_DEGREES_FIELD_NUMBER:I = 0x1

.field public static final LAT_LNG_ACCURACY_METERS_FIELD_NUMBER:I = 0x3

.field public static final LNG_DEGREES_FIELD_NUMBER:I = 0x2


# instance fields
.field private altitudeMeters_:F

.field private cachedSize:I

.field private hasAltitudeMeters:Z

.field private hasLatDegrees:Z

.field private hasLatLngAccuracyMeters:Z

.field private hasLngDegrees:Z

.field private latDegrees_:D

.field private latLngAccuracyMeters_:F

.field private lngDegrees_:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 993
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 998
    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latDegrees_:D

    .line 1015
    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->lngDegrees_:D

    .line 1032
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latLngAccuracyMeters_:F

    .line 1049
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->altitudeMeters_:F

    .line 1093
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->cachedSize:I

    .line 993
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1169
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1163
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->clearLatDegrees()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    .line 1065
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->clearLngDegrees()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    .line 1066
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->clearLatLngAccuracyMeters()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    .line 1067
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->clearAltitudeMeters()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    .line 1068
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->cachedSize:I

    .line 1069
    return-object p0
.end method

.method public clearAltitudeMeters()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasAltitudeMeters:Z

    .line 1059
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->altitudeMeters_:F

    .line 1060
    return-object p0
.end method

.method public clearLatDegrees()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 2

    .prologue
    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLatDegrees:Z

    .line 1008
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latDegrees_:D

    .line 1009
    return-object p0
.end method

.method public clearLatLngAccuracyMeters()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLatLngAccuracyMeters:Z

    .line 1042
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latLngAccuracyMeters_:F

    .line 1043
    return-object p0
.end method

.method public clearLngDegrees()Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 2

    .prologue
    .line 1024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLngDegrees:Z

    .line 1025
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->lngDegrees_:D

    .line 1026
    return-object p0
.end method

.method public getAltitudeMeters()F
    .locals 1

    .prologue
    .line 1050
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->altitudeMeters_:F

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->cachedSize:I

    if-gez v0, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->getSerializedSize()I

    .line 1100
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->cachedSize:I

    return v0
.end method

.method public getLatDegrees()D
    .locals 2

    .prologue
    .line 999
    iget-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latDegrees_:D

    return-wide v0
.end method

.method public getLatLngAccuracyMeters()F
    .locals 1

    .prologue
    .line 1033
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latLngAccuracyMeters_:F

    return v0
.end method

.method public getLngDegrees()D
    .locals 2

    .prologue
    .line 1016
    iget-wide v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->lngDegrees_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1105
    const/4 v0, 0x0

    .line 1106
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLatDegrees()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->getLatDegrees()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1110
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLngDegrees()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1111
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->getLngDegrees()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1114
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLatLngAccuracyMeters()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1115
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->getLatLngAccuracyMeters()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1118
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasAltitudeMeters()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1119
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->getAltitudeMeters()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1122
    :cond_3
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->cachedSize:I

    .line 1123
    return v0
.end method

.method public hasAltitudeMeters()Z
    .locals 1

    .prologue
    .line 1051
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasAltitudeMeters:Z

    return v0
.end method

.method public hasLatDegrees()Z
    .locals 1

    .prologue
    .line 1000
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLatDegrees:Z

    return v0
.end method

.method public hasLatLngAccuracyMeters()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLatLngAccuracyMeters:Z

    return v0
.end method

.method public hasLngDegrees()Z
    .locals 1

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLngDegrees:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1132
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1136
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1137
    :sswitch_0
    return-object p0

    .line 1142
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->setLatDegrees(D)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    goto :goto_0

    .line 1146
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->setLngDegrees(D)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    goto :goto_0

    .line 1150
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->setLatLngAccuracyMeters(F)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    goto :goto_0

    .line 1154
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->setAltitudeMeters(F)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    goto :goto_0

    .line 1132
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public setAltitudeMeters(F)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .parameter "value"

    .prologue
    .line 1053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasAltitudeMeters:Z

    .line 1054
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->altitudeMeters_:F

    .line 1055
    return-object p0
.end method

.method public setLatDegrees(D)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .parameter "value"

    .prologue
    .line 1002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLatDegrees:Z

    .line 1003
    iput-wide p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latDegrees_:D

    .line 1004
    return-object p0
.end method

.method public setLatLngAccuracyMeters(F)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .parameter "value"

    .prologue
    .line 1036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLatLngAccuracyMeters:Z

    .line 1037
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->latLngAccuracyMeters_:F

    .line 1038
    return-object p0
.end method

.method public setLngDegrees(D)Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;
    .locals 1
    .parameter "value"

    .prologue
    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLngDegrees:Z

    .line 1020
    iput-wide p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->lngDegrees_:D

    .line 1021
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLatDegrees()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->getLatDegrees()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 1082
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLngDegrees()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->getLngDegrees()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 1085
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasLatLngAccuracyMeters()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1086
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->getLatLngAccuracyMeters()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1088
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->hasAltitudeMeters()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1089
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Pose;->getAltitudeMeters()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1091
    :cond_3
    return-void
.end method
