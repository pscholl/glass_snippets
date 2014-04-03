.class public final Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerSessionParamsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerSessionParams"
.end annotation


# static fields
.field public static final ALTERNATE_PARAMS_FIELD_NUMBER:I = 0x5

.field public static final AUDIO_TYPE_AMR:I = 0x3

.field public static final AUDIO_TYPE_FLAC:I = 0x2

.field public static final AUDIO_TYPE_FLOAT32:I = 0x1

.field public static final AUDIO_TYPE_LINEAR16:I = 0x0

.field public static final AUDIO_TYPE_MULAW:I = 0x4

.field public static final AUDIO_TYPE_OGG_VORBIS:I = 0x7

.field public static final AUDIO_TYPE_SPEEX_NB:I = 0x5

.field public static final AUDIO_TYPE_SPEEX_WB:I = 0x6

.field public static final CHANNEL_COUNT_FIELD_NUMBER:I = 0xa

.field public static final ENABLE_ALTERNATES_FIELD_NUMBER:I = 0x4

.field public static final ENABLE_FRAME_LOGGING_FIELD_NUMBER:I = 0xb

.field public static final ENABLE_PARTIAL_RESULTS_FIELD_NUMBER:I = 0x7

.field public static final FORCE_TRANSCRIPT_FIELD_NUMBER:I = 0xc

.field public static final HOTWORD_DECISION_THRESHOLD_FIELD_NUMBER:I = 0x9

.field public static final MASK_OFFENSIVE_WORDS_FIELD_NUMBER:I = 0x3

.field public static final NUM_NBEST_FIELD_NUMBER:I = 0x6

.field public static final RESET_INTERVAL_MS_FIELD_NUMBER:I = 0x8

.field public static final SAMPLE_RATE_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private alternateParams_:Lcom/google/speech/common/Alternates$AlternateParams;

.field private cachedSize:I

.field private channelCount_:I

.field private enableAlternates_:Z

.field private enableFrameLogging_:Z

.field private enablePartialResults_:Z

.field private forceTranscript_:Ljava/lang/String;

.field private hasAlternateParams:Z

.field private hasChannelCount:Z

.field private hasEnableAlternates:Z

.field private hasEnableFrameLogging:Z

.field private hasEnablePartialResults:Z

.field private hasForceTranscript:Z

.field private hasHotwordDecisionThreshold:Z

.field private hasMaskOffensiveWords:Z

.field private hasNumNbest:Z

.field private hasResetIntervalMs:Z

.field private hasSampleRate:Z

.field private hasType:Z

.field private hotwordDecisionThreshold_:F

.field private maskOffensiveWords_:Z

.field private numNbest_:I

.field private resetIntervalMs_:I

.field private sampleRate_:F

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 25
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->type_:I

    .line 42
    const/high16 v0, 0x45fa

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->sampleRate_:F

    .line 59
    iput-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->maskOffensiveWords_:Z

    .line 76
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableAlternates_:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams_:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 113
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->numNbest_:I

    .line 130
    iput-boolean v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialResults_:Z

    .line 147
    iput v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->resetIntervalMs_:I

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hotwordDecisionThreshold_:F

    .line 181
    iput v2, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->channelCount_:I

    .line 198
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableFrameLogging_:Z

    .line 215
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->forceTranscript_:Ljava/lang/String;

    .line 291
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearType()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 231
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearSampleRate()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 232
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearMaskOffensiveWords()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 233
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearEnableAlternates()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 234
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearAlternateParams()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 235
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearNumNbest()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 236
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearEnablePartialResults()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 237
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearResetIntervalMs()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 238
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearHotwordDecisionThreshold()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 239
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearChannelCount()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 240
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearEnableFrameLogging()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 241
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->clearForceTranscript()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->cachedSize:I

    .line 243
    return-object p0
.end method

.method public clearAlternateParams()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasAlternateParams:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams_:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 107
    return-object p0
.end method

