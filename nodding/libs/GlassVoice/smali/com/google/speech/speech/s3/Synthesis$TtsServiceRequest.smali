.class public final Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Synthesis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Synthesis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TtsServiceRequest"
.end annotation


# static fields
.field public static final AUDIO_CHUNK_SIZE_FIELD_NUMBER:I = 0xb

.field public static final AUDIO_ENCODING_FIELD_NUMBER:I = 0xa

.field public static final ENCODING_ANY:I = 0x0

.field public static final ENCODING_LINEAR_16BIT:I = 0x1

.field public static final ENCODING_MP3:I = 0x4

.field public static final ENCODING_MULAW:I = 0x2

.field public static final ENCODING_SPEEX:I = 0x3

.field public static final ENCODING_SPEEX_IN_OGG:I = 0x6

.field public static final ENCODING_SPEEX_WITH_HEADER_BYTE:I = 0x5

.field public static final ENGINE_SPECIFIC_REQUEST_FIELD_NUMBER:I = 0xd

.field public static final INPUT_IS_LOGGABLE_FIELD_NUMBER:I = 0xc

.field public static final SSML_FIELD_NUMBER:I = 0x2

.field public static final SYNTHESIS_PITCH_FIELD_NUMBER:I = 0x8

.field public static final SYNTHESIS_SPEED_FIELD_NUMBER:I = 0x7

.field public static final SYNTHESIS_TEXT_FIELD_NUMBER:I = 0x1

.field public static final SYNTHESIS_VOLUME_FIELD_NUMBER:I = 0x9

.field public static final VOICE_ENGINE_FIELD_NUMBER:I = 0x6

.field public static final VOICE_LANGUAGE_FIELD_NUMBER:I = 0x3

.field public static final VOICE_NAME_FIELD_NUMBER:I = 0x4

.field public static final VOICE_SAMPLE_RATE_FIELD_NUMBER:I = 0x5


# instance fields
.field private audioChunkSize_:I

.field private audioEncoding_:I

.field private cachedSize:I

.field private engineSpecificRequest_:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

.field private hasAudioChunkSize:Z

.field private hasAudioEncoding:Z

.field private hasEngineSpecificRequest:Z

.field private hasInputIsLoggable:Z

.field private hasSsml:Z

.field private hasSynthesisPitch:Z

.field private hasSynthesisSpeed:Z

.field private hasSynthesisText:Z

.field private hasSynthesisVolume:Z

.field private hasVoiceEngine:Z

.field private hasVoiceLanguage:Z

.field private hasVoiceName:Z

.field private hasVoiceSampleRate:Z

.field private inputIsLoggable_:Z

.field private ssml_:Ljava/lang/String;

.field private synthesisPitch_:D

.field private synthesisSpeed_:D

.field private synthesisText_:Ljava/lang/String;

.field private synthesisVolume_:D

.field private voiceEngine_:Ljava/lang/String;

.field private voiceLanguage_:Ljava/lang/String;

.field private voiceName_:Ljava/lang/String;

.field private voiceSampleRate_:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisText_:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->ssml_:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->engineSpecificRequest_:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    .line 78
    iput-boolean v3, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->inputIsLoggable_:Z

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceLanguage_:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceName_:Ljava/lang/String;

    .line 129
    iput v3, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceSampleRate_:I

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceEngine_:Ljava/lang/String;

    .line 163
    iput-wide v1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisSpeed_:D

    .line 180
    iput-wide v1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisPitch_:D

    .line 197
    iput-wide v1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisVolume_:D

    .line 214
    iput v3, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->audioEncoding_:I

    .line 231
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->audioChunkSize_:I

    .line 311
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 455
    new-instance v0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    check-cast v0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearSynthesisText()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 247
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearSsml()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 248
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearEngineSpecificRequest()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 249
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearInputIsLoggable()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 250
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearVoiceLanguage()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 251
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearVoiceName()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 252
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearVoiceSampleRate()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 253
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearVoiceEngine()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 254
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearSynthesisSpeed()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 255
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearSynthesisPitch()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 256
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearSynthesisVolume()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 257
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearAudioEncoding()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 258
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->clearAudioChunkSize()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    .line 259
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->cachedSize:I

    .line 260
    return-object p0
