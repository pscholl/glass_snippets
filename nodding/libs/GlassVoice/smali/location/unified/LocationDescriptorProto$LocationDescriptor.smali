.class public final Llocation/unified/LocationDescriptorProto$LocationDescriptor;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationDescriptor"
.end annotation


# static fields
.field public static final ATTRIBUTES_FIELD_NUMBER:I = 0x13

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x8

.field public static final FEATURE_ID_FIELD_NUMBER:I = 0xa

.field public static final HISTORICAL_PRODUCER_FIELD_NUMBER:I = 0xd

.field public static final HISTORICAL_PROMINENCE_FIELD_NUMBER:I = 0xf

.field public static final HISTORICAL_ROLE_FIELD_NUMBER:I = 0xc

.field public static final LANGUAGE_FIELD_NUMBER:I = 0xb

.field public static final LATLNG_FIELD_NUMBER:I = 0x5

.field public static final LATLNG_SPAN_FIELD_NUMBER:I = 0x6

.field public static final LEVEL_FEATURE_ID_FIELD_NUMBER:I = 0x11

.field public static final LEVEL_NUMBER_FIELD_NUMBER:I = 0x12

.field public static final LOC_FIELD_NUMBER:I = 0x4

.field public static final MID_FIELD_NUMBER:I = 0x10

.field public static final PRODUCER_FIELD_NUMBER:I = 0x2

.field public static final PROVENANCE_FIELD_NUMBER:I = 0x9

.field public static final RADIUS_FIELD_NUMBER:I = 0x7

.field public static final RECT_FIELD_NUMBER:I = 0xe

.field public static final ROLE_FIELD_NUMBER:I = 0x1

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x3


# instance fields
.field private attributes_:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

.field private cachedSize:I

.field private confidence_:I

.field private featureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

.field private hasAttributes:Z

.field private hasConfidence:Z

.field private hasFeatureId:Z

.field private hasHistoricalProducer:Z

.field private hasHistoricalProminence:Z

.field private hasHistoricalRole:Z

.field private hasLanguage:Z

.field private hasLatlng:Z

.field private hasLatlngSpan:Z

.field private hasLevelFeatureId:Z

.field private hasLevelNumber:Z

.field private hasLoc:Z

.field private hasMid:Z

.field private hasProducer:Z

.field private hasProvenance:Z

.field private hasRadius:Z

.field private hasRect:Z

.field private hasRole:Z

.field private hasTimestamp:Z

.field private historicalProducer_:I

.field private historicalProminence_:I

.field private historicalRole_:I

.field private language_:Ljava/lang/String;

.field private latlngSpan_:Llocation/unified/LocationDescriptorProto$LatLng;

.field private latlng_:Llocation/unified/LocationDescriptorProto$LatLng;

.field private levelFeatureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

.field private levelNumber_:F

.field private loc_:Ljava/lang/String;

.field private mid_:J

.field private producer_:I

.field private provenance_:I

.field private radius_:F

.field private rect_:Llocation/unified/LocationDescriptorProto$LatLngRect;

.field private role_:I

.field private timestamp_:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 837
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 842
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    .line 859
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    .line 876
    iput-wide v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    .line 893
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 910
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 930
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 950
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProto$LatLngRect;

    .line 970
    iput v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    .line 987
    const/16 v0, 0x64

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    .line 1004
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1024
    iput-wide v4, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mid_:J

    .line 1041
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1061
    iput v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelNumber_:F

    .line 1078
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    .line 1095
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    .line 1112
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    .line 1129
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    .line 1146
    iput v1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProminence_:I

    .line 1163
    iput-object v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    .line 1270
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->cachedSize:I

    .line 837
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1478
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1472
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    return-object v0
.end method