.method public clearChannelCount()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasChannelCount:Z

    .line 191
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->channelCount_:I

    .line 192
    return-object p0
.end method

.method public clearEnableAlternates()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnableAlternates:Z

    .line 86
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableAlternates_:Z

    .line 87
    return-object p0
.end method

.method public clearEnableFrameLogging()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnableFrameLogging:Z

    .line 208
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableFrameLogging_:Z

    .line 209
    return-object p0
.end method

.method public clearEnablePartialResults()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnablePartialResults:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialResults_:Z

    .line 141
    return-object p0
.end method

.method public clearForceTranscript()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasForceTranscript:Z

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->forceTranscript_:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public clearHotwordDecisionThreshold()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasHotwordDecisionThreshold:Z

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hotwordDecisionThreshold_:F

    .line 175
    return-object p0
.end method

.method public clearMaskOffensiveWords()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasMaskOffensiveWords:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->maskOffensiveWords_:Z

    .line 70
    return-object p0
.end method

.method public clearNumNbest()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasNumNbest:Z

    .line 123
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->numNbest_:I

    .line 124
    return-object p0
.end method

.method public clearResetIntervalMs()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasResetIntervalMs:Z

    .line 157
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->resetIntervalMs_:I

    .line 158
    return-object p0
.end method

.method public clearSampleRate()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasSampleRate:Z

    .line 52
    const/high16 v0, 0x45fa

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->sampleRate_:F

    .line 53
    return-object p0
.end method

.method public clearType()Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasType:Z

    .line 35
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->type_:I

    .line 36
    return-object p0
.end method

.method public getAlternateParams()Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams_:Lcom/google/speech/common/Alternates$AlternateParams;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getSerializedSize()I

    .line 298
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->cachedSize:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->channelCount_:I

    return v0
.end method

.method public getEnableAlternates()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableAlternates_:Z

    return v0
.end method

.method public getEnableFrameLogging()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableFrameLogging_:Z

    return v0
.end method

.method public getEnablePartialResults()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialResults_:Z

    return v0
.end method

.method public getForceTranscript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->forceTranscript_:Ljava/lang/String;

    return-object v0
.end method

.method public getHotwordDecisionThreshold()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hotwordDecisionThreshold_:F

    return v0
.end method

.method public getMaskOffensiveWords()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->maskOffensiveWords_:Z

    return v0
.end method

.method public getNumNbest()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->numNbest_:I

    return v0
.end method

.method public getResetIntervalMs()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->resetIntervalMs_:I

    return v0
.end method

.method public getSampleRate()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->sampleRate_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasSampleRate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getSampleRate()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasMaskOffensiveWords()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getMaskOffensiveWords()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnableAlternates()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 317
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getEnableAlternates()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasAlternateParams()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getAlternateParams()Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasNumNbest()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 325
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getNumNbest()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnablePartialResults()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 329
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getEnablePartialResults()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasResetIntervalMs()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 333
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getResetIntervalMs()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasHotwordDecisionThreshold()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 337
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getHotwordDecisionThreshold()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasChannelCount()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 341
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getChannelCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnableFrameLogging()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 345
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getEnableFrameLogging()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasForceTranscript()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 349
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getForceTranscript()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_b
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->cachedSize:I

    .line 353
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->type_:I

    return v0
.end method

.method public hasAlternateParams()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasAlternateParams:Z

    return v0
.end method

.method public hasChannelCount()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasChannelCount:Z

    return v0
.end method

.method public hasEnableAlternates()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnableAlternates:Z

    return v0
.end method

.method public hasEnableFrameLogging()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnableFrameLogging:Z

    return v0
.end method

.method public hasEnablePartialResults()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnablePartialResults:Z

    return v0
.end method

.method public hasForceTranscript()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasForceTranscript:Z

    return v0
.end method

.method public hasHotwordDecisionThreshold()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasHotwordDecisionThreshold:Z

    return v0
.end method

