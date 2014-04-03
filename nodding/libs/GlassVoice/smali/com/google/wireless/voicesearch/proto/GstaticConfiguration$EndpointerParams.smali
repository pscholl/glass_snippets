.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndpointerParams"
.end annotation


# static fields
.field public static final COMPLETE_SILENCE_MSEC_FIELD_NUMBER:I = 0x1

.field public static final EXTRA_SILENCE_AFTER_END_OF_SPEECH_MSEC_FIELD_NUMBER:I = 0x5

.field public static final NO_SPEECH_DETECTED_TIMEOUT_MSEC_FIELD_NUMBER:I = 0x4

.field public static final POSSIBLY_COMPLETE_SILENCE_MSEC_FIELD_NUMBER:I = 0x2

.field public static final SPEECH_MINIMUM_LENGTH_MSEC_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private completeSilenceMsec_:I

.field private extraSilenceAfterEndOfSpeechMsec_:I

.field private hasCompleteSilenceMsec:Z

.field private hasExtraSilenceAfterEndOfSpeechMsec:Z

.field private hasNoSpeechDetectedTimeoutMsec:Z

.field private hasPossiblyCompleteSilenceMsec:Z

.field private hasSpeechMinimumLengthMsec:Z

.field private noSpeechDetectedTimeoutMsec_:I

.field private possiblyCompleteSilenceMsec_:I

.field private speechMinimumLengthMsec_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1454
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1459
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->completeSilenceMsec_:I

    .line 1476
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->possiblyCompleteSilenceMsec_:I

    .line 1493
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->speechMinimumLengthMsec_:I

    .line 1510
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->noSpeechDetectedTimeoutMsec_:I

    .line 1527
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->extraSilenceAfterEndOfSpeechMsec_:I

    .line 1575
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->cachedSize:I

    .line 1454
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1659
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1653
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->clearCompleteSilenceMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 1543
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->clearPossiblyCompleteSilenceMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 1544
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->clearSpeechMinimumLengthMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 1545
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->clearNoSpeechDetectedTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 1546
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->clearExtraSilenceAfterEndOfSpeechMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 1547
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->cachedSize:I

    .line 1548
    return-object p0
.end method

.method public clearCompleteSilenceMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1468
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasCompleteSilenceMsec:Z

    .line 1469
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->completeSilenceMsec_:I

    .line 1470
    return-object p0
.end method

.method public clearExtraSilenceAfterEndOfSpeechMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1536
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasExtraSilenceAfterEndOfSpeechMsec:Z

    .line 1537
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->extraSilenceAfterEndOfSpeechMsec_:I

    .line 1538
    return-object p0
.end method

.method public clearNoSpeechDetectedTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1519
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasNoSpeechDetectedTimeoutMsec:Z

    .line 1520
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->noSpeechDetectedTimeoutMsec_:I

    .line 1521
    return-object p0
.end method

.method public clearPossiblyCompleteSilenceMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1485
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasPossiblyCompleteSilenceMsec:Z

    .line 1486
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->possiblyCompleteSilenceMsec_:I

    .line 1487
    return-object p0
.end method

.method public clearSpeechMinimumLengthMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1502
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasSpeechMinimumLengthMsec:Z

    .line 1503
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->speechMinimumLengthMsec_:I

    .line 1504
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1578
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 1580
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getSerializedSize()I

    .line 1582
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->cachedSize:I

    return v0
.end method

.method public getCompleteSilenceMsec()I
    .locals 1

    .prologue
    .line 1460
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->completeSilenceMsec_:I

    return v0
.end method

.method public getExtraSilenceAfterEndOfSpeechMsec()I
    .locals 1

    .prologue
    .line 1528
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->extraSilenceAfterEndOfSpeechMsec_:I

    return v0
.end method

.method public getNoSpeechDetectedTimeoutMsec()I
    .locals 1

    .prologue
    .line 1511
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->noSpeechDetectedTimeoutMsec_:I

    return v0
.end method

