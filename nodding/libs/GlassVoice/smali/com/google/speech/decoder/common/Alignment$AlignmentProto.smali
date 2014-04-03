.class public final Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Alignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/decoder/common/Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlignmentProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    }
.end annotation


# static fields
.field public static final AM_COST_FIELD_NUMBER:I = 0x3

.field public static final FRAME_DURATION_FIELD_NUMBER:I = 0x1

.field public static final ITABLE_CHECKSUM_FIELD_NUMBER:I = 0x11

.field public static final ITABLE_FILENAME_FIELD_NUMBER:I = 0x12

.field public static final LABEL_ALIGN_TYPE_UNDEFINED:I = 0x0

.field public static final LABEL_ALIGN_TYPE_WORD_FINAL:I = 0x2

.field public static final LABEL_ALIGN_TYPE_WORD_INITIAL:I = 0x1

.field public static final LM_COST_FIELD_NUMBER:I = 0x4

.field public static final OTABLE_CHECKSUM_FIELD_NUMBER:I = 0x13

.field public static final OTABLE_FILENAME_FIELD_NUMBER:I = 0x14

.field public static final SEGMENT_FIELD_NUMBER:I = 0x5

.field public static final TOTAL_COST_FIELD_NUMBER:I = 0x2

.field public static final WORD_LABEL_POSITION_FIELD_NUMBER:I = 0x15


# instance fields
.field private amCost_:F

.field private cachedSize:I

.field private frameDuration_:F

.field private hasAmCost:Z

.field private hasFrameDuration:Z

.field private hasItableChecksum:Z

.field private hasItableFilename:Z

.field private hasLmCost:Z

.field private hasOtableChecksum:Z

.field private hasOtableFilename:Z

.field private hasTotalCost:Z

.field private hasWordLabelPosition:Z

.field private itableChecksum_:Ljava/lang/String;

.field private itableFilename_:Ljava/lang/String;

.field private lmCost_:F

.field private otableChecksum_:Ljava/lang/String;

.field private otableFilename_:Ljava/lang/String;

.field private segment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private totalCost_:F

.field private wordLabelPosition_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 432
    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->frameDuration_:F

    .line 449
    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->totalCost_:F

    .line 466
    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->amCost_:F

    .line 483
    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->lmCost_:F

    .line 499
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment_:Ljava/util/List;

    .line 533
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableChecksum_:Ljava/lang/String;

    .line 550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableFilename_:Ljava/lang/String;

    .line 567
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableChecksum_:Ljava/lang/String;

    .line 584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableFilename_:Ljava/lang/String;

    .line 601
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->wordLabelPosition_:I

    .line 676
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    new-instance v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 796
    new-instance v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    check-cast v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    return-object v0
.end method


