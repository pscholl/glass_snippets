.class public final Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioFeatureLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    }
.end annotation


# static fields
.field public static final FEATURE_ENCODING_TYPE_FILTER_BANK:I = 0x0

.field public static final FEATURE_ENCODING_TYPE_MFCC:I = 0x2

.field public static final FEATURE_ENCODING_TYPE_PLP:I = 0x1

.field public static final FEATURE_TYPE_FIELD_NUMBER:I = 0x1

.field public static final FRAME_DATA_FIELD_NUMBER:I = 0x4

.field public static final FRAME_DIMENSION_FIELD_NUMBER:I = 0x3

.field public static final FRAME_RATE_MS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private featureType_:I

.field private frameData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;",
            ">;"
        }
    .end annotation
.end field

.field private frameDimension_:I

.field private frameRateMs_:F

.field private hasFeatureType:Z

.field private hasFrameDimension:Z

.field private hasFrameRateMs:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 999
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1118
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->featureType_:I

    .line 1135
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameRateMs_:F

    .line 1152
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameDimension_:I

    .line 1168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData_:Ljava/util/List;

    .line 1229
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->cachedSize:I

    .line 999
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1307
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1301
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    return-object v0
.end method


# virtual methods
.method public addFrameData(Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1185
    if-nez p1, :cond_0

    .line 1186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData_:Ljava/util/List;

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    return-object p0
.end method

.method public final clear()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->clearFeatureType()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    .line 1201
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->clearFrameRateMs()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    .line 1202
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->clearFrameDimension()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    .line 1203
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->clearFrameData()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    .line 1204
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->cachedSize:I

    .line 1205
    return-object p0
.end method

.method public clearFeatureType()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1127
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFeatureType:Z

    .line 1128
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->featureType_:I

    .line 1129
    return-object p0
.end method

.method public clearFrameData()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1

    .prologue
    .line 1195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData_:Ljava/util/List;

    .line 1196
    return-object p0
.end method

.method public clearFrameDimension()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1161
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFrameDimension:Z

    .line 1162
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameDimension_:I

    .line 1163
    return-object p0
.end method

.method public clearFrameRateMs()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFrameRateMs:Z

    .line 1145
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameRateMs_:F

    .line 1146
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1232
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 1234
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->getSerializedSize()I

    .line 1236
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->cachedSize:I

    return v0
.end method

.method public getFeatureType()I
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->featureType_:I

    return v0
.end method

.method public getFrameData(I)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 1
    .parameter "index"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    return-object v0
.end method

.method public getFrameDataCount()I
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFrameDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData_:Ljava/util/List;

    return-object v0
.end method

.method public getFrameDimension()I
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameDimension_:I

    return v0
.end method

.method public getFrameRateMs()F
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameRateMs_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1241
    const/4 v2, 0x0

    .line 1242
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFeatureType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1243
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->getFeatureType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1246
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFrameRateMs()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1247
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->getFrameRateMs()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 1250
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFrameDimension()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1251
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->getFrameDimension()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1254
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->getFrameDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    .line 1255
    .local v0, element:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1258
    .end local v0           #element:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    :cond_3
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->cachedSize:I

    .line 1259
    return v2
.end method

.method public hasFeatureType()Z
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFeatureType:Z

    return v0
.end method

.method public hasFrameDimension()Z
    .locals 1

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFrameDimension:Z

    return v0
.end method

.method public hasFrameRateMs()Z
    .locals 1

    .prologue
    .line 1137
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFrameRateMs:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1209
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
    .line 996
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1267
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1268
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1272
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1273
    :sswitch_0
    return-object p0

    .line 1278
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->setFeatureType(I)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    goto :goto_0

    .line 1282
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->setFrameRateMs(F)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    goto :goto_0

    .line 1286
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->setFrameDimension(I)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    goto :goto_0

    .line 1290
    :sswitch_4
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;-><init>()V

    .line 1291
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1292
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->addFrameData(Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    goto :goto_0

    .line 1268
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setFeatureType(I)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFeatureType:Z

    .line 1123
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->featureType_:I

    .line 1124
    return-object p0
.end method

.method public setFrameData(ILcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1178
    if-nez p2, :cond_0

    .line 1179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1182
    return-object p0
.end method

.method public setFrameDimension(I)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFrameDimension:Z

    .line 1157
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameDimension_:I

    .line 1158
    return-object p0
.end method

.method public setFrameRateMs(F)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFrameRateMs:Z

    .line 1140
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->frameRateMs_:F

    .line 1141
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFeatureType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1216
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->getFeatureType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFrameRateMs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1219
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->getFrameRateMs()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1221
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->hasFrameDimension()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1222
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->getFrameDimension()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1224
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;->getFrameDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    .line 1225
    .local v0, element:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1227
    .end local v0           #element:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    :cond_3
    return-void
.end method