# virtual methods
.method public final clear()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1181
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearRole()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1182
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearProducer()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1183
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearTimestamp()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1184
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearLoc()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1185
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearLatlng()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1186
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearLatlngSpan()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1187
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearRect()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1188
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearRadius()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1189
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearConfidence()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1190
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearFeatureId()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1191
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearMid()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1192
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearLevelFeatureId()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1193
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearLevelNumber()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1194
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearLanguage()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1195
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearProvenance()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1196
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearHistoricalRole()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1197
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearHistoricalProducer()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1198
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearHistoricalProminence()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1199
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->clearAttributes()Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 1200
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->cachedSize:I

    .line 1201
    return-object p0
.end method

.method public clearAttributes()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1175
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasAttributes:Z

    .line 1176
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    .line 1177
    return-object p0
.end method

.method public clearConfidence()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 996
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasConfidence:Z

    .line 997
    const/16 v0, 0x64

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    .line 998
    return-object p0
.end method

.method public clearFeatureId()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1016
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasFeatureId:Z

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1018
    return-object p0
.end method

.method public clearHistoricalProducer()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1138
    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProducer:Z

    .line 1139
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    .line 1140
    return-object p0
.end method

.method public clearHistoricalProminence()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1155
    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProminence:Z

    .line 1156
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProminence_:I

    .line 1157
    return-object p0
.end method

.method public clearHistoricalRole()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1121
    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalRole:Z

    .line 1122
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    .line 1123
    return-object p0
.end method

.method public clearLanguage()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1087
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLanguage:Z

    .line 1088
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    .line 1089
    return-object p0
.end method

.method public clearLatlng()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 922
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlng:Z

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 924
    return-object p0
.end method

.method public clearLatlngSpan()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlngSpan:Z

    .line 943
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 944
    return-object p0
.end method

.method public clearLevelFeatureId()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1053
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLevelFeatureId:Z

    .line 1054
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1055
    return-object p0
.end method

.method public clearLevelNumber()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLevelNumber:Z

    .line 1071
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelNumber_:F

    .line 1072
    return-object p0
.end method

.method public clearLoc()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLoc:Z

    .line 903
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 904
    return-object p0
.end method

.method public clearMid()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 2

    .prologue
    .line 1033
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasMid:Z

    .line 1034
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mid_:J

    .line 1035
    return-object p0
.end method

.method public clearProducer()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 868
    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProducer:Z

    .line 869
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    .line 870
    return-object p0
.end method

.method public clearProvenance()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1104
    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProvenance:Z

    .line 1105
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    .line 1106
    return-object p0
.end method

.method public clearRadius()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRadius:Z

    .line 980
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    .line 981
    return-object p0
.end method

.method public clearRect()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRect:Z

    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProto$LatLngRect;

    .line 964
    return-object p0
.end method

.method public clearRole()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 851
    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRole:Z

    .line 852
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    .line 853
    return-object p0
.end method

.method public clearTimestamp()Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 2

    .prologue
    .line 885
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasTimestamp:Z

    .line 886
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    .line 887
    return-object p0
.end method

.method public getAttributes()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1273
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->cachedSize:I

    if-gez v0, :cond_0

    .line 1275
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getSerializedSize()I

    .line 1277
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->cachedSize:I

    return v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    return v0
.end method

.method public getFeatureId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method

.method public getHistoricalProducer()I
    .locals 1

    .prologue
    .line 1131
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    return v0
.end method

.method public getHistoricalProminence()I
    .locals 1

    .prologue
    .line 1147
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProminence_:I

    return v0
.end method

.method public getHistoricalRole()I
    .locals 1

    .prologue
    .line 1114
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatlng()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLatlngSpan()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLevelFeatureId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method

.method public getLevelNumber()F
    .locals 1

    .prologue
    .line 1062
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelNumber_:F

    return v0
.end method

.method public getLoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()J
    .locals 2

    .prologue
    .line 1025
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mid_:J

    return-wide v0
.end method

.method public getProducer()I
    .locals 1

    .prologue
    .line 861
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    return v0
.end method

