.class public final Lcom/google/speech/s3/S3$S3Response;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S3Response"
.end annotation


# static fields
.field public static final DEBUG_LINE_FIELD_NUMBER:I = 0x4

.field public static final ERROR_CODE_FIELD_NUMBER:I = 0x2

.field public static final ERROR_DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final GOGGLES_STREAM_RESPONSE_EXTENSION_FIELD_NUMBER:I = 0x21c774f

.field public static final MAJEL_SERVICE_EVENT_EXTENSION_FIELD_NUMBER:I = 0x195e184

.field public static final PINHOLE_OUTPUT_EXTENSION_FIELD_NUMBER:I = 0x259d705

.field public static final RECOGNIZER_EVENT_EXTENSION_FIELD_NUMBER:I = 0x1320f9

.field public static final S3_STATUS_DONE_ERROR:I = 0x2

.field public static final S3_STATUS_DONE_SUCCESS:I = 0x1

.field public static final S3_STATUS_IN_PROGRESS:I = 0x0

.field public static final S3_STATUS_NOT_STARTED:I = 0x3

.field public static final SOUND_SEARCH_SERVICE_EVENT_EXTENSION_FIELD_NUMBER:I = 0x21b6d89

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final TTS_SERVICE_EVENT_EXTENSION_FIELD_NUMBER:I = 0x1b46604


# instance fields
.field private cachedSize:I

.field private debugLine_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private errorCode_:I

.field private errorDescription_:Ljava/lang/String;

.field private gogglesStreamResponseExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

.field private hasErrorCode:Z

.field private hasErrorDescription:Z

.field private hasGogglesStreamResponseExtension:Z

.field private hasMajelServiceEventExtension:Z

.field private hasPinholeOutputExtension:Z

.field private hasRecognizerEventExtension:Z

.field private hasSoundSearchServiceEventExtension:Z

.field private hasStatus:Z

.field private hasTtsServiceEventExtension:Z

.field private majelServiceEventExtension_:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

.field private pinholeOutputExtension_:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

.field private recognizerEventExtension_:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

.field private soundSearchServiceEventExtension_:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

.field private status_:I

.field private ttsServiceEventExtension_:Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2625
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2636
    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->status_:I

    .line 2653
    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorCode_:I

    .line 2670
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorDescription_:Ljava/lang/String;

    .line 2686
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine_:Ljava/util/List;

    .line 2720
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension_:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 2740
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension_:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 2760
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension_:Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    .line 2780
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension_:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    .line 2800
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 2820
    iput-object v1, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension_:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 2894
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->cachedSize:I

    .line 2625
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3035
    new-instance v0, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3Response;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3029
    new-instance v0, Lcom/google/speech/s3/S3$S3Response;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$S3Response;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$S3Response;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$S3Response;

    check-cast v0, Lcom/google/speech/s3/S3$S3Response;

    return-object v0
.end method


