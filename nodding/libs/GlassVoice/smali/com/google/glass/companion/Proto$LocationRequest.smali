.class public final Lcom/google/glass/companion/Proto$LocationRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$LocationRequest$Priority;,
        Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocationRequest;


# instance fields
.field private cachedSize:I

.field public fastestInterval:Ljava/lang/Long;

.field public minDistance:Ljava/lang/Float;

.field public minTime:Ljava/lang/Long;

.field public priority:I

.field public provider:Ljava/lang/String;

.field public sendLastKnownLocation:Ljava/lang/Boolean;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1254
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$LocationRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$LocationRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$LocationRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 1255
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1269
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    .line 1280
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority:I

    .line 1343
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->cachedSize:I

    .line 1255
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1441
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$LocationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1435
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 1285
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    .line 1286
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    .line 1287
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    .line 1288
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    .line 1289
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    .line 1290
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority:I

    .line 1291
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    .line 1292
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->cachedSize:I

    .line 1293
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1298
    if-ne p1, p0, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return v1

    .line 1299
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$LocationRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1300
    check-cast v0, Lcom/google/glass/companion/Proto$LocationRequest;

    .line 1301
    .local v0, other:Lcom/google/glass/companion/Proto$LocationRequest;
    iget v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    iget v4, v0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_4
    iget v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority:I

    iget v4, v0, Lcom/google/glass/companion/Proto$LocationRequest;->priority:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 1348
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationRequest;->getSerializedSize()I

    .line 1350
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1355
    const/4 v0, 0x0

    .line 1356
    .local v0, size:I
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1358
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1360
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1361
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1364
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 1365
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1368
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1369
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1372
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_3

    .line 1373
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1376
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 1377
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1380
    :cond_4
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->cachedSize:I

    .line 1381
    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v2, 0x0

    .line 1311
    const/16 v0, 0x11

    .line 1312
    .local v0, result:I
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    add-int/lit16 v0, v1, 0x20f

    .line 1313
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 1314
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 1315
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 1316
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 1317
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority:I

    add-int v0, v1, v3

    .line 1318
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    if-nez v3, :cond_5

    :goto_4
    add-int v0, v1, v2

    .line 1319
    return v0

    .line 1313
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 1314
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_1

    .line 1315
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_2

    .line 1316
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x2

    goto :goto_3

    .line 1318
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    ushr-long/2addr v4, v8

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1389
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1390
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1394
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1395
    :sswitch_0
    return-object p0

    .line 1400
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1401
    .local v1, temp:I
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    goto :goto_0

    .line 1405
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    goto :goto_0

    .line 1409
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    goto :goto_0

    .line 1413
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    goto :goto_0

    .line 1417
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    goto :goto_0

    .line 1421
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 1422
    .restart local v1       #temp:I
    iput v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority:I

    goto :goto_0

    .line 1426
    .end local v1           #temp:I
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    goto :goto_0

    .line 1390
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
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
    .line 1251
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$LocationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$LocationRequest;

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
    .line 1324
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1325
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1327
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 1330
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->minDistance:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1332
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1333
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->sendLastKnownLocation:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1335
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_3

    .line 1336
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->priority:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1338
    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 1339
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationRequest;->fastestInterval:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1341
    :cond_4
    return-void
.end method
