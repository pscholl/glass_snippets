.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dictation"
.end annotation


# static fields
.field public static final DELAY_BETWEEN_COMMITTING_NEW_TEXT_MSEC_FIELD_NUMBER:I = 0x3

.field public static final EMBEDDED_RECOGNIZER_FALLBACK_TIMEOUT_FIELD_NUMBER:I = 0x8

.field public static final ENDPOINTER_PARAMS_FIELD_NUMBER:I = 0x7

.field public static final LOG_EDIT_DISTANCE_MAX_CONTIGUOUS_CHARS_FIELD_NUMBER:I = 0x5

.field public static final LOG_EDIT_DISTANCE_MAX_NEW_CHARS_PERC_FIELD_NUMBER:I = 0x6

.field public static final MAX_SPAN_LENGTH_FIELD_NUMBER:I = 0x1

.field public static final MAX_TOTAL_SPAN_LENGTH_FIELD_NUMBER:I = 0x2

.field public static final PARTIAL_RESULT_MIN_CONFIDENCE_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private delayBetweenCommittingNewTextMsec_:I

.field private embeddedRecognizerFallbackTimeout_:I

.field private endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field private hasDelayBetweenCommittingNewTextMsec:Z

.field private hasEmbeddedRecognizerFallbackTimeout:Z

.field private hasEndpointerParams:Z

.field private hasLogEditDistanceMaxContiguousChars:Z

.field private hasLogEditDistanceMaxNewCharsPerc:Z

.field private hasMaxSpanLength:Z

.field private hasMaxTotalSpanLength:Z

.field private hasPartialResultMinConfidence:Z

.field private logEditDistanceMaxContiguousChars_:I

.field private logEditDistanceMaxNewCharsPerc_:I

.field private maxSpanLength_:I

.field private maxTotalSpanLength_:I

.field private partialResultMinConfidence_:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2717
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2722
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxSpanLength_:I

    .line 2739
    const/16 v0, 0xfa

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxTotalSpanLength_:I

    .line 2756
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->delayBetweenCommittingNewTextMsec_:I

    .line 2773
    const v0, 0x3f666666

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->partialResultMinConfidence_:F

    .line 2790
    const/16 v0, 0xf

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxContiguousChars_:I

    .line 2807
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxNewCharsPerc_:I

    .line 2824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2844
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->embeddedRecognizerFallbackTimeout_:I

    .line 2904
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->cachedSize:I

    .line 2717
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3014
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3008
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->clearMaxSpanLength()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 2860
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->clearMaxTotalSpanLength()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 2861
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->clearDelayBetweenCommittingNewTextMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 2862
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->clearPartialResultMinConfidence()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 2863
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->clearLogEditDistanceMaxContiguousChars()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 2864
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->clearLogEditDistanceMaxNewCharsPerc()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 2865
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->clearEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 2866
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->clearEmbeddedRecognizerFallbackTimeout()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    .line 2867
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->cachedSize:I

    .line 2868
    return-object p0
.end method

.method public clearDelayBetweenCommittingNewTextMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasDelayBetweenCommittingNewTextMsec:Z

    .line 2766
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->delayBetweenCommittingNewTextMsec_:I

    .line 2767
    return-object p0
.end method

.method public clearEmbeddedRecognizerFallbackTimeout()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2853
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasEmbeddedRecognizerFallbackTimeout:Z

    .line 2854
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->embeddedRecognizerFallbackTimeout_:I

    .line 2855
    return-object p0
.end method

.method public clearEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2836
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasEndpointerParams:Z

    .line 2837
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2838
    return-object p0
.end method

.method public clearLogEditDistanceMaxContiguousChars()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasLogEditDistanceMaxContiguousChars:Z

    .line 2800
    const/16 v0, 0xf

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxContiguousChars_:I

    .line 2801
    return-object p0
.end method

.method public clearLogEditDistanceMaxNewCharsPerc()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasLogEditDistanceMaxNewCharsPerc:Z

    .line 2817
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxNewCharsPerc_:I

    .line 2818
    return-object p0
