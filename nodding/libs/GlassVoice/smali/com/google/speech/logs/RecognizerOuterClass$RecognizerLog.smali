.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerLog"
.end annotation


# static fields
.field public static final AUDIO_ENCODING_FIELD_NUMBER:I = 0x3

.field public static final AUDIO_ENCODING_TYPE_AMR:I = 0x3

.field public static final AUDIO_ENCODING_TYPE_FLAC:I = 0x2

.field public static final AUDIO_ENCODING_TYPE_FLOAT32:I = 0x1

.field public static final AUDIO_ENCODING_TYPE_LINEAR16:I = 0x0

.field public static final AUDIO_ENCODING_TYPE_MULAW:I = 0x4

.field public static final AUDIO_ENCODING_TYPE_SPEEX_NB:I = 0x5

.field public static final AUDIO_ENCODING_TYPE_SPEEX_WB:I = 0x6

.field public static final AVERAGE_CONFIDENCE_FIELD_NUMBER:I = 0x12

.field public static final CHANNEL_COUNT_FIELD_NUMBER:I = 0x1d

.field public static final DECODER_GAUSSIAN_SELECTION_CENTROIDS_FIELD_NUMBER:I = 0xe

.field public static final DECODER_LM_WEIGHT_FIELD_NUMBER:I = 0xd

.field public static final DECODER_LOCAL_BEAM_FIELD_NUMBER:I = 0xb

.field public static final DECODER_MAX_ARCS_FIELD_NUMBER:I = 0xa

.field public static final DECODER_WORD_PEN_FIELD_NUMBER:I = 0xc

.field public static final DEPRECATED_ACOUSTIC_MODEL_VERSION_FIELD_NUMBER:I = 0x6

.field public static final DEPRECATED_LANGUAGE_MODEL_VERSION_FIELD_NUMBER:I = 0x7

.field public static final DEPRECATED_LEXICON_VERSION_FIELD_NUMBER:I = 0x9

.field public static final DEPRECATED_TEXTNORM_VERSION_FIELD_NUMBER:I = 0x8

.field public static final FEATURES_FIELD_NUMBER:I = 0x1e

.field public static final LANG_PACK_FIELD_NUMBER:I = 0x1b

.field public static final NOISE_CANCELER_ENABLED_FIELD_NUMBER:I = 0xf

.field public static final PERSONALIZATION_ENABLED_FIELD_NUMBER:I = 0x19

.field public static final RECOGNIZER_CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final RECOGNIZER_LANGUAGE_FIELD_NUMBER:I = 0x15

.field public static final RECOGNIZER_SEGMENT_FIELD_NUMBER:I = 0x16

.field public static final RECOGNIZER_STATUS_CODE_COMPLETE_NO_MATCH:I = 0x1

.field public static final RECOGNIZER_STATUS_CODE_COMPLETE_SUCCESS:I = 0x0

.field public static final RECOGNIZER_STATUS_FIELD_NUMBER:I = 0x13

.field public static final REQUEST_DURATION_MS_FIELD_NUMBER:I = 0x18

.field public static final SAMPLE_RATE_FIELD_NUMBER:I = 0x4

.field public static final SERVER_CLUSTER_FIELD_NUMBER:I = 0x17

.field public static final SERVER_MACHINE_NAME_FIELD_NUMBER:I = 0x1c

.field public static final SPOKEN_LANGUAGE_FIELD_NUMBER:I = 0x14

.field public static final START_TIME_MS_FIELD_NUMBER:I = 0x1a

.field public static final TOP_HYPOTHESIS_FIELD_NUMBER:I = 0x10

.field public static final TOTAL_AUDIO_DURATION_MS_FIELD_NUMBER:I = 0x11

.field public static final UTTERANCE_ID_FIELD_NUMBER:I = 0x1

.field public static final WAVEFORM_FIELD_NUMBER:I = 0x2


# instance fields
.field private audioEncoding_:I