.method public hasMaskOffensiveWords()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasMaskOffensiveWords:Z

    return v0
.end method

.method public hasNumNbest()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasNumNbest:Z

    return v0
.end method

.method public hasResetIntervalMs()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasResetIntervalMs:Z

    return v0
.end method

.method public hasSampleRate()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasSampleRate:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 247
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
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 362
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 366
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    :sswitch_0
    return-object p0

    .line 372
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setType(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 376
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setSampleRate(F)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 380
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setMaskOffensiveWords(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 384
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setEnableAlternates(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 388
    :sswitch_5
    new-instance v1, Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-direct {v1}, Lcom/google/speech/common/Alternates$AlternateParams;-><init>()V

    .line 389
    .local v1, value:Lcom/google/speech/common/Alternates$AlternateParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 390
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setAlternateParams(Lcom/google/speech/common/Alternates$AlternateParams;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 394
    .end local v1           #value:Lcom/google/speech/common/Alternates$AlternateParams;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setNumNbest(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 398
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setEnablePartialResults(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 402
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setResetIntervalMs(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 406
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setHotwordDecisionThreshold(F)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 410
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setChannelCount(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 414
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setEnableFrameLogging(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 418
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->setForceTranscript(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    goto :goto_0

    .line 362
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4d -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method

.method public setAlternateParams(Lcom/google/speech/common/Alternates$AlternateParams;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasAlternateParams:Z

    .line 101
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->alternateParams_:Lcom/google/speech/common/Alternates$AlternateParams;

    .line 102
    return-object p0
.end method

.method public setChannelCount(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasChannelCount:Z

    .line 186
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->channelCount_:I

    .line 187
    return-object p0
.end method

.method public setEnableAlternates(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnableAlternates:Z

    .line 81
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableAlternates_:Z

    .line 82
    return-object p0
.end method

.method public setEnableFrameLogging(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnableFrameLogging:Z

    .line 203
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enableFrameLogging_:Z

    .line 204
    return-object p0
.end method

.method public setEnablePartialResults(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnablePartialResults:Z

    .line 135
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->enablePartialResults_:Z

    .line 136
    return-object p0
.end method

.method public setForceTranscript(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasForceTranscript:Z

    .line 220
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->forceTranscript_:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public setHotwordDecisionThreshold(F)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasHotwordDecisionThreshold:Z

    .line 169
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hotwordDecisionThreshold_:F

    .line 170
    return-object p0
.end method

.method public setMaskOffensiveWords(Z)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasMaskOffensiveWords:Z

    .line 64
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->maskOffensiveWords_:Z

    .line 65
    return-object p0
.end method

.method public setNumNbest(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasNumNbest:Z

    .line 118
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->numNbest_:I

    .line 119
    return-object p0
.end method

.method public setResetIntervalMs(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasResetIntervalMs:Z

    .line 152
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->resetIntervalMs_:I

    .line 153
    return-object p0
.end method

.method public setSampleRate(F)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasSampleRate:Z

    .line 47
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->sampleRate_:F

    .line 48
    return-object p0
.end method

.method public setType(I)Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasType:Z

    .line 30
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->type_:I

    .line 31
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
    .line 253
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasSampleRate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getSampleRate()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasMaskOffensiveWords()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getMaskOffensiveWords()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnableAlternates()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getEnableAlternates()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 265
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasAlternateParams()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getAlternateParams()Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 268
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasNumNbest()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getNumNbest()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 271
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnablePartialResults()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 272
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getEnablePartialResults()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 274
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasResetIntervalMs()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 275
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getResetIntervalMs()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 277
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasHotwordDecisionThreshold()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 278
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getHotwordDecisionThreshold()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 280
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasChannelCount()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 281
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getChannelCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 283
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasEnableFrameLogging()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 284
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getEnableFrameLogging()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 286
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->hasForceTranscript()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 287
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getForceTranscript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 289
    :cond_b
    return-void
.end method