.end method

.method public clearMaxSpanLength()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasMaxSpanLength:Z

    .line 2732
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxSpanLength_:I

    .line 2733
    return-object p0
.end method

.method public clearMaxTotalSpanLength()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasMaxTotalSpanLength:Z

    .line 2749
    const/16 v0, 0xfa

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxTotalSpanLength_:I

    .line 2750
    return-object p0
.end method

.method public clearPartialResultMinConfidence()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1

    .prologue
    .line 2782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasPartialResultMinConfidence:Z

    .line 2783
    const v0, 0x3f666666

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->partialResultMinConfidence_:F

    .line 2784
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2907
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->cachedSize:I

    if-gez v0, :cond_0

    .line 2909
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getSerializedSize()I

    .line 2911
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->cachedSize:I

    return v0
.end method

.method public getDelayBetweenCommittingNewTextMsec()I
    .locals 1

    .prologue
    .line 2757
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->delayBetweenCommittingNewTextMsec_:I

    return v0
.end method

.method public getEmbeddedRecognizerFallbackTimeout()I
    .locals 1

    .prologue
    .line 2845
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->embeddedRecognizerFallbackTimeout_:I

    return v0
.end method

.method public getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    return-object v0
.end method

.method public getLogEditDistanceMaxContiguousChars()I
    .locals 1

    .prologue
    .line 2791
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxContiguousChars_:I

    return v0
.end method

.method public getLogEditDistanceMaxNewCharsPerc()I
    .locals 1

    .prologue
    .line 2808
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxNewCharsPerc_:I

    return v0
.end method

.method public getMaxSpanLength()I
    .locals 1

    .prologue
    .line 2723
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxSpanLength_:I

    return v0
.end method

.method public getMaxTotalSpanLength()I
    .locals 1

    .prologue
    .line 2740
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxTotalSpanLength_:I

    return v0
.end method

.method public getPartialResultMinConfidence()F
    .locals 1

    .prologue
    .line 2774
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->partialResultMinConfidence_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2916
    const/4 v0, 0x0

    .line 2917
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasMaxSpanLength()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2918
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getMaxSpanLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2921
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasMaxTotalSpanLength()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2922
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getMaxTotalSpanLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2925
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasDelayBetweenCommittingNewTextMsec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2926
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getDelayBetweenCommittingNewTextMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2929
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasPartialResultMinConfidence()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2930
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getPartialResultMinConfidence()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2933
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasLogEditDistanceMaxContiguousChars()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2934
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getLogEditDistanceMaxContiguousChars()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2937
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasLogEditDistanceMaxNewCharsPerc()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2938
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getLogEditDistanceMaxNewCharsPerc()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2941
    :cond_5
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasEndpointerParams()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2942
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2945
    :cond_6
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasEmbeddedRecognizerFallbackTimeout()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2946
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getEmbeddedRecognizerFallbackTimeout()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2949
    :cond_7
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->cachedSize:I

    .line 2950
    return v0
.end method

.method public hasDelayBetweenCommittingNewTextMsec()Z
    .locals 1

    .prologue
    .line 2758
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasDelayBetweenCommittingNewTextMsec:Z

    return v0
.end method

.method public hasEmbeddedRecognizerFallbackTimeout()Z
    .locals 1

    .prologue
    .line 2846
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasEmbeddedRecognizerFallbackTimeout:Z

    return v0
.end method

.method public hasEndpointerParams()Z
    .locals 1

    .prologue
    .line 2825
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasEndpointerParams:Z

    return v0
.end method

.method public hasLogEditDistanceMaxContiguousChars()Z
    .locals 1

    .prologue
    .line 2792
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasLogEditDistanceMaxContiguousChars:Z

    return v0
.end method

.method public hasLogEditDistanceMaxNewCharsPerc()Z
    .locals 1

    .prologue
    .line 2809
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasLogEditDistanceMaxNewCharsPerc:Z

    return v0