.field private averageConfidence_:F

.field private cachedSize:I

.field private channelCount_:I

.field private dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

.field private dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

.field private dEPRECATEDLexiconVersion_:Ljava/lang/String;

.field private dEPRECATEDTextnormVersion_:Ljava/lang/String;

.field private decoderGaussianSelectionCentroids_:I

.field private decoderLmWeight_:F

.field private decoderLocalBeam_:F

.field private decoderMaxArcs_:I

.field private decoderWordPen_:F

.field private features_:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

.field private hasAudioEncoding:Z

.field private hasAverageConfidence:Z

.field private hasChannelCount:Z

.field private hasDEPRECATEDAcousticModelVersion:Z

.field private hasDEPRECATEDLanguageModelVersion:Z

.field private hasDEPRECATEDLexiconVersion:Z

.field private hasDEPRECATEDTextnormVersion:Z

.field private hasDecoderGaussianSelectionCentroids:Z

.field private hasDecoderLmWeight:Z

.field private hasDecoderLocalBeam:Z

.field private hasDecoderMaxArcs:Z

.field private hasDecoderWordPen:Z

.field private hasFeatures:Z

.field private hasLangPack:Z

.field private hasNoiseCancelerEnabled:Z

.field private hasPersonalizationEnabled:Z

.field private hasRecognizerContext:Z

.field private hasRecognizerLanguage:Z

.field private hasRecognizerStatus:Z

.field private hasRequestDurationMs:Z

.field private hasSampleRate:Z

.field private hasServerCluster:Z

.field private hasServerMachineName:Z

.field private hasSpokenLanguage:Z

.field private hasStartTimeMs:Z

.field private hasTopHypothesis:Z

.field private hasTotalAudioDurationMs:Z

.field private hasUtteranceId:Z

.field private hasWaveform:Z

.field private langPack_:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

.field private noiseCancelerEnabled_:Z

.field private personalizationEnabled_:Z

.field private recognizerContext_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

.field private recognizerLanguage_:Ljava/lang/String;

.field private recognizerSegment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;",
            ">;"
        }
    .end annotation
.end field

.field private recognizerStatus_:I

.field private requestDurationMs_:I

.field private sampleRate_:F

.field private serverCluster_:Ljava/lang/String;

.field private serverMachineName_:Ljava/lang/String;

.field private spokenLanguage_:Ljava/lang/String;

.field private startTimeMs_:J

.field private topHypothesis_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

.field private totalAudioDurationMs_:I

.field private utteranceId_:Ljava/lang/String;

.field private waveform_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 62
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    .line 79
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    .line 96
    iput-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features_:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    .line 116
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    .line 133
    iput-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    .line 221
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    .line 238
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    .line 255
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    .line 272
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    .line 289
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    .line 306
    iput-boolean v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    .line 323
    iput-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 343
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    .line 360
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    .line 377
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    .line 394
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    .line 411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    .line 427
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    .line 461
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    .line 478
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    .line 495
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    .line 512
    iput-boolean v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    .line 529
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    .line 546
    iput-object v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack_:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 697
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 991
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 985
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    return-object v0
.end method


