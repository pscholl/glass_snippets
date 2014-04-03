.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerHypothesisLog"
.end annotation


# static fields
.field public static final AM_COST_FIELD_NUMBER:I = 0x5

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x3

.field public static final HYPOTHESIS_FIELD_NUMBER:I = 0x2

.field public static final IS_REDACTED_FIELD_NUMBER:I = 0x7

.field public static final LM_COST_FIELD_NUMBER:I = 0x6

.field public static final PRENORM_HYPOTHESIS_FIELD_NUMBER:I = 0x1

.field public static final RECOGNIZER_COST_FIELD_NUMBER:I = 0x4


# instance fields
.field private amCost_:F

.field private cachedSize:I

.field private confidence_:F

.field private hasAmCost:Z

.field private hasConfidence:Z

.field private hasHypothesis:Z

.field private hasIsRedacted:Z

.field private hasLmCost:Z

.field private hasPrenormHypothesis:Z

.field private hasRecognizerCost:Z

.field private hypothesis_:Ljava/lang/String;

.field private isRedacted_:Z

.field private lmCost_:F

.field private prenormHypothesis_:Ljava/lang/String;

.field private recognizerCost_:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1672
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1677
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    .line 1694
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    .line 1711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    .line 1728
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    .line 1745
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    .line 1762
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    .line 1779
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    .line 1835
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    .line 1672
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1935
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1929
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1794
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearPrenormHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1795
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1796
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearIsRedacted()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1797
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearConfidence()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1798
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearRecognizerCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1799
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearAmCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1800
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->clearLmCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 1801
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    .line 1802
    return-object p0
.end method

.method public clearAmCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasAmCost:Z

    .line 1772
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    .line 1773
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasConfidence:Z

    .line 1738
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    .line 1739
    return-object p0
.end method

.method public clearHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasHypothesis:Z

    .line 1704
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    .line 1705
    return-object p0
.end method

.method public clearIsRedacted()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1720
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasIsRedacted:Z

    .line 1721
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    .line 1722
    return-object p0
.end method

.method public clearLmCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasLmCost:Z

    .line 1789
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    .line 1790
    return-object p0
.end method

.method public clearPrenormHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasPrenormHypothesis:Z

    .line 1687
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    .line 1688
    return-object p0
.end method

.method public clearRecognizerCost()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 1754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasRecognizerCost:Z

    .line 1755
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    .line 1756
    return-object p0
.end method

.method public getAmCost()F
    .locals 1

    .prologue
    .line 1763
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1838
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 1840
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getSerializedSize()I

    .line 1842
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1729
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    return v0
.end method

.method public getHypothesis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRedacted()Z
    .locals 1

    .prologue
    .line 1712
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    return v0
.end method

.method public getLmCost()F
    .locals 1

    .prologue
    .line 1780
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    return v0
.end method

.method public getPrenormHypothesis()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizerCost()F
    .locals 1

    .prologue
    .line 1746
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1847
    const/4 v0, 0x0

    .line 1848
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasPrenormHypothesis()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1849
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getPrenormHypothesis()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1852
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasHypothesis()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1853
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getHypothesis()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1856
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasConfidence()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1857
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getConfidence()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1860
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasRecognizerCost()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1861
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getRecognizerCost()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1864
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasAmCost()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1865
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getAmCost()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1868
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasLmCost()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1869
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getLmCost()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1872
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasIsRedacted()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1873
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getIsRedacted()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1876
    :cond_6
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->cachedSize:I

    .line 1877
    return v0
.end method

.method public hasAmCost()Z
    .locals 1

    .prologue
    .line 1764
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasAmCost:Z

    return v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 1730
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasConfidence:Z

    return v0
.end method

.method public hasHypothesis()Z
    .locals 1

    .prologue
    .line 1696
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasHypothesis:Z

    return v0
.end method

.method public hasIsRedacted()Z
    .locals 1

    .prologue
    .line 1713
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasIsRedacted:Z

    return v0
.end method

.method public hasLmCost()Z
    .locals 1

    .prologue
    .line 1781
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasLmCost:Z

    return v0
.end method

.method public hasPrenormHypothesis()Z
    .locals 1

    .prologue
    .line 1679
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasPrenormHypothesis:Z

    return v0
.end method

.method public hasRecognizerCost()Z
    .locals 1

    .prologue
    .line 1747
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasRecognizerCost:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1806
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
    .line 1669
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1885
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1886
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1890
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1891
    :sswitch_0
    return-object p0

    .line 1896
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setPrenormHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1900
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1904
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1908
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setRecognizerCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1912
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setAmCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1916
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setLmCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1920
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->setIsRedacted(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    goto :goto_0

    .line 1886
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public setAmCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasAmCost:Z

    .line 1767
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->amCost_:F

    .line 1768
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasConfidence:Z

    .line 1733
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->confidence_:F

    .line 1734
    return-object p0
.end method

.method public setHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasHypothesis:Z

    .line 1699
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hypothesis_:Ljava/lang/String;

    .line 1700
    return-object p0
.end method

.method public setIsRedacted(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasIsRedacted:Z

    .line 1716
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->isRedacted_:Z

    .line 1717
    return-object p0
.end method

.method public setLmCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasLmCost:Z

    .line 1784
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->lmCost_:F

    .line 1785
    return-object p0
.end method

.method public setPrenormHypothesis(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasPrenormHypothesis:Z

    .line 1682
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->prenormHypothesis_:Ljava/lang/String;

    .line 1683
    return-object p0
.end method

.method public setRecognizerCost(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasRecognizerCost:Z

    .line 1750
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->recognizerCost_:F

    .line 1751
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
    .line 1812
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasPrenormHypothesis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getPrenormHypothesis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1815
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasHypothesis()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1816
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getHypothesis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1818
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1819
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getConfidence()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1821
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasRecognizerCost()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1822
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getRecognizerCost()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1824
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasAmCost()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1825
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getAmCost()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1827
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasLmCost()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1828
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getLmCost()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1830
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->hasIsRedacted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1831
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;->getIsRedacted()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1833
    :cond_6
    return-void
.end method
