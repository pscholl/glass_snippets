.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionResult"
.end annotation


# static fields
.field public static final END_TIME_USEC_FIELD_NUMBER:I = 0x2

.field public static final HYPOTHESIS_FIELD_NUMBER:I = 0x3

.field public static final LATTICE_FST_FIELD_NUMBER:I = 0x4

.field public static final START_TIME_USEC_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private endTimeUsec_:J

.field private hasEndTimeUsec:Z

.field private hasLatticeFst:Z

.field private hasStartTimeUsec:Z

.field private hypothesis_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private latticeFst_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private startTimeUsec_:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 580
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 585
    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->startTimeUsec_:J

    .line 602
    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->endTimeUsec_:J

    .line 618
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis_:Ljava/util/List;

    .line 652
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->latticeFst_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 699
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->cachedSize:I

    .line 580
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 771
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    return-object v0
.end method


# virtual methods
.method public addHypothesis(Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 635
    if-nez p1, :cond_0

    .line 636
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis_:Ljava/util/List;

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    return-object p0
.end method

.method public final clear()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->clearStartTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 668
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->clearEndTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 669
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->clearHypothesis()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 670
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->clearLatticeFst()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    .line 671
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->cachedSize:I

    .line 672
    return-object p0
.end method

.method public clearEndTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 2

    .prologue
    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasEndTimeUsec:Z

    .line 612
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->endTimeUsec_:J

    .line 613
    return-object p0
.end method

.method public clearHypothesis()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1

    .prologue
    .line 645
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis_:Ljava/util/List;

    .line 646
    return-object p0
.end method

.method public clearLatticeFst()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasLatticeFst:Z

    .line 662
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->latticeFst_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 663
    return-object p0
.end method

.method public clearStartTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 2

    .prologue
    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasStartTimeUsec:Z

    .line 595
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->startTimeUsec_:J

    .line 596
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getSerializedSize()I

    .line 706
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->cachedSize:I

    return v0
.end method

.method public getEndTimeUsec()J
    .locals 2

    .prologue
    .line 603
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->endTimeUsec_:J

    return-wide v0
.end method

.method public getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "index"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    return-object v0
.end method

.method public getHypothesisCount()I
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHypothesisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis_:Ljava/util/List;

    return-object v0
.end method

.method public getLatticeFst()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->latticeFst_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 711
    const/4 v2, 0x0

    .line 712
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasStartTimeUsec()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getStartTimeUsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasEndTimeUsec()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 717
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getEndTimeUsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 721
    .local v0, element:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 724
    .end local v0           #element:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasLatticeFst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 725
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getLatticeFst()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 728
    :cond_3
    iput v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->cachedSize:I

    .line 729
    return v2
.end method

.method public getStartTimeUsec()J
    .locals 2

    .prologue
    .line 586
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->startTimeUsec_:J

    return-wide v0
.end method

.method public hasEndTimeUsec()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasEndTimeUsec:Z

    return v0
.end method

.method public hasLatticeFst()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasLatticeFst:Z

    return v0
.end method

.method public hasStartTimeUsec()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasStartTimeUsec:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 677
    .local v0, element:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 679
    .end local v0           #element:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :goto_0
    return v2

    :cond_1
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
    .line 577
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 738
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 742
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 743
    :sswitch_0
    return-object p0

    .line 748
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->setStartTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    goto :goto_0

    .line 752
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->setEndTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    goto :goto_0

    .line 756
    :sswitch_3
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;-><init>()V

    .line 757
    .local v1, value:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 758
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->addHypothesis(Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    goto :goto_0

    .line 762
    .end local v1           #value:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->setLatticeFst(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    goto :goto_0

    .line 738
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setEndTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasEndTimeUsec:Z

    .line 607
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->endTimeUsec_:J

    .line 608
    return-object p0
.end method

.method public setHypothesis(ILcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 628
    if-nez p2, :cond_0

    .line 629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 632
    return-object p0
.end method

.method public setLatticeFst(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasLatticeFst:Z

    .line 657
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->latticeFst_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 658
    return-object p0
.end method

.method public setStartTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasStartTimeUsec:Z

    .line 590
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->startTimeUsec_:J

    .line 591
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasStartTimeUsec()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getStartTimeUsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 688
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasEndTimeUsec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 689
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getEndTimeUsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 691
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 692
    .local v0, element:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 694
    .end local v0           #element:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->hasLatticeFst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 695
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getLatticeFst()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 697
    :cond_3
    return-void
.end method
