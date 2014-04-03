.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoundSearch"
.end annotation


# static fields
.field public static final BLACKLISTED_DEVICES_FIELD_NUMBER:I = 0x4

.field public static final ENABLE_MUSIC_DETECTOR_FIELD_NUMBER:I = 0x1

.field public static final ENABLE_MUSIC_HOTWORDER_FIELD_NUMBER:I = 0x5

.field public static final ENABLE_PREEMPTIVE_DETECTION_FIELD_NUMBER:I = 0x6

.field public static final MUSIC_DETECTOR_THRESHOLD_FIELD_NUMBER:I = 0x2

.field public static final STOP_MUSIC_DETECTION_ON_START_OF_SPEECH_FIELD_NUMBER:I = 0x3


# instance fields
.field private blacklistedDevices_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private enableMusicDetector_:Z

.field private enableMusicHotworder_:Z

.field private enablePreemptiveDetection_:Z

.field private hasEnableMusicDetector:Z

.field private hasEnableMusicHotworder:Z

.field private hasEnablePreemptiveDetection:Z

.field private hasMusicDetectorThreshold:Z

.field private hasStopMusicDetectionOnStartOfSpeech:Z

.field private musicDetectorThreshold_:F

.field private stopMusicDetectionOnStartOfSpeech_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4975
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4980
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicDetector_:Z

    .line 4997
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->musicDetectorThreshold_:F

    .line 5014
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->stopMusicDetectionOnStartOfSpeech_:Z

    .line 5030
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices_:Ljava/util/List;

    .line 5064
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicHotworder_:Z

    .line 5081
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enablePreemptiveDetection_:Z

    .line 5133
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->cachedSize:I

    .line 4975
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5230
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5224
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    return-object v0
.end method


