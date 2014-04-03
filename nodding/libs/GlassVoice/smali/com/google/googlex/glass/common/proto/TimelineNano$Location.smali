.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Location;


# instance fields
.field public accuracy:Ljava/lang/Double;

.field public address:Ljava/lang/String;

.field private cachedSize:I

.field public displayName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public latitude:Ljava/lang/Double;

.field public levelId:Ljava/lang/String;

.field public levelNumber:Ljava/lang/Float;

.field public longitude:Ljava/lang/Double;

.field public source:Ljava/lang/String;

.field public timestamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1132
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1133
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1236
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->cachedSize:I

    .line 1133
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1360
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1354
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1156
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    .line 1157
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    .line 1158
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    .line 1159
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    .line 1160
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    .line 1161
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    .line 1162
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    .line 1163
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    .line 1164
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    .line 1165
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    .line 1166
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->cachedSize:I

    .line 1167
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1172
    if-ne p1, p0, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v1

    .line 1173
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1174
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 1175
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1239
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->cachedSize:I

    if-gez v0, :cond_0

    .line 1241
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->getSerializedSize()I

    .line 1243
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1248
    const/4 v0, 0x0

    .line 1249
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 1250
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1253
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 1254
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1257
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1258
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1261
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1262
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1265
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 1266
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1269
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 1270
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 1273
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1274
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1277
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1278
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1281
    :cond_7
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    if-eqz v1, :cond_8

    .line 1282
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1285
    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1286
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1289
    :cond_9
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->cachedSize:I

    .line 1290
    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 1188
    const/16 v0, 0x11

    .line 1189
    .local v0, result:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 1190
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 1191
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 1192
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 1193
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 1194
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    add-int v0, v3, v1

    .line 1195
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    add-int v0, v3, v1

    .line 1196
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    if-nez v1, :cond_7

    move v1, v2

    :goto_7
    add-int v0, v3, v1

    .line 1197
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    :goto_8
    add-int v0, v3, v1

    .line 1198
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    if-nez v3, :cond_9

    :goto_9
    add-int v0, v1, v2

    .line 1199
    return v0

    .line 1189
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 1190
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 1191
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_2

    .line 1192
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_3

    .line 1193
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_4

    .line 1194
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto/16 :goto_5

    .line 1195
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_6

    .line 1196
    :cond_7
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto/16 :goto_7

    .line 1197
    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_8

    .line 1198
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1298
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1299
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1303
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1304
    :sswitch_0
    return-object p0

    .line 1309
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    goto :goto_0

    .line 1313
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    goto :goto_0

    .line 1317
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 1321
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    goto :goto_0

    .line 1325
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    goto :goto_0

    .line 1329
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    goto :goto_0

    .line 1333
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    goto :goto_0

    .line 1337
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    goto :goto_0

    .line 1341
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    goto :goto_0

    .line 1345
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    goto :goto_0

    .line 1299
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x31 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4d -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1129
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 1205
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 1208
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1211
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1213
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1214
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->address:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1216
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 1217
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1219
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 1220
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->accuracy:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1222
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1223
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1225
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1226
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1228
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 1229
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->levelNumber:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1231
    :cond_8
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1232
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1234
    :cond_9
    return-void
.end method