# virtual methods
.method public addRecognizerSegment(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 444
    if-nez p1, :cond_0

    .line 445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    return-object p0
.end method

.method public final clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearUtteranceId()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 565
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearWaveform()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 566
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearChannelCount()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 567
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearAudioEncoding()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 568
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearFeatures()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 569
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearSampleRate()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 570
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearRecognizerContext()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 571
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDEPRECATEDAcousticModelVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 572
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDEPRECATEDLanguageModelVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 573
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDEPRECATEDTextnormVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 574
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDEPRECATEDLexiconVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 575
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDecoderMaxArcs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 576
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDecoderLocalBeam()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 577
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDecoderWordPen()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 578
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDecoderLmWeight()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 579
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearDecoderGaussianSelectionCentroids()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 580
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearNoiseCancelerEnabled()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 581
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearTopHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 582
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearTotalAudioDurationMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 583
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearAverageConfidence()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 584
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearRecognizerStatus()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 585
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearSpokenLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 586
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearRecognizerLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 587
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearRecognizerSegment()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 588
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearServerCluster()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 589
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearServerMachineName()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 590
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearRequestDurationMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 591
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearPersonalizationEnabled()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 592
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearStartTimeMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 593
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->clearLangPack()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 594
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    .line 595
    return-object p0
.end method

.method public clearAudioEncoding()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAudioEncoding:Z

    .line 89
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    .line 90
    return-object p0
.end method

.method public clearAverageConfidence()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAverageConfidence:Z

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    .line 371
    return-object p0
.end method

.method public clearChannelCount()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasChannelCount:Z

    .line 72
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    .line 73
    return-object p0
.end method

.method public clearDEPRECATEDAcousticModelVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDAcousticModelVersion:Z

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public clearDEPRECATEDLanguageModelVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLanguageModelVersion:Z

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public clearDEPRECATEDLexiconVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLexiconVersion:Z

    .line 214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public clearDEPRECATEDTextnormVersion()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDTextnormVersion:Z

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public clearDecoderGaussianSelectionCentroids()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderGaussianSelectionCentroids:Z

    .line 299
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    .line 300
    return-object p0
.end method

.method public clearDecoderLmWeight()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLmWeight:Z

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    .line 283
    return-object p0
.end method

.method public clearDecoderLocalBeam()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLocalBeam:Z

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    .line 249
    return-object p0
.end method

.method public clearDecoderMaxArcs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderMaxArcs:Z

    .line 231
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    .line 232
    return-object p0
.end method

.method public clearDecoderWordPen()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderWordPen:Z

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    .line 266
    return-object p0
.end method

.method public clearFeatures()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasFeatures:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features_:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    .line 110
    return-object p0
.end method

.method public clearLangPack()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasLangPack:Z

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack_:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 560
    return-object p0
.end method

.method public clearNoiseCancelerEnabled()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasNoiseCancelerEnabled:Z

    .line 316
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    .line 317
    return-object p0
.end method

.method public clearPersonalizationEnabled()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 521
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasPersonalizationEnabled:Z

    .line 522
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    .line 523
    return-object p0
.end method

.method public clearRecognizerContext()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerContext:Z

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 147
    return-object p0
.end method

.method public clearRecognizerLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerLanguage:Z

    .line 421
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    .line 422
    return-object p0
.end method

.method public clearRecognizerSegment()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 454
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    .line 455
    return-object p0
.end method

.method public clearRecognizerStatus()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerStatus:Z

    .line 387
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    .line 388
    return-object p0
.end method

.method public clearRequestDurationMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRequestDurationMs:Z

    .line 505
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    .line 506
    return-object p0
.end method

.method public clearSampleRate()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSampleRate:Z

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    .line 127
    return-object p0
.end method

.method public clearServerCluster()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerCluster:Z

    .line 471
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    .line 472
    return-object p0
.end method

.method public clearServerMachineName()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerMachineName:Z

    .line 488
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    .line 489
    return-object p0
.end method

.method public clearSpokenLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSpokenLanguage:Z

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    .line 405
    return-object p0
.end method

.method public clearStartTimeMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 2

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasStartTimeMs:Z

    .line 539
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    .line 540
    return-object p0
.end method

.method public clearTopHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTopHypothesis:Z

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 337
    return-object p0
.end method

.method public clearTotalAudioDurationMs()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTotalAudioDurationMs:Z

    .line 353
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    .line 354
    return-object p0
.end method

.method public clearUtteranceId()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasUtteranceId:Z

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public clearWaveform()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasWaveform:Z

    .line 55
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 56
    return-object p0
.end method

.method public getAudioEncoding()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    return v0
.end method

.method public getAverageConfidence()F
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 700
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getSerializedSize()I

    .line 704
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    return v0
.end method

.method public getDEPRECATEDAcousticModelVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDLanguageModelVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDLexiconVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDTextnormVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getDecoderGaussianSelectionCentroids()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    return v0
.end method

.method public getDecoderLmWeight()F
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    return v0
.end method

.method public getDecoderLocalBeam()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    return v0
.end method

.method public getDecoderMaxArcs()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    return v0
.end method

.method public getDecoderWordPen()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    return v0
.end method

.method public getFeatures()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features_:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    return-object v0
.end method

.method public getLangPack()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack_:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    return-object v0
.end method

.method public getNoiseCancelerEnabled()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    return v0
.end method

.method public getPersonalizationEnabled()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    return v0
.end method

.method public getRecognizerContext()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    return-object v0
.end method

.method public getRecognizerLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizerSegment(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    .locals 1
    .parameter "index"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    return-object v0
.end method

.method public getRecognizerSegmentCount()I
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecognizerSegmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    return-object v0
.end method

.method public getRecognizerStatus()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    return v0
.end method

.method public getRequestDurationMs()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    return v0
.end method

.method public getSampleRate()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 709
    const/4 v2, 0x0

    .line 710
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasUtteranceId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 711
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getUtteranceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasWaveform()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 715
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getWaveform()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 718
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAudioEncoding()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 719
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getAudioEncoding()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 722
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSampleRate()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 723
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getSampleRate()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 726
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerContext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 727
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerContext()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 730
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDAcousticModelVersion()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 731
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDAcousticModelVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 734
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLanguageModelVersion()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 735
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDLanguageModelVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 738
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDTextnormVersion()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 739
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDTextnormVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 742
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLexiconVersion()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 743
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDLexiconVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 746
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderMaxArcs()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 747
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderMaxArcs()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 750
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLocalBeam()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 751
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderLocalBeam()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 754
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderWordPen()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 755
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderWordPen()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 758
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLmWeight()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 759
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderLmWeight()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 762
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderGaussianSelectionCentroids()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 763
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderGaussianSelectionCentroids()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 766
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasNoiseCancelerEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 767
    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getNoiseCancelerEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 770
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTopHypothesis()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 771
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getTopHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 774
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTotalAudioDurationMs()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 775
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getTotalAudioDurationMs()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 778
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAverageConfidence()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 779
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getAverageConfidence()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 782
    :cond_11
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerStatus()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 783
    const/16 v3, 0x13

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerStatus()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 786
    :cond_12
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSpokenLanguage()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 787
    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getSpokenLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 790
    :cond_13
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerLanguage()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 791
    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 794
    :cond_14
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerSegmentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 795
    .local v0, element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    const/16 v3, 0x16

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 798
    .end local v0           #element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    :cond_15
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerCluster()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 799
    const/16 v3, 0x17

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getServerCluster()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 802
    :cond_16
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRequestDurationMs()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 803
    const/16 v3, 0x18

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRequestDurationMs()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 806
    :cond_17
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasPersonalizationEnabled()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 807
    const/16 v3, 0x19

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getPersonalizationEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 810
    :cond_18
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasStartTimeMs()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 811
    const/16 v3, 0x1a

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getStartTimeMs()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 814
    :cond_19
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasLangPack()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 815
    const/16 v3, 0x1b

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getLangPack()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 818
    :cond_1a
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerMachineName()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 819
    const/16 v3, 0x1c

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getServerMachineName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 822
    :cond_1b
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasChannelCount()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 823
    const/16 v3, 0x1d

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getChannelCount()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 826
    :cond_1c
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasFeatures()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 827
    const/16 v3, 0x1e

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getFeatures()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 830
    :cond_1d
    iput v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->cachedSize:I

    .line 831
    return v2
.end method

.method public getServerCluster()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    return-object v0
.end method

.method public getServerMachineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpokenLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeMs()J
    .locals 2

    .prologue
    .line 530
    iget-wide v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    return-wide v0
.end method

.method public getTopHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    return-object v0
.end method

.method public getTotalAudioDurationMs()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    return v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getWaveform()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasAudioEncoding()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAudioEncoding:Z

    return v0
.end method

.method public hasAverageConfidence()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAverageConfidence:Z

    return v0
.end method

.method public hasChannelCount()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasChannelCount:Z

    return v0
.end method

.method public hasDEPRECATEDAcousticModelVersion()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDAcousticModelVersion:Z

    return v0
.end method

.method public hasDEPRECATEDLanguageModelVersion()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLanguageModelVersion:Z

    return v0
.end method

.method public hasDEPRECATEDLexiconVersion()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLexiconVersion:Z

    return v0
.end method

.method public hasDEPRECATEDTextnormVersion()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDTextnormVersion:Z

    return v0
.end method

.method public hasDecoderGaussianSelectionCentroids()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderGaussianSelectionCentroids:Z

    return v0
.end method

.method public hasDecoderLmWeight()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLmWeight:Z

    return v0
.end method

.method public hasDecoderLocalBeam()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLocalBeam:Z

    return v0
.end method

.method public hasDecoderMaxArcs()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderMaxArcs:Z

    return v0
.end method

.method public hasDecoderWordPen()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderWordPen:Z

    return v0
.end method

.method public hasFeatures()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasFeatures:Z

    return v0
.end method

.method public hasLangPack()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasLangPack:Z

    return v0
.end method

.method public hasNoiseCancelerEnabled()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasNoiseCancelerEnabled:Z

    return v0
.end method

.method public hasPersonalizationEnabled()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasPersonalizationEnabled:Z

    return v0
.end method

.method public hasRecognizerContext()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerContext:Z

    return v0
.end method

.method public hasRecognizerLanguage()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerLanguage:Z

    return v0
.end method

.method public hasRecognizerStatus()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerStatus:Z

    return v0
.end method

.method public hasRequestDurationMs()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRequestDurationMs:Z

    return v0
.end method

.method public hasSampleRate()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSampleRate:Z

    return v0
.end method

.method public hasServerCluster()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerCluster:Z

    return v0
.end method

.method public hasServerMachineName()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerMachineName:Z

    return v0
.end method

.method public hasSpokenLanguage()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSpokenLanguage:Z

    return v0
.end method

.method public hasStartTimeMs()Z
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasStartTimeMs:Z

    return v0
.end method

.method public hasTopHypothesis()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTopHypothesis:Z

    return v0
.end method

.method public hasTotalAudioDurationMs()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTotalAudioDurationMs:Z

    return v0
.end method

.method public hasUtteranceId()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasUtteranceId:Z

    return v0
.end method

.method public hasWaveform()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasWaveform:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 599
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 840
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 844
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 845
    :sswitch_0
    return-object p0

    .line 850
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setUtteranceId(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 854
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setWaveform(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 858
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setAudioEncoding(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 862
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setSampleRate(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 866
    :sswitch_5
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;-><init>()V

    .line 867
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 868
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setRecognizerContext(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 872
    .end local v1           #value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDEPRECATEDAcousticModelVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 876
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDEPRECATEDLanguageModelVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 880
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDEPRECATEDTextnormVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 884
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDEPRECATEDLexiconVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 888
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDecoderMaxArcs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 892
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDecoderLocalBeam(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 896
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDecoderWordPen(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 900
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDecoderLmWeight(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto :goto_0

    .line 904
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setDecoderGaussianSelectionCentroids(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 908
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setNoiseCancelerEnabled(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 912
    :sswitch_10
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;-><init>()V

    .line 913
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 914
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setTopHypothesis(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 918
    .end local v1           #value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setTotalAudioDurationMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 922
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setAverageConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 926
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setRecognizerStatus(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 930
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setSpokenLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 934
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setRecognizerLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 938
    :sswitch_16
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;-><init>()V

    .line 939
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 940
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->addRecognizerSegment(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 944
    .end local v1           #value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setServerCluster(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 948
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setRequestDurationMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 952
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setPersonalizationEnabled(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 956
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setStartTimeMs(J)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 960
    :sswitch_1b
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;-><init>()V

    .line 961
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 962
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setLangPack(Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 966
    .end local v1           #value:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setServerMachineName(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 970
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setChannelCount(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 974
    :sswitch_1e
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;-><init>()V

    .line 975
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 976
    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->setFeatures(Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    goto/16 :goto_0

    .line 840
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5d -> :sswitch_b
        0x65 -> :sswitch_c
        0x6d -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
        0x95 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc0 -> :sswitch_18
        0xc8 -> :sswitch_19
        0xd0 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xe8 -> :sswitch_1d
        0xf2 -> :sswitch_1e
    .end sparse-switch
.end method

.method public setAudioEncoding(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAudioEncoding:Z

    .line 84
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->audioEncoding_:I

    .line 85
    return-object p0
.end method

.method public setAverageConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAverageConfidence:Z

    .line 365
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->averageConfidence_:F

    .line 366
    return-object p0
.end method

.method public setChannelCount(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasChannelCount:Z

    .line 67
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->channelCount_:I

    .line 68
    return-object p0
.end method

.method public setDEPRECATEDAcousticModelVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDAcousticModelVersion:Z

    .line 158
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDAcousticModelVersion_:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public setDEPRECATEDLanguageModelVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLanguageModelVersion:Z

    .line 175
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLanguageModelVersion_:Ljava/lang/String;

    .line 176
    return-object p0
.end method

.method public setDEPRECATEDLexiconVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLexiconVersion:Z

    .line 209
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDLexiconVersion_:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public setDEPRECATEDTextnormVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDTextnormVersion:Z

    .line 192
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->dEPRECATEDTextnormVersion_:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public setDecoderGaussianSelectionCentroids(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderGaussianSelectionCentroids:Z

    .line 294
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderGaussianSelectionCentroids_:I

    .line 295
    return-object p0
.end method

.method public setDecoderLmWeight(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLmWeight:Z

    .line 277
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLmWeight_:F

    .line 278
    return-object p0
.end method

.method public setDecoderLocalBeam(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLocalBeam:Z

    .line 243
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderLocalBeam_:F

    .line 244
    return-object p0
.end method

.method public setDecoderMaxArcs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderMaxArcs:Z

    .line 226
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderMaxArcs_:I

    .line 227
    return-object p0
.end method

.method public setDecoderWordPen(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderWordPen:Z

    .line 260
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->decoderWordPen_:F

    .line 261
    return-object p0
.end method

.method public setFeatures(Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasFeatures:Z

    .line 104
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->features_:Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    .line 105
    return-object p0
.end method

.method public setLangPack(Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 550
    if-nez p1, :cond_0

    .line 551
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 553
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasLangPack:Z

    .line 554
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->langPack_:Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    .line 555
    return-object p0
.end method

.method public setNoiseCancelerEnabled(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasNoiseCancelerEnabled:Z

    .line 311
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->noiseCancelerEnabled_:Z

    .line 312
    return-object p0
.end method

.method public setPersonalizationEnabled(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasPersonalizationEnabled:Z

    .line 517
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->personalizationEnabled_:Z

    .line 518
    return-object p0
.end method

.method public setRecognizerContext(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 140
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerContext:Z

    .line 141
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerContext_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 142
    return-object p0
.end method

.method public setRecognizerLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerLanguage:Z

    .line 416
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerLanguage_:Ljava/lang/String;

    .line 417
    return-object p0
.end method

.method public setRecognizerSegment(ILcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 437
    if-nez p2, :cond_0

    .line 438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerSegment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 441
    return-object p0
.end method

.method public setRecognizerStatus(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerStatus:Z

    .line 382
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->recognizerStatus_:I

    .line 383
    return-object p0
.end method

.method public setRequestDurationMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRequestDurationMs:Z

    .line 500
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->requestDurationMs_:I

    .line 501
    return-object p0
.end method

.method public setSampleRate(F)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSampleRate:Z

    .line 121
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->sampleRate_:F

    .line 122
    return-object p0
.end method

.method public setServerCluster(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerCluster:Z

    .line 466
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverCluster_:Ljava/lang/String;

    .line 467
    return-object p0
.end method

.method public setServerMachineName(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerMachineName:Z

    .line 483
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->serverMachineName_:Ljava/lang/String;

    .line 484
    return-object p0
.end method

.method public setSpokenLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSpokenLanguage:Z

    .line 399
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->spokenLanguage_:Ljava/lang/String;

    .line 400
    return-object p0
.end method

.method public setStartTimeMs(J)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasStartTimeMs:Z

    .line 534
    iput-wide p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->startTimeMs_:J

    .line 535
    return-object p0
.end method

.method public setTopHypothesis(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 330
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTopHypothesis:Z

    .line 331
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->topHypothesis_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    .line 332
    return-object p0
.end method

.method public setTotalAudioDurationMs(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTotalAudioDurationMs:Z

    .line 348
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->totalAudioDurationMs_:I

    .line 349
    return-object p0
.end method

.method public setUtteranceId(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasUtteranceId:Z

    .line 33
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->utteranceId_:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public setWaveform(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasWaveform:Z

    .line 50
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->waveform_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 51
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
    .line 605
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasUtteranceId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getUtteranceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasWaveform()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 609
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getWaveform()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 611
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAudioEncoding()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 612
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getAudioEncoding()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 614
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSampleRate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 615
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getSampleRate()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 617
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerContext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 618
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerContext()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 620
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDAcousticModelVersion()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 621
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDAcousticModelVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 623
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLanguageModelVersion()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 624
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDLanguageModelVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 626
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDTextnormVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 627
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDTextnormVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 629
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDEPRECATEDLexiconVersion()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 630
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDEPRECATEDLexiconVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 632
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderMaxArcs()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 633
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderMaxArcs()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 635
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLocalBeam()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 636
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderLocalBeam()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 638
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderWordPen()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 639
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderWordPen()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 641
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderLmWeight()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 642
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderLmWeight()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 644
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasDecoderGaussianSelectionCentroids()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 645
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getDecoderGaussianSelectionCentroids()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 647
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasNoiseCancelerEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 648
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getNoiseCancelerEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 650
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTopHypothesis()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 651
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getTopHypothesis()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerHypothesisLog;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 653
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasTotalAudioDurationMs()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 654
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getTotalAudioDurationMs()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 656
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasAverageConfidence()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 657
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getAverageConfidence()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 659
    :cond_11
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerStatus()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 660
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerStatus()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 662
    :cond_12
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasSpokenLanguage()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 663
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getSpokenLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 665
    :cond_13
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRecognizerLanguage()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 666
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 668
    :cond_14
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRecognizerSegmentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;

    .line 669
    .local v0, element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 671
    .end local v0           #element:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerSegmentLog;
    :cond_15
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerCluster()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 672
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getServerCluster()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 674
    :cond_16
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasRequestDurationMs()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 675
    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getRequestDurationMs()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 677
    :cond_17
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasPersonalizationEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 678
    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getPersonalizationEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 680
    :cond_18
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasStartTimeMs()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 681
    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getStartTimeMs()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 683
    :cond_19
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasLangPack()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 684
    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getLangPack()Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 686
    :cond_1a
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasServerMachineName()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 687
    const/16 v2, 0x1c

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getServerMachineName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 689
    :cond_1b
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasChannelCount()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 690
    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getChannelCount()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 692
    :cond_1c
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->hasFeatures()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 693
    const/16 v2, 0x1e

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;->getFeatures()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 695
    :cond_1d
    return-void
.end method