# virtual methods
.method public addBlacklistedDevices(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 5047
    if-nez p1, :cond_0

    .line 5048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5050
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices_:Ljava/util/List;

    .line 5053
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5054
    return-object p0
.end method

.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    .line 5096
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->clearEnableMusicDetector()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 5097
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->clearMusicDetectorThreshold()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 5098
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->clearStopMusicDetectionOnStartOfSpeech()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 5099
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->clearBlacklistedDevices()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 5100
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->clearEnableMusicHotworder()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 5101
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->clearEnablePreemptiveDetection()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    .line 5102
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->cachedSize:I

    .line 5103
    return-object p0
.end method

.method public clearBlacklistedDevices()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    .line 5057
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices_:Ljava/util/List;

    .line 5058
    return-object p0
.end method

.method public clearEnableMusicDetector()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4989
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnableMusicDetector:Z

    .line 4990
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicDetector_:Z

    .line 4991
    return-object p0
.end method

.method public clearEnableMusicHotworder()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5073
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnableMusicHotworder:Z

    .line 5074
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicHotworder_:Z

    .line 5075
    return-object p0
.end method

.method public clearEnablePreemptiveDetection()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5090
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnablePreemptiveDetection:Z

    .line 5091
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enablePreemptiveDetection_:Z

    .line 5092
    return-object p0
.end method

.method public clearMusicDetectorThreshold()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    .line 5006
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasMusicDetectorThreshold:Z

    .line 5007
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->musicDetectorThreshold_:F

    .line 5008
    return-object p0
.end method

.method public clearStopMusicDetectionOnStartOfSpeech()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5023
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasStopMusicDetectionOnStartOfSpeech:Z

    .line 5024
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->stopMusicDetectionOnStartOfSpeech_:Z

    .line 5025
    return-object p0
.end method

.method public getBlacklistedDevices(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 5037
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBlacklistedDevicesCount()I
    .locals 1

    .prologue
    .line 5035
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlacklistedDevicesList()Ljava/util/List;
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
    .line 5033
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5136
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->cachedSize:I

    if-gez v0, :cond_0

    .line 5138
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getSerializedSize()I

    .line 5140
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->cachedSize:I

    return v0
.end method

.method public getEnableMusicDetector()Z
    .locals 1

    .prologue
    .line 4981
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicDetector_:Z

    return v0
.end method

.method public getEnableMusicHotworder()Z
    .locals 1

    .prologue
    .line 5065
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicHotworder_:Z

    return v0
.end method

.method public getEnablePreemptiveDetection()Z
    .locals 1

    .prologue
    .line 5082
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enablePreemptiveDetection_:Z

    return v0
.end method

.method public getMusicDetectorThreshold()F
    .locals 1

    .prologue
    .line 4998
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->musicDetectorThreshold_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 5145
    const/4 v3, 0x0

    .line 5146
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnableMusicDetector()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5147
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getEnableMusicDetector()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 5150
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasMusicDetectorThreshold()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5151
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getMusicDetectorThreshold()F

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v4

    add-int/2addr v3, v4

    .line 5154
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasStopMusicDetectionOnStartOfSpeech()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5155
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getStopMusicDetectionOnStartOfSpeech()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 5159
    :cond_2
    const/4 v0, 0x0

    .line 5160
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getBlacklistedDevicesList()Ljava/util/List;

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

    .line 5161
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 5164
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v3, v0

    .line 5165
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getBlacklistedDevicesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 5167
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnableMusicHotworder()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5168
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getEnableMusicHotworder()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 5171
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnablePreemptiveDetection()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5172
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getEnablePreemptiveDetection()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 5175
    :cond_5
    iput v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->cachedSize:I

    .line 5176
    return v3
.end method

.method public getStopMusicDetectionOnStartOfSpeech()Z
    .locals 1

    .prologue
    .line 5015
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->stopMusicDetectionOnStartOfSpeech_:Z

    return v0
.end method

.method public hasEnableMusicDetector()Z
    .locals 1

    .prologue
    .line 4982
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnableMusicDetector:Z

    return v0
.end method

.method public hasEnableMusicHotworder()Z
    .locals 1

    .prologue
    .line 5066
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnableMusicHotworder:Z

    return v0
.end method

.method public hasEnablePreemptiveDetection()Z
    .locals 1

    .prologue
    .line 5083
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnablePreemptiveDetection:Z

    return v0
.end method

.method public hasMusicDetectorThreshold()Z
    .locals 1

    .prologue
    .line 4999
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasMusicDetectorThreshold:Z

    return v0
.end method

.method public hasStopMusicDetectionOnStartOfSpeech()Z
    .locals 1

    .prologue
    .line 5016
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasStopMusicDetectionOnStartOfSpeech:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5107
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
    .line 4972
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5185
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5189
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5190
    :sswitch_0
    return-object p0

    .line 5195
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->setEnableMusicDetector(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    goto :goto_0

    .line 5199
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->setMusicDetectorThreshold(F)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    goto :goto_0

    .line 5203
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->setStopMusicDetectionOnStartOfSpeech(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    goto :goto_0

    .line 5207
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->addBlacklistedDevices(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    goto :goto_0

    .line 5211
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->setEnableMusicHotworder(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    goto :goto_0

    .line 5215
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->setEnablePreemptiveDetection(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    goto :goto_0

    .line 5185
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setBlacklistedDevices(ILjava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5040
    if-nez p2, :cond_0

    .line 5041
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5043
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->blacklistedDevices_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5044
    return-object p0
.end method

.method public setEnableMusicDetector(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 4984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnableMusicDetector:Z

    .line 4985
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicDetector_:Z

    .line 4986
    return-object p0
.end method

.method public setEnableMusicHotworder(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 5068
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnableMusicHotworder:Z

    .line 5069
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enableMusicHotworder_:Z

    .line 5070
    return-object p0
.end method

.method public setEnablePreemptiveDetection(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 5085
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnablePreemptiveDetection:Z

    .line 5086
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->enablePreemptiveDetection_:Z

    .line 5087
    return-object p0
.end method

.method public setMusicDetectorThreshold(F)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 5001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasMusicDetectorThreshold:Z

    .line 5002
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->musicDetectorThreshold_:F

    .line 5003
    return-object p0
.end method

.method public setStopMusicDetectionOnStartOfSpeech(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 5018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasStopMusicDetectionOnStartOfSpeech:Z

    .line 5019
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->stopMusicDetectionOnStartOfSpeech_:Z

    .line 5020
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
    .line 5113
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnableMusicDetector()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5114
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getEnableMusicDetector()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5116
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasMusicDetectorThreshold()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5117
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getMusicDetectorThreshold()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 5119
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasStopMusicDetectionOnStartOfSpeech()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5120
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getStopMusicDetectionOnStartOfSpeech()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5122
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getBlacklistedDevicesList()Ljava/util/List;

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

    .line 5123
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 5125
    .end local v0           #element:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnableMusicHotworder()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5126
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getEnableMusicHotworder()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5128
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasEnablePreemptiveDetection()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5129
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getEnablePreemptiveDetection()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5131
    :cond_5
    return-void
.end method