# virtual methods
.method public addDebugLine(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 2703
    if-nez p1, :cond_0

    .line 2704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2706
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine_:Ljava/util/List;

    .line 2709
    :cond_1
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2710
    return-object p0
.end method

.method public final clear()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2838
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->clearStatus()Lcom/google/speech/s3/S3$S3Response;

    .line 2839
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->clearErrorCode()Lcom/google/speech/s3/S3$S3Response;

    .line 2840
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->clearErrorDescription()Lcom/google/speech/s3/S3$S3Response;

    .line 2841
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->clearDebugLine()Lcom/google/speech/s3/S3$S3Response;

    .line 2842
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->clearRecognizerEventExtension()Lcom/google/speech/s3/S3$S3Response;

    .line 2843
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->clearMajelServiceEventExtension()Lcom/google/speech/s3/S3$S3Response;

    .line 2844
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->clearTtsServiceEventExtension()Lcom/google/speech/s3/S3$S3Response;

    .line 2845
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->clearSoundSearchServiceEventExtension()Lcom/google/speech/s3/S3$S3Response;

    .line 2846
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->clearGogglesStreamResponseExtension()Lcom/google/speech/s3/S3$S3Response;

    .line 2847
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->clearPinholeOutputExtension()Lcom/google/speech/s3/S3$S3Response;

    .line 2848
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->cachedSize:I

    .line 2849
    return-object p0
.end method

.method public clearDebugLine()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2713
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine_:Ljava/util/List;

    .line 2714
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2662
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasErrorCode:Z

    .line 2663
    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorCode_:I

    .line 2664
    return-object p0
.end method

.method public clearErrorDescription()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasErrorDescription:Z

    .line 2680
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorDescription_:Ljava/lang/String;

    .line 2681
    return-object p0
.end method

.method public clearGogglesStreamResponseExtension()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasGogglesStreamResponseExtension:Z

    .line 2813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 2814
    return-object p0
.end method

.method public clearMajelServiceEventExtension()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2752
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasMajelServiceEventExtension:Z

    .line 2753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension_:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 2754
    return-object p0
.end method

.method public clearPinholeOutputExtension()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasPinholeOutputExtension:Z

    .line 2833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension_:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 2834
    return-object p0
.end method

.method public clearRecognizerEventExtension()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasRecognizerEventExtension:Z

    .line 2733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension_:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 2734
    return-object p0
.end method

.method public clearSoundSearchServiceEventExtension()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasSoundSearchServiceEventExtension:Z

    .line 2793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension_:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    .line 2794
    return-object p0
.end method

.method public clearStatus()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2645
    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasStatus:Z

    .line 2646
    iput v0, p0, Lcom/google/speech/s3/S3$S3Response;->status_:I

    .line 2647
    return-object p0
.end method

.method public clearTtsServiceEventExtension()Lcom/google/speech/s3/S3$S3Response;
    .locals 1

    .prologue
    .line 2772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasTtsServiceEventExtension:Z

    .line 2773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension_:Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    .line 2774
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2897
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->cachedSize:I

    if-gez v0, :cond_0

    .line 2899
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getSerializedSize()I

    .line 2901
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->cachedSize:I

    return v0
.end method

.method public getDebugLine(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDebugLineCount()I
    .locals 1

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDebugLineList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine_:Ljava/util/List;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 2654
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorCode_:I

    return v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->errorDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getGogglesStreamResponseExtension()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    .locals 1

    .prologue
    .line 2802
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    return-object v0
.end method

.method public getMajelServiceEventExtension()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    .locals 1

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension_:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    return-object v0
.end method

.method public getPinholeOutputExtension()Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension_:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    return-object v0
.end method

.method public getRecognizerEventExtension()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension_:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2906
    const/4 v3, 0x0

    .line 2907
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2908
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2911
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasErrorCode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2912
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getErrorCode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2915
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasErrorDescription()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2916
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2920
    :cond_2
    const/4 v0, 0x0

    .line 2921
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getDebugLineList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2922
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 2925
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v0

    .line 2926
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getDebugLineList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2928
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasRecognizerEventExtension()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2929
    const v4, 0x1320f9

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getRecognizerEventExtension()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2932
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasMajelServiceEventExtension()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2933
    const v4, 0x195e184

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getMajelServiceEventExtension()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2936
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasTtsServiceEventExtension()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2937
    const v4, 0x1b46604

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getTtsServiceEventExtension()Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2940
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasSoundSearchServiceEventExtension()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2941
    const v4, 0x21b6d89

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getSoundSearchServiceEventExtension()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2944
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasGogglesStreamResponseExtension()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2945
    const v4, 0x21c774f

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getGogglesStreamResponseExtension()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2948
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasPinholeOutputExtension()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2949
    const v4, 0x259d705

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getPinholeOutputExtension()Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2952
    :cond_9
    iput v3, p0, Lcom/google/speech/s3/S3$S3Response;->cachedSize:I

    .line 2953
    return v3
.end method

.method public getSoundSearchServiceEventExtension()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension_:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 2638
    iget v0, p0, Lcom/google/speech/s3/S3$S3Response;->status_:I

    return v0
.end method

.method public getTtsServiceEventExtension()Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    .locals 1

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension_:Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    return-object v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 2655
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasErrorCode:Z

    return v0
.end method

.method public hasErrorDescription()Z
    .locals 1

    .prologue
    .line 2672
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasErrorDescription:Z

    return v0
.end method

.method public hasGogglesStreamResponseExtension()Z
    .locals 1

    .prologue
    .line 2801
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasGogglesStreamResponseExtension:Z

    return v0
.end method

.method public hasMajelServiceEventExtension()Z
    .locals 1

    .prologue
    .line 2741
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasMajelServiceEventExtension:Z

    return v0
.end method

.method public hasPinholeOutputExtension()Z
    .locals 1

    .prologue
    .line 2821
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasPinholeOutputExtension:Z

    return v0
.end method

.method public hasRecognizerEventExtension()Z
    .locals 1

    .prologue
    .line 2721
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasRecognizerEventExtension:Z

    return v0
.end method

.method public hasSoundSearchServiceEventExtension()Z
    .locals 1

    .prologue
    .line 2781
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasSoundSearchServiceEventExtension:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 2637
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasStatus:Z

    return v0
.end method

.method public hasTtsServiceEventExtension()Z
    .locals 1

    .prologue
    .line 2761
    iget-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasTtsServiceEventExtension:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2853
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasRecognizerEventExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2854
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getRecognizerEventExtension()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2856
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

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
    .line 2622
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$S3Response;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/S3$S3Response;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2961
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2962
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2966
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/S3$S3Response;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2967
    :sswitch_0
    return-object p0

    .line 2972
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3Response;->setStatus(I)Lcom/google/speech/s3/S3$S3Response;

    goto :goto_0

    .line 2976
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3Response;->setErrorCode(I)Lcom/google/speech/s3/S3$S3Response;

    goto :goto_0

    .line 2980
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3Response;->setErrorDescription(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Response;

    goto :goto_0

    .line 2984
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/S3$S3Response;->addDebugLine(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Response;

    goto :goto_0

    .line 2988
    :sswitch_5
    new-instance v1, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    .line 2989
    .local v1, value:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2990
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Response;->setRecognizerEventExtension(Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;)Lcom/google/speech/s3/S3$S3Response;

    goto :goto_0

    .line 2994
    .end local v1           #value:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    :sswitch_6
    new-instance v1, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;-><init>()V

    .line 2995
    .local v1, value:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2996
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Response;->setMajelServiceEventExtension(Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;)Lcom/google/speech/s3/S3$S3Response;

    goto :goto_0

    .line 3000
    .end local v1           #value:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;
    :sswitch_7
    new-instance v1, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;-><init>()V

    .line 3001
    .local v1, value:Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3002
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Response;->setTtsServiceEventExtension(Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;)Lcom/google/speech/s3/S3$S3Response;

    goto :goto_0

    .line 3006
    .end local v1           #value:Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;
    :sswitch_8
    new-instance v1, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    invoke-direct {v1}, Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;-><init>()V

    .line 3007
    .local v1, value:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3008
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Response;->setSoundSearchServiceEventExtension(Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;)Lcom/google/speech/s3/S3$S3Response;

    goto :goto_0

    .line 3012
    .end local v1           #value:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;
    :sswitch_9
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;-><init>()V

    .line 3013
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3014
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Response;->setGogglesStreamResponseExtension(Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;)Lcom/google/speech/s3/S3$S3Response;

    goto :goto_0

    .line 3018
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;
    :sswitch_a
    new-instance v1, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-direct {v1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;-><init>()V

    .line 3019
    .local v1, value:Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3020
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/S3$S3Response;->setPinholeOutputExtension(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)Lcom/google/speech/s3/S3$S3Response;

    goto :goto_0

    .line 2962
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x9907ca -> :sswitch_5
        0xcaf0c22 -> :sswitch_6
        0xda33022 -> :sswitch_7
        0x10db6c4a -> :sswitch_8
        0x10e3ba7a -> :sswitch_9
        0x12ceb82a -> :sswitch_a
    .end sparse-switch
.end method

.method public setDebugLine(ILjava/lang/String;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2696
    if-nez p2, :cond_0

    .line 2697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2699
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/S3$S3Response;->debugLine_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2700
    return-object p0
.end method

.method public setErrorCode(I)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 2657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasErrorCode:Z

    .line 2658
    iput p1, p0, Lcom/google/speech/s3/S3$S3Response;->errorCode_:I

    .line 2659
    return-object p0
.end method

.method public setErrorDescription(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 2674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasErrorDescription:Z

    .line 2675
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Response;->errorDescription_:Ljava/lang/String;

    .line 2676
    return-object p0
.end method

.method public setGogglesStreamResponseExtension(Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 2804
    if-nez p1, :cond_0

    .line 2805
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2807
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasGogglesStreamResponseExtension:Z

    .line 2808
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Response;->gogglesStreamResponseExtension_:Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    .line 2809
    return-object p0
.end method

.method public setMajelServiceEventExtension(Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 2744
    if-nez p1, :cond_0

    .line 2745
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2747
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasMajelServiceEventExtension:Z

    .line 2748
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Response;->majelServiceEventExtension_:Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    .line 2749
    return-object p0
.end method

.method public setPinholeOutputExtension(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 2824
    if-nez p1, :cond_0

    .line 2825
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2827
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasPinholeOutputExtension:Z

    .line 2828
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Response;->pinholeOutputExtension_:Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 2829
    return-object p0
.end method

.method public setRecognizerEventExtension(Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 2724
    if-nez p1, :cond_0

    .line 2725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2727
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasRecognizerEventExtension:Z

    .line 2728
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Response;->recognizerEventExtension_:Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 2729
    return-object p0
.end method

.method public setSoundSearchServiceEventExtension(Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 2784
    if-nez p1, :cond_0

    .line 2785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2787
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasSoundSearchServiceEventExtension:Z

    .line 2788
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Response;->soundSearchServiceEventExtension_:Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    .line 2789
    return-object p0
.end method

.method public setStatus(I)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 2640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasStatus:Z

    .line 2641
    iput p1, p0, Lcom/google/speech/s3/S3$S3Response;->status_:I

    .line 2642
    return-object p0
.end method

.method public setTtsServiceEventExtension(Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;)Lcom/google/speech/s3/S3$S3Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 2764
    if-nez p1, :cond_0

    .line 2765
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2767
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/S3$S3Response;->hasTtsServiceEventExtension:Z

    .line 2768
    iput-object p1, p0, Lcom/google/speech/s3/S3$S3Response;->ttsServiceEventExtension_:Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    .line 2769
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
    .line 2862
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2863
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getStatus()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2865
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasErrorCode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2866
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getErrorCode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2868
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasErrorDescription()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2869
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2871
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getDebugLineList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    .line 2872
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 2874
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasRecognizerEventExtension()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2875
    const v2, 0x1320f9

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getRecognizerEventExtension()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2877
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasMajelServiceEventExtension()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2878
    const v2, 0x195e184

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getMajelServiceEventExtension()Lcom/google/speech/speech/s3/Majel$MajelServiceEvent;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2880
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasTtsServiceEventExtension()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2881
    const v2, 0x1b46604

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getTtsServiceEventExtension()Lcom/google/speech/speech/s3/Synthesis$TtsServiceEvent;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2883
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasSoundSearchServiceEventExtension()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2884
    const v2, 0x21b6d89

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getSoundSearchServiceEventExtension()Lcom/google/speech/speech/s3/SoundSearch$SoundSearchServiceEvent;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2886
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasGogglesStreamResponseExtension()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2887
    const v2, 0x21c774f

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getGogglesStreamResponseExtension()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesStreamResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2889
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->hasPinholeOutputExtension()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2890
    const v2, 0x259d705

    invoke-virtual {p0}, Lcom/google/speech/s3/S3$S3Response;->getPinholeOutputExtension()Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2892
    :cond_9
    return-void
.end method