# virtual methods
.method public addSegment(Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment_:Ljava/util/List;

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    return-object p0
.end method

.method public final clear()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->clearFrameDuration()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 617
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->clearTotalCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 618
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->clearAmCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 619
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->clearLmCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 620
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->clearSegment()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 621
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->clearItableChecksum()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 622
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->clearItableFilename()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 623
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->clearOtableChecksum()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 624
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->clearOtableFilename()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 625
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->clearWordLabelPosition()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 626
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->cachedSize:I

    .line 627
    return-object p0
.end method

.method public clearAmCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasAmCost:Z

    .line 476
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->amCost_:F

    .line 477
    return-object p0
.end method

.method public clearFrameDuration()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasFrameDuration:Z

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->frameDuration_:F

    .line 443
    return-object p0
.end method

.method public clearItableChecksum()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasItableChecksum:Z

    .line 543
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableChecksum_:Ljava/lang/String;

    .line 544
    return-object p0
.end method

.method public clearItableFilename()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasItableFilename:Z

    .line 560
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableFilename_:Ljava/lang/String;

    .line 561
    return-object p0
.end method

.method public clearLmCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasLmCost:Z

    .line 493
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->lmCost_:F

    .line 494
    return-object p0
.end method

.method public clearOtableChecksum()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasOtableChecksum:Z

    .line 577
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableChecksum_:Ljava/lang/String;

    .line 578
    return-object p0
.end method

.method public clearOtableFilename()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasOtableFilename:Z

    .line 594
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableFilename_:Ljava/lang/String;

    .line 595
    return-object p0
.end method

.method public clearSegment()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment_:Ljava/util/List;

    .line 527
    return-object p0
.end method

.method public clearTotalCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasTotalCost:Z

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->totalCost_:F

    .line 460
    return-object p0
.end method

.method public clearWordLabelPosition()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasWordLabelPosition:Z

    .line 611
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->wordLabelPosition_:I

    .line 612
    return-object p0
.end method

.method public getAmCost()F
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->amCost_:F

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getSerializedSize()I

    .line 683
    :cond_0
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->cachedSize:I

    return v0
.end method

.method public getFrameDuration()F
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->frameDuration_:F

    return v0
.end method

.method public getItableChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableChecksum_:Ljava/lang/String;

    return-object v0
.end method

.method public getItableFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableFilename_:Ljava/lang/String;

    return-object v0
.end method

.method public getLmCost()F
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->lmCost_:F

    return v0
.end method

.method public getOtableChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableChecksum_:Ljava/lang/String;

    return-object v0
.end method

.method public getOtableFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableFilename_:Ljava/lang/String;

    return-object v0
.end method

.method public getSegment(I)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "index"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    return-object v0
.end method

.method public getSegmentCount()I
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSegmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 688
    const/4 v2, 0x0

    .line 689
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasFrameDuration()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getFrameDuration()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasTotalCost()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getTotalCost()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasAmCost()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 698
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getAmCost()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 701
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasLmCost()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 702
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getLmCost()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 705
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getSegmentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 706
    .local v0, element:Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 709
    .end local v0           #element:Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasItableChecksum()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 710
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getItableChecksum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 713
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasItableFilename()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 714
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getItableFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 717
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasOtableChecksum()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 718
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getOtableChecksum()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 721
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasOtableFilename()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 722
    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getOtableFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 725
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasWordLabelPosition()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 726
    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getWordLabelPosition()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 729
    :cond_9
    iput v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->cachedSize:I

    .line 730
    return v2
.end method

.method public getTotalCost()F
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->totalCost_:F

    return v0
.end method

.method public getWordLabelPosition()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->wordLabelPosition_:I

    return v0
.end method

.method public hasAmCost()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasAmCost:Z

    return v0
.end method

.method public hasFrameDuration()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasFrameDuration:Z

    return v0
.end method

.method public hasItableChecksum()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasItableChecksum:Z

    return v0
.end method

.method public hasItableFilename()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasItableFilename:Z

    return v0
.end method

.method public hasLmCost()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasLmCost:Z

    return v0
.end method

.method public hasOtableChecksum()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasOtableChecksum:Z

    return v0
.end method

.method public hasOtableFilename()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasOtableFilename:Z

    return v0
.end method

.method public hasTotalCost()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasTotalCost:Z

    return v0
.end method

.method public hasWordLabelPosition()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasWordLabelPosition:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 631
    iget-boolean v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasFrameDuration:Z

    if-nez v3, :cond_1

    .line 638
    :cond_0
    :goto_0
    return v2

    .line 632
    :cond_1
    iget-boolean v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasTotalCost:Z

    if-eqz v3, :cond_0

    .line 633
    iget-boolean v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasAmCost:Z

    if-eqz v3, :cond_0

    .line 634
    iget-boolean v3, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasLmCost:Z

    if-eqz v3, :cond_0

    .line 635
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getSegmentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 636
    .local v0, element:Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    invoke-virtual {v0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 638
    .end local v0           #element:Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 739
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 743
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 744
    :sswitch_0
    return-object p0

    .line 749
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->setFrameDuration(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    goto :goto_0

    .line 753
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->setTotalCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    goto :goto_0

    .line 757
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->setAmCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    goto :goto_0

    .line 761
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->setLmCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    goto :goto_0

    .line 765
    :sswitch_5
    new-instance v1, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    invoke-direct {v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;-><init>()V

    .line 766
    .local v1, value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 767
    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->addSegment(Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    goto :goto_0

    .line 771
    .end local v1           #value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->setItableChecksum(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    goto :goto_0

    .line 775
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->setItableFilename(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    goto :goto_0

    .line 779
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->setOtableChecksum(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    goto :goto_0

    .line 783
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->setOtableFilename(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    goto :goto_0

    .line 787
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->setWordLabelPosition(I)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    goto :goto_0

    .line 739
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2b -> :sswitch_5
        0x8a -> :sswitch_6
        0x92 -> :sswitch_7
        0x9a -> :sswitch_8
        0xa2 -> :sswitch_9
        0xa8 -> :sswitch_a
    .end sparse-switch
.end method

.method public setAmCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasAmCost:Z

    .line 471
    iput p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->amCost_:F

    .line 472
    return-object p0
.end method

.method public setFrameDuration(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasFrameDuration:Z

    .line 437
    iput p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->frameDuration_:F

    .line 438
    return-object p0
.end method

.method public setItableChecksum(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasItableChecksum:Z

    .line 538
    iput-object p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableChecksum_:Ljava/lang/String;

    .line 539
    return-object p0
.end method

.method public setItableFilename(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasItableFilename:Z

    .line 555
    iput-object p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->itableFilename_:Ljava/lang/String;

    .line 556
    return-object p0
.end method

.method public setLmCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasLmCost:Z

    .line 488
    iput p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->lmCost_:F

    .line 489
    return-object p0
.end method

.method public setOtableChecksum(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasOtableChecksum:Z

    .line 572
    iput-object p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableChecksum_:Ljava/lang/String;

    .line 573
    return-object p0
.end method

.method public setOtableFilename(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasOtableFilename:Z

    .line 589
    iput-object p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->otableFilename_:Ljava/lang/String;

    .line 590
    return-object p0
.end method

.method public setSegment(ILcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 509
    if-nez p2, :cond_0

    .line 510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->segment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-object p0
.end method

.method public setTotalCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasTotalCost:Z

    .line 454
    iput p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->totalCost_:F

    .line 455
    return-object p0
.end method

.method public setWordLabelPosition(I)Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasWordLabelPosition:Z

    .line 606
    iput p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->wordLabelPosition_:I

    .line 607
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
    .line 644
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasFrameDuration()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getFrameDuration()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasTotalCost()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 648
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getTotalCost()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 650
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasAmCost()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 651
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getAmCost()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 653
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasLmCost()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 654
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getLmCost()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 656
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getSegmentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 657
    .local v0, element:Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 659
    .end local v0           #element:Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasItableChecksum()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 660
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getItableChecksum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 662
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasItableFilename()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 663
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getItableFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 665
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasOtableChecksum()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 666
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getOtableChecksum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 668
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasOtableFilename()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 669
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getOtableFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 671
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->hasWordLabelPosition()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 672
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->getWordLabelPosition()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 674
    :cond_9
    return-void
.end method
