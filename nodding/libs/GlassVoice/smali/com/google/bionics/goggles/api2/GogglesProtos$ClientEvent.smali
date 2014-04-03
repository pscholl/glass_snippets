.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientEvent"
.end annotation


# static fields
.field public static final EVENT_TYPE_EVENT_NEW_BARCODE_DETECTED:I = 0x5

.field public static final EVENT_TYPE_EVENT_RECV_RESPONSE:I = 0x2

.field public static final EVENT_TYPE_EVENT_SCENE_CHANGE_DETECTED:I = 0x3

.field public static final EVENT_TYPE_EVENT_SEND_REQUEST:I = 0x1

.field public static final EVENT_TYPE_EVENT_THUMBNAIL_FETCH:I = 0x4

.field public static final FETCH_RESOURCE_BYTES_FIELD_NUMBER:I = 0x5

.field public static final FETCH_SUCCEEDED_FIELD_NUMBER:I = 0x6

.field public static final FETCH_URL_FIELD_NUMBER:I = 0x4

.field public static final RESULT_SET_NUMBER_FIELD_NUMBER:I = 0x3

.field public static final SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private fetchResourceBytes_:I

.field private fetchSucceeded_:Z

.field private fetchUrl_:Ljava/lang/String;

.field private hasFetchResourceBytes:Z

.field private hasFetchSucceeded:Z

.field private hasFetchUrl:Z

.field private hasResultSetNumber:Z

.field private hasSequenceNumber:Z

.field private hasType:Z

.field private resultSetNumber_:I

.field private sequenceNumber_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2364
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2376
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->type_:I

    .line 2393
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->sequenceNumber_:I

    .line 2410
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->resultSetNumber_:I

    .line 2427
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchUrl_:Ljava/lang/String;

    .line 2444
    iput-boolean v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchSucceeded_:Z

    .line 2461
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchResourceBytes_:I

    .line 2513
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->cachedSize:I

    .line 2364
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2605
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2599
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    .line 2476
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->clearType()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2477
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->clearSequenceNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2478
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2479
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->clearFetchUrl()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2480
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->clearFetchSucceeded()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2481
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->clearFetchResourceBytes()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    .line 2482
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->cachedSize:I

    .line 2483
    return-object p0
.end method

.method public clearFetchResourceBytes()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2470
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchResourceBytes:Z

    .line 2471
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchResourceBytes_:I

    .line 2472
    return-object p0
.end method

.method public clearFetchSucceeded()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2453
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchSucceeded:Z

    .line 2454
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchSucceeded_:Z

    .line 2455
    return-object p0
.end method

.method public clearFetchUrl()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    .line 2436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchUrl:Z

    .line 2437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchUrl_:Ljava/lang/String;

    .line 2438
    return-object p0
.end method

.method public clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2419
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasResultSetNumber:Z

    .line 2420
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->resultSetNumber_:I

    .line 2421
    return-object p0
.end method

.method public clearSequenceNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2402
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasSequenceNumber:Z

    .line 2403
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->sequenceNumber_:I

    .line 2404
    return-object p0
.end method

.method public clearType()Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1

    .prologue
    .line 2385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasType:Z

    .line 2386
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->type_:I

    .line 2387
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2516
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 2518
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getSerializedSize()I

    .line 2520
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->cachedSize:I

    return v0
.end method

.method public getFetchResourceBytes()I
    .locals 1

    .prologue
    .line 2462
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchResourceBytes_:I

    return v0
.end method

.method public getFetchSucceeded()Z
    .locals 1

    .prologue
    .line 2445
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchSucceeded_:Z

    return v0
.end method

.method public getFetchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getResultSetNumber()I
    .locals 1

    .prologue
    .line 2411
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->resultSetNumber_:I

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 2394
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->sequenceNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2525
    const/4 v0, 0x0

    .line 2526
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2527
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2530
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasSequenceNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2531
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getSequenceNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2534
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasResultSetNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2535
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getResultSetNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2538
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2539
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getFetchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2542
    :cond_3
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchResourceBytes()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2543
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getFetchResourceBytes()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2546
    :cond_4
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchSucceeded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2547
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getFetchSucceeded()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2550
    :cond_5
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->cachedSize:I

    .line 2551
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2378
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->type_:I

    return v0
.end method

.method public hasFetchResourceBytes()Z
    .locals 1

    .prologue
    .line 2463
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchResourceBytes:Z

    return v0
.end method

.method public hasFetchSucceeded()Z
    .locals 1

    .prologue
    .line 2446
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchSucceeded:Z

    return v0
.end method

.method public hasFetchUrl()Z
    .locals 1

    .prologue
    .line 2429
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchUrl:Z

    return v0
.end method

.method public hasResultSetNumber()Z
    .locals 1

    .prologue
    .line 2412
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasResultSetNumber:Z

    return v0
.end method

.method public hasSequenceNumber()Z
    .locals 1

    .prologue
    .line 2395
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasSequenceNumber:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2377
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2487
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2559
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2560
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2564
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2565
    :sswitch_0
    return-object p0

    .line 2570
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->setType(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    goto :goto_0

    .line 2574
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->setSequenceNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    goto :goto_0

    .line 2578
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    goto :goto_0

    .line 2582
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->setFetchUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    goto :goto_0

    .line 2586
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->setFetchResourceBytes(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    goto :goto_0

    .line 2590
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->setFetchSucceeded(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    goto :goto_0

    .line 2560
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 2361
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public setFetchResourceBytes(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchResourceBytes:Z

    .line 2466
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchResourceBytes_:I

    .line 2467
    return-object p0
.end method

.method public setFetchSucceeded(Z)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchSucceeded:Z

    .line 2449
    iput-boolean p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchSucceeded_:Z

    .line 2450
    return-object p0
.end method

.method public setFetchUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchUrl:Z

    .line 2432
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->fetchUrl_:Ljava/lang/String;

    .line 2433
    return-object p0
.end method

.method public setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasResultSetNumber:Z

    .line 2415
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->resultSetNumber_:I

    .line 2416
    return-object p0
.end method

.method public setSequenceNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasSequenceNumber:Z

    .line 2398
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->sequenceNumber_:I

    .line 2399
    return-object p0
.end method

.method public setType(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasType:Z

    .line 2381
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->type_:I

    .line 2382
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2493
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2494
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2496
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasSequenceNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2497
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2499
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasResultSetNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2500
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getResultSetNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2502
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2503
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getFetchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2505
    :cond_3
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchResourceBytes()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2506
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getFetchResourceBytes()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2508
    :cond_4
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->hasFetchSucceeded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2509
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientEvent;->getFetchSucceeded()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2511
    :cond_5
    return-void
.end method