.method public getProvenance()I
    .locals 1

    .prologue
    .line 1097
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    return v0
.end method

.method public getRect()Llocation/unified/LocationDescriptorProto$LatLngRect;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProto$LatLngRect;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1282
    const/4 v0, 0x0

    .line 1283
    .local v0, size:I
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    const/4 v1, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getRole()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1287
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProducer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1288
    const/4 v1, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getProducer()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1291
    :cond_1
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1292
    const/4 v1, 0x3

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getTimestamp()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1295
    :cond_2
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLoc()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1296
    const/4 v1, 0x4

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLoc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1299
    :cond_3
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlng()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1300
    const/4 v1, 0x5

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLatlng()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1303
    :cond_4
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlngSpan()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1304
    const/4 v1, 0x6

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLatlngSpan()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1307
    :cond_5
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRadius()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1308
    const/4 v1, 0x7

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getRadius()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1311
    :cond_6
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasConfidence()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1312
    const/16 v1, 0x8

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getConfidence()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1315
    :cond_7
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProvenance()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1316
    const/16 v1, 0x9

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getProvenance()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1319
    :cond_8
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasFeatureId()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1320
    const/16 v1, 0xa

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getFeatureId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1323
    :cond_9
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLanguage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1324
    const/16 v1, 0xb

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1327
    :cond_a
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalRole()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1328
    const/16 v1, 0xc

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalRole()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1331
    :cond_b
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProducer()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1332
    const/16 v1, 0xd

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalProducer()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1335
    :cond_c
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRect()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1336
    const/16 v1, 0xe

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getRect()Llocation/unified/LocationDescriptorProto$LatLngRect;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1339
    :cond_d
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProminence()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1340
    const/16 v1, 0xf

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalProminence()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1343
    :cond_e
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasMid()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1344
    const/16 v1, 0x10

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getMid()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1347
    :cond_f
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLevelFeatureId()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1348
    const/16 v1, 0x11

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLevelFeatureId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1351
    :cond_10
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLevelNumber()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1352
    const/16 v1, 0x12

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLevelNumber()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1355
    :cond_11
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1356
    const/16 v1, 0x13

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getAttributes()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1359
    :cond_12
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->cachedSize:I

    .line 1360
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 877
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    return-wide v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 1164
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasAttributes:Z

    return v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 989
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasConfidence:Z

    return v0
.end method

.method public hasFeatureId()Z
    .locals 1

    .prologue
    .line 1005
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasFeatureId:Z

    return v0
.end method

.method public hasHistoricalProducer()Z
    .locals 1

    .prologue
    .line 1130
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProducer:Z

    return v0
.end method

.method public hasHistoricalProminence()Z
    .locals 1

    .prologue
    .line 1148
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProminence:Z

    return v0
.end method

.method public hasHistoricalRole()Z
    .locals 1

    .prologue
    .line 1113
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalRole:Z

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 1080
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLanguage:Z

    return v0
.end method

.method public hasLatlng()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlng:Z

    return v0
.end method

.method public hasLatlngSpan()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlngSpan:Z

    return v0
.end method

.method public hasLevelFeatureId()Z
    .locals 1

    .prologue
    .line 1042
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLevelFeatureId:Z

    return v0
.end method

.method public hasLevelNumber()Z
    .locals 1

    .prologue
    .line 1063
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLevelNumber:Z

    return v0
.end method

.method public hasLoc()Z
    .locals 1

    .prologue
    .line 895
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLoc:Z

    return v0
.end method

.method public hasMid()Z
    .locals 1

    .prologue
    .line 1026
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasMid:Z

    return v0
.end method

.method public hasProducer()Z
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProducer:Z

    return v0
.end method

.method public hasProvenance()Z
    .locals 1

    .prologue
    .line 1096
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProvenance:Z

    return v0
.end method

.method public hasRadius()Z
    .locals 1

    .prologue
    .line 972
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRadius:Z

    return v0
.end method