.end method

.method public hasMaxSpanLength()Z
    .locals 1

    .prologue
    .line 2724
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasMaxSpanLength:Z

    return v0
.end method

.method public hasMaxTotalSpanLength()Z
    .locals 1

    .prologue
    .line 2741
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasMaxTotalSpanLength:Z

    return v0
.end method

.method public hasPartialResultMinConfidence()Z
    .locals 1

    .prologue
    .line 2775
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasPartialResultMinConfidence:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2872
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
    .line 2714
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2958
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2959
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2963
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2964
    :sswitch_0
    return-object p0

    .line 2969
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->setMaxSpanLength(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    goto :goto_0

    .line 2973
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->setMaxTotalSpanLength(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    goto :goto_0

    .line 2977
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->setDelayBetweenCommittingNewTextMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    goto :goto_0

    .line 2981
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->setPartialResultMinConfidence(F)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    goto :goto_0

    .line 2985
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->setLogEditDistanceMaxContiguousChars(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    goto :goto_0

    .line 2989
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->setLogEditDistanceMaxNewCharsPerc(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    goto :goto_0

    .line 2993
    :sswitch_7
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    .line 2994
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2995
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    goto :goto_0

    .line 2999
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->setEmbeddedRecognizerFallbackTimeout(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;

    goto :goto_0

    .line 2959
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public setDelayBetweenCommittingNewTextMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasDelayBetweenCommittingNewTextMsec:Z

    .line 2761
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->delayBetweenCommittingNewTextMsec_:I

    .line 2762
    return-object p0
.end method

.method public setEmbeddedRecognizerFallbackTimeout(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasEmbeddedRecognizerFallbackTimeout:Z

    .line 2849
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->embeddedRecognizerFallbackTimeout_:I

    .line 2850
    return-object p0
.end method

.method public setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2828
    if-nez p1, :cond_0

    .line 2829
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2831
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasEndpointerParams:Z

    .line 2832
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2833
    return-object p0
.end method

.method public setLogEditDistanceMaxContiguousChars(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasLogEditDistanceMaxContiguousChars:Z

    .line 2795
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxContiguousChars_:I

    .line 2796
    return-object p0
.end method

.method public setLogEditDistanceMaxNewCharsPerc(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasLogEditDistanceMaxNewCharsPerc:Z

    .line 2812
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->logEditDistanceMaxNewCharsPerc_:I

    .line 2813
    return-object p0
.end method

.method public setMaxSpanLength(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasMaxSpanLength:Z

    .line 2727
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxSpanLength_:I

    .line 2728
    return-object p0
.end method

.method public setMaxTotalSpanLength(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasMaxTotalSpanLength:Z

    .line 2744
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->maxTotalSpanLength_:I

    .line 2745
    return-object p0
.end method

.method public setPartialResultMinConfidence(F)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;
    .locals 1
    .parameter "value"

    .prologue
    .line 2777
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasPartialResultMinConfidence:Z

    .line 2778
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->partialResultMinConfidence_:F

    .line 2779
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
    .line 2878
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasMaxSpanLength()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2879
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getMaxSpanLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2881
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasMaxTotalSpanLength()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2882
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getMaxTotalSpanLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2884
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasDelayBetweenCommittingNewTextMsec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2885
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getDelayBetweenCommittingNewTextMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2887
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasPartialResultMinConfidence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2888
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getPartialResultMinConfidence()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 2890
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasLogEditDistanceMaxContiguousChars()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2891
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getLogEditDistanceMaxContiguousChars()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2893
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasLogEditDistanceMaxNewCharsPerc()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2894
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getLogEditDistanceMaxNewCharsPerc()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2896
    :cond_5
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasEndpointerParams()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2897
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2899
    :cond_6
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->hasEmbeddedRecognizerFallbackTimeout()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2900
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dictation;->getEmbeddedRecognizerFallbackTimeout()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2902
    :cond_7
    return-void
.end method