.method public getPossiblyCompleteSilenceMsec()I
    .locals 1

    .prologue
    .line 1477
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->possiblyCompleteSilenceMsec_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1587
    const/4 v0, 0x0

    .line 1588
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasCompleteSilenceMsec()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1589
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getCompleteSilenceMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1592
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasPossiblyCompleteSilenceMsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1593
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getPossiblyCompleteSilenceMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1596
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasSpeechMinimumLengthMsec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1597
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getSpeechMinimumLengthMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1600
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasNoSpeechDetectedTimeoutMsec()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1601
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getNoSpeechDetectedTimeoutMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1604
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasExtraSilenceAfterEndOfSpeechMsec()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1605
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getExtraSilenceAfterEndOfSpeechMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1608
    :cond_4
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->cachedSize:I

    .line 1609
    return v0
.end method

.method public getSpeechMinimumLengthMsec()I
    .locals 1

    .prologue
    .line 1494
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->speechMinimumLengthMsec_:I

    return v0
.end method

.method public hasCompleteSilenceMsec()Z
    .locals 1

    .prologue
    .line 1461
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasCompleteSilenceMsec:Z

    return v0
.end method

.method public hasExtraSilenceAfterEndOfSpeechMsec()Z
    .locals 1

    .prologue
    .line 1529
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasExtraSilenceAfterEndOfSpeechMsec:Z

    return v0
.end method

.method public hasNoSpeechDetectedTimeoutMsec()Z
    .locals 1

    .prologue
    .line 1512
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasNoSpeechDetectedTimeoutMsec:Z

    return v0
.end method

.method public hasPossiblyCompleteSilenceMsec()Z
    .locals 1

    .prologue
    .line 1478
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasPossiblyCompleteSilenceMsec:Z

    return v0
.end method

.method public hasSpeechMinimumLengthMsec()Z
    .locals 1

    .prologue
    .line 1495
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasSpeechMinimumLengthMsec:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1552
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
    .line 1451
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1617
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1618
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1622
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1623
    :sswitch_0
    return-object p0

    .line 1628
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setCompleteSilenceMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    goto :goto_0

    .line 1632
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setPossiblyCompleteSilenceMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    goto :goto_0

    .line 1636
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setSpeechMinimumLengthMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    goto :goto_0

    .line 1640
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setNoSpeechDetectedTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    goto :goto_0

    .line 1644
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->setExtraSilenceAfterEndOfSpeechMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    goto :goto_0

    .line 1618
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setCompleteSilenceMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 1463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasCompleteSilenceMsec:Z

    .line 1464
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->completeSilenceMsec_:I

    .line 1465
    return-object p0
.end method

.method public setExtraSilenceAfterEndOfSpeechMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 1531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasExtraSilenceAfterEndOfSpeechMsec:Z

    .line 1532
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->extraSilenceAfterEndOfSpeechMsec_:I

    .line 1533
    return-object p0
.end method

.method public setNoSpeechDetectedTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 1514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasNoSpeechDetectedTimeoutMsec:Z

    .line 1515
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->noSpeechDetectedTimeoutMsec_:I

    .line 1516
    return-object p0
.end method

.method public setPossiblyCompleteSilenceMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 1480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasPossiblyCompleteSilenceMsec:Z

    .line 1481
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->possiblyCompleteSilenceMsec_:I

    .line 1482
    return-object p0
.end method

.method public setSpeechMinimumLengthMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 1497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasSpeechMinimumLengthMsec:Z

    .line 1498
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->speechMinimumLengthMsec_:I

    .line 1499
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
    .line 1558
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasCompleteSilenceMsec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getCompleteSilenceMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1561
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasPossiblyCompleteSilenceMsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1562
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getPossiblyCompleteSilenceMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1564
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasSpeechMinimumLengthMsec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1565
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getSpeechMinimumLengthMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1567
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasNoSpeechDetectedTimeoutMsec()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1568
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getNoSpeechDetectedTimeoutMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1570
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->hasExtraSilenceAfterEndOfSpeechMsec()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1571
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getExtraSilenceAfterEndOfSpeechMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1573
    :cond_4
    return-void
.end method