.end method

.method public clearAudioChunkSize()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasAudioChunkSize:Z

    .line 241
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->audioChunkSize_:I

    .line 242
    return-object p0
.end method

.method public clearAudioEncoding()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasAudioEncoding:Z

    .line 224
    iput v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->audioEncoding_:I

    .line 225
    return-object p0
.end method

.method public clearEngineSpecificRequest()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasEngineSpecificRequest:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->engineSpecificRequest_:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    .line 72
    return-object p0
.end method

.method public clearInputIsLoggable()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasInputIsLoggable:Z

    .line 88
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->inputIsLoggable_:Z

    .line 89
    return-object p0
.end method

.method public clearSsml()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSsml:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->ssml_:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public clearSynthesisPitch()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisPitch:Z

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisPitch_:D

    .line 191
    return-object p0
.end method

.method public clearSynthesisSpeed()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisSpeed:Z

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisSpeed_:D

    .line 174
    return-object p0
.end method

.method public clearSynthesisText()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisText:Z

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisText_:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public clearSynthesisVolume()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisVolume:Z

    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisVolume_:D

    .line 208
    return-object p0
.end method

.method public clearVoiceEngine()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceEngine:Z

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceEngine_:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public clearVoiceLanguage()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceLanguage:Z

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceLanguage_:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public clearVoiceName()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceName:Z

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceName_:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public clearVoiceSampleRate()Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceSampleRate:Z

    .line 139
    iput v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceSampleRate_:I

    .line 140
    return-object p0
.end method

.method public getAudioChunkSize()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->audioChunkSize_:I

    return v0
.end method

.method public getAudioEncoding()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->audioEncoding_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getSerializedSize()I

    .line 318
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->cachedSize:I

    return v0
.end method

.method public getEngineSpecificRequest()Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->engineSpecificRequest_:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    return-object v0
.end method

.method public getInputIsLoggable()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->inputIsLoggable_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getSynthesisText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSsml()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getSsml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceLanguage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getVoiceLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getVoiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceSampleRate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 341
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getVoiceSampleRate()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceEngine()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 345
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getVoiceEngine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisSpeed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 349
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getSynthesisSpeed()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisPitch()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 353
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getSynthesisPitch()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisVolume()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 357
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getSynthesisVolume()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 360
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasAudioEncoding()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 361
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getAudioEncoding()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasAudioChunkSize()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 365
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getAudioChunkSize()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasInputIsLoggable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 369
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getInputIsLoggable()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasEngineSpecificRequest()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 373
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getEngineSpecificRequest()Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 376
    :cond_c
    iput v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->cachedSize:I

    .line 377
    return v0
.end method

.method public getSsml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->ssml_:Ljava/lang/String;

    return-object v0
.end method

.method public getSynthesisPitch()D
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisPitch_:D

    return-wide v0
.end method

.method public getSynthesisSpeed()D
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisSpeed_:D

    return-wide v0
.end method

.method public getSynthesisText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSynthesisVolume()D
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisVolume_:D

    return-wide v0
.end method

.method public getVoiceEngine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceEngine_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceSampleRate()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceSampleRate_:I

    return v0
.end method

.method public hasAudioChunkSize()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasAudioChunkSize:Z

    return v0
.end method

.method public hasAudioEncoding()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasAudioEncoding:Z

    return v0
.end method

.method public hasEngineSpecificRequest()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasEngineSpecificRequest:Z

    return v0
.end method

.method public hasInputIsLoggable()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasInputIsLoggable:Z

    return v0
.end method

.method public hasSsml()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSsml:Z

    return v0
.end method

.method public hasSynthesisPitch()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisPitch:Z

    return v0
.end method

.method public hasSynthesisSpeed()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisSpeed:Z

    return v0
.end method