.method public hasRect()Z
    .locals 1

    .prologue
    .line 951
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRect:Z

    return v0
.end method

.method public hasRole()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRole:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasTimestamp:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1205
    const/4 v0, 0x1

    return v0
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
    .line 834
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1368
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1369
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1373
    invoke-virtual {p0, p1, v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1374
    :sswitch_0
    return-object p0

    .line 1379
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setRole(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1383
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setProducer(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1387
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setTimestamp(J)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1391
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setLoc(Ljava/lang/String;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1395
    :sswitch_5
    new-instance v1, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    .line 1396
    .local v1, value:Llocation/unified/LocationDescriptorProto$LatLng;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1397
    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setLatlng(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1401
    .end local v1           #value:Llocation/unified/LocationDescriptorProto$LatLng;
    :sswitch_6
    new-instance v1, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    .line 1402
    .restart local v1       #value:Llocation/unified/LocationDescriptorProto$LatLng;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1403
    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setLatlngSpan(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1407
    .end local v1           #value:Llocation/unified/LocationDescriptorProto$LatLng;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setRadius(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1411
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setConfidence(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1415
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setProvenance(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1419
    :sswitch_a
    new-instance v1, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;-><init>()V

    .line 1420
    .local v1, value:Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1421
    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setFeatureId(Llocation/unified/LocationDescriptorProto$FeatureIdProto;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1425
    .end local v1           #value:Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setLanguage(Ljava/lang/String;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1429
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setHistoricalRole(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto :goto_0

    .line 1433
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setHistoricalProducer(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto/16 :goto_0

    .line 1437
    :sswitch_e
    new-instance v1, Llocation/unified/LocationDescriptorProto$LatLngRect;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LatLngRect;-><init>()V

    .line 1438
    .local v1, value:Llocation/unified/LocationDescriptorProto$LatLngRect;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1439
    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setRect(Llocation/unified/LocationDescriptorProto$LatLngRect;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto/16 :goto_0

    .line 1443
    .end local v1           #value:Llocation/unified/LocationDescriptorProto$LatLngRect;
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setHistoricalProminence(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto/16 :goto_0

    .line 1447
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setMid(J)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto/16 :goto_0

    .line 1451
    :sswitch_11
    new-instance v1, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;-><init>()V

    .line 1452
    .local v1, value:Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1453
    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setLevelFeatureId(Llocation/unified/LocationDescriptorProto$FeatureIdProto;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto/16 :goto_0

    .line 1457
    .end local v1           #value:Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setLevelNumber(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto/16 :goto_0

    .line 1461
    :sswitch_13
    new-instance v1, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;-><init>()V

    .line 1462
    .local v1, value:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1463
    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setAttributes(Llocation/unified/LocationDescriptorProto$LocationAttributesProto;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    goto/16 :goto_0

    .line 1369
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3d -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
        0x80 -> :sswitch_10
        0x8a -> :sswitch_11
        0x95 -> :sswitch_12
        0x9a -> :sswitch_13
    .end sparse-switch
.end method

.method public setAttributes(Llocation/unified/LocationDescriptorProto$LocationAttributesProto;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 1167
    if-nez p1, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1170
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasAttributes:Z

    .line 1171
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->attributes_:Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    .line 1172
    return-object p0
.end method

.method public setConfidence(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasConfidence:Z

    .line 992
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    .line 993
    return-object p0
.end method

.method public setFeatureId(Llocation/unified/LocationDescriptorProto$FeatureIdProto;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 1008
    if-nez p1, :cond_0

    .line 1009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1011
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasFeatureId:Z

    .line 1012
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1013
    return-object p0
.end method

.method public setHistoricalProducer(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 1133
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProducer:Z

    .line 1134
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    .line 1135
    return-object p0
.end method

.method public setHistoricalProminence(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 1150
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProminence:Z

    .line 1151
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProminence_:I

    .line 1152
    return-object p0
.end method

.method public setHistoricalRole(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 1116
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalRole:Z

    .line 1117
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    .line 1118
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 1082
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLanguage:Z

    .line 1083
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    .line 1084
    return-object p0
.end method

.method public setLatlng(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 914
    if-nez p1, :cond_0

    .line 915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 917
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlng:Z

    .line 918
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 919
    return-object p0
.end method

.method public setLatlngSpan(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 934
    if-nez p1, :cond_0

    .line 935
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 937
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlngSpan:Z

    .line 938
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 939
    return-object p0
.end method

.method public setLevelFeatureId(Llocation/unified/LocationDescriptorProto$FeatureIdProto;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 1045
    if-nez p1, :cond_0

    .line 1046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1048
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLevelFeatureId:Z

    .line 1049
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelFeatureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 1050
    return-object p0
.end method

.method public setLevelNumber(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLevelNumber:Z

    .line 1066
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->levelNumber_:F

    .line 1067
    return-object p0
.end method

.method public setLoc(Ljava/lang/String;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLoc:Z

    .line 898
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 899
    return-object p0
.end method

.method public setMid(J)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 1028
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasMid:Z

    .line 1029
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->mid_:J

    .line 1030
    return-object p0
.end method

.method public setProducer(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProducer:Z

    .line 864
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    .line 865
    return-object p0
.end method

.method public setProvenance(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 1099
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProvenance:Z

    .line 1100
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    .line 1101
    return-object p0
.end method

.method public setRadius(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 974
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRadius:Z

    .line 975
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    .line 976
    return-object p0
.end method

.method public setRect(Llocation/unified/LocationDescriptorProto$LatLngRect;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 954
    if-nez p1, :cond_0

    .line 955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 957
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRect:Z

    .line 958
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->rect_:Llocation/unified/LocationDescriptorProto$LatLngRect;

    .line 959
    return-object p0
.end method

.method public setRole(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRole:Z

    .line 847
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    .line 848
    return-object p0
.end method

.method public setTimestamp(J)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasTimestamp:Z

    .line 881
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    .line 882
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
    .line 1211
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    const/4 v0, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getRole()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1214
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProducer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1215
    const/4 v0, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getProducer()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1217
    :cond_1
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1218
    const/4 v0, 0x3

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1220
    :cond_2
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLoc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1221
    const/4 v0, 0x4

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLoc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1223
    :cond_3
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlng()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1224
    const/4 v0, 0x5

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLatlng()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1226
    :cond_4
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlngSpan()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1227
    const/4 v0, 0x6

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLatlngSpan()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1229
    :cond_5
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRadius()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1230
    const/4 v0, 0x7

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getRadius()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1232
    :cond_6
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1233
    const/16 v0, 0x8

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getConfidence()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1235
    :cond_7
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProvenance()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1236
    const/16 v0, 0x9

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getProvenance()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1238
    :cond_8
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasFeatureId()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1239
    const/16 v0, 0xa

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getFeatureId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1241
    :cond_9
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1242
    const/16 v0, 0xb

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1244
    :cond_a
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalRole()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1245
    const/16 v0, 0xc

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalRole()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1247
    :cond_b
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProducer()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1248
    const/16 v0, 0xd

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalProducer()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1250
    :cond_c
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRect()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1251
    const/16 v0, 0xe

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getRect()Llocation/unified/LocationDescriptorProto$LatLngRect;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1253
    :cond_d
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProminence()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1254
    const/16 v0, 0xf

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalProminence()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1256
    :cond_e
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasMid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1257
    const/16 v0, 0x10

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getMid()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 1259
    :cond_f
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLevelFeatureId()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1260
    const/16 v0, 0x11

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLevelFeatureId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1262
    :cond_10
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLevelNumber()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1263
    const/16 v0, 0x12

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLevelNumber()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1265
    :cond_11
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1266
    const/16 v0, 0x13

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getAttributes()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1268
    :cond_12
    return-void
.end method
