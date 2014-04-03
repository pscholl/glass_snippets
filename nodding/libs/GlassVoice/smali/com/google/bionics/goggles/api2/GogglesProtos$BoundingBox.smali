.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundingBox"
.end annotation


# static fields
.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field public static final WIDTH_FIELD_NUMBER:I = 0x3

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasHeight:Z

.field private hasWidth:Z

.field private hasX:Z

.field private hasY:Z

.field private height_:I

.field private width_:I

.field private x_:I

.field private y_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1434
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1439
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->x_:I

    .line 1456
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->y_:I

    .line 1473
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->width_:I

    .line 1490
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->height_:I

    .line 1534
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->cachedSize:I

    .line 1434
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1610
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1604
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 1

    .prologue
    .line 1505
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->clearX()Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    .line 1506
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->clearY()Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    .line 1507
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->clearWidth()Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    .line 1508
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->clearHeight()Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    .line 1509
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->cachedSize:I

    .line 1510
    return-object p0
.end method

.method public clearHeight()Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1499
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasHeight:Z

    .line 1500
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->height_:I

    .line 1501
    return-object p0
.end method

.method public clearWidth()Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1482
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasWidth:Z

    .line 1483
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->width_:I

    .line 1484
    return-object p0
.end method

.method public clearX()Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1448
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasX:Z

    .line 1449
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->x_:I

    .line 1450
    return-object p0
.end method

.method public clearY()Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1465
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasY:Z

    .line 1466
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->y_:I

    .line 1467
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1537
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->cachedSize:I

    if-gez v0, :cond_0

    .line 1539
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->getSerializedSize()I

    .line 1541
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->cachedSize:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1491
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1546
    const/4 v0, 0x0

    .line 1547
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1548
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->getX()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1551
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasY()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1552
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->getY()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1555
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasWidth()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1556
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1559
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasHeight()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1560
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1563
    :cond_3
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->cachedSize:I

    .line 1564
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1474
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->width_:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 1440
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->x_:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 1457
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->y_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 1492
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasHeight:Z

    return v0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 1475
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasWidth:Z

    return v0
.end method

.method public hasX()Z
    .locals 1

    .prologue
    .line 1441
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasX:Z

    return v0
.end method

.method public hasY()Z
    .locals 1

    .prologue
    .line 1458
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasY:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1514
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1572
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1573
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1577
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1578
    :sswitch_0
    return-object p0

    .line 1583
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->setX(I)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    goto :goto_0

    .line 1587
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->setY(I)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    goto :goto_0

    .line 1591
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->setWidth(I)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    goto :goto_0

    .line 1595
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->setHeight(I)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    goto :goto_0

    .line 1573
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 1431
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public setHeight(I)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 1
    .parameter "value"

    .prologue
    .line 1494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasHeight:Z

    .line 1495
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->height_:I

    .line 1496
    return-object p0
.end method

.method public setWidth(I)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 1
    .parameter "value"

    .prologue
    .line 1477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasWidth:Z

    .line 1478
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->width_:I

    .line 1479
    return-object p0
.end method

.method public setX(I)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 1
    .parameter "value"

    .prologue
    .line 1443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasX:Z

    .line 1444
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->x_:I

    .line 1445
    return-object p0
.end method

.method public setY(I)Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;
    .locals 1
    .parameter "value"

    .prologue
    .line 1460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasY:Z

    .line 1461
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->y_:I

    .line 1462
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
    .line 1520
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->getX()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1523
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasY()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1524
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->getY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1526
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1527
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->getWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1529
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1530
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$BoundingBox;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1532
    :cond_3
    return-void
.end method