.method public hasSynthesisText()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisText:Z

    return v0
.end method

.method public hasSynthesisVolume()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisVolume:Z

    return v0
.end method

.method public hasVoiceEngine()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceEngine:Z

    return v0
.end method

.method public hasVoiceLanguage()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceLanguage:Z

    return v0
.end method

.method public hasVoiceName()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceName:Z

    return v0
.end method

.method public hasVoiceSampleRate()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceSampleRate:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 264
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
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 386
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 390
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    :sswitch_0
    return-object p0

    .line 396
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setSynthesisText(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 400
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setSsml(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 404
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setVoiceLanguage(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 408
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setVoiceName(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 412
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setVoiceSampleRate(I)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 416
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setVoiceEngine(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 420
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setSynthesisSpeed(D)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 424
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setSynthesisPitch(D)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 428
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setSynthesisVolume(D)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 432
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setAudioEncoding(I)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 436
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setAudioChunkSize(I)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 440
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setInputIsLoggable(Z)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 444
    :sswitch_d
    new-instance v1, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    invoke-direct {v1}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;-><init>()V

    .line 445
    .local v1, value:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 446
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->setEngineSpecificRequest(Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;

    goto :goto_0

    .line 386
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x39 -> :sswitch_7
        0x41 -> :sswitch_8
        0x49 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch
.end method

.method public setAudioChunkSize(I)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasAudioChunkSize:Z

    .line 236
    iput p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->audioChunkSize_:I

    .line 237
    return-object p0
.end method

.method public setAudioEncoding(I)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasAudioEncoding:Z

    .line 219
    iput p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->audioEncoding_:I

    .line 220
    return-object p0
.end method

.method public setEngineSpecificRequest(Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasEngineSpecificRequest:Z

    .line 66
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->engineSpecificRequest_:Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    .line 67
    return-object p0
.end method

.method public setInputIsLoggable(Z)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasInputIsLoggable:Z

    .line 83
    iput-boolean p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->inputIsLoggable_:Z

    .line 84
    return-object p0
.end method

.method public setSsml(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSsml:Z

    .line 46
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->ssml_:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public setSynthesisPitch(D)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisPitch:Z

    .line 185
    iput-wide p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisPitch_:D

    .line 186
    return-object p0
.end method

.method public setSynthesisSpeed(D)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisSpeed:Z

    .line 168
    iput-wide p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisSpeed_:D

    .line 169
    return-object p0
.end method

.method public setSynthesisText(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisText:Z

    .line 29
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisText_:Ljava/lang/String;

    .line 30
    return-object p0
.end method

.method public setSynthesisVolume(D)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisVolume:Z

    .line 202
    iput-wide p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->synthesisVolume_:D

    .line 203
    return-object p0
.end method

.method public setVoiceEngine(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceEngine:Z

    .line 151
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceEngine_:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public setVoiceLanguage(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceLanguage:Z

    .line 100
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceLanguage_:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public setVoiceName(Ljava/lang/String;)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceName:Z

    .line 117
    iput-object p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceName_:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public setVoiceSampleRate(I)Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceSampleRate:Z

    .line 134
    iput p1, p0, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->voiceSampleRate_:I

    .line 135
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getSynthesisText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSsml()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getSsml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceLanguage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getVoiceLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 279
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getVoiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 282
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceSampleRate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getVoiceSampleRate()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 285
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasVoiceEngine()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 286
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getVoiceEngine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 288
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisSpeed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getSynthesisSpeed()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 291
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisPitch()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 292
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getSynthesisPitch()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 294
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasSynthesisVolume()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 295
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getSynthesisVolume()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 297
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasAudioEncoding()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 298
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getAudioEncoding()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 300
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasAudioChunkSize()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 301
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getAudioChunkSize()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 303
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasInputIsLoggable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 304
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getInputIsLoggable()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 306
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->hasEngineSpecificRequest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 307
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Synthesis$TtsServiceRequest;->getEngineSpecificRequest()Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 309
    :cond_c
    return-void
.end method
