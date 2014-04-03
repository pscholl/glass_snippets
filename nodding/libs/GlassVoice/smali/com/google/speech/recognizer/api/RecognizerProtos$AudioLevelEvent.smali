.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioLevelEvent"
.end annotation


# static fields
.field public static final LEVEL_FIELD_NUMBER:I = 0x1

.field public static final TIME_USEC_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLevel:Z

.field private hasTimeUsec:Z

.field private level_:F

.field private timeUsec_:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1018
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->level_:F

    .line 1035
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->timeUsec_:J

    .line 1071
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->cachedSize:I

    .line 1013
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1125
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 1

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->clearLevel()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    .line 1051
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->clearTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    .line 1052
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->cachedSize:I

    .line 1053
    return-object p0
.end method

.method public clearLevel()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 1

    .prologue
    .line 1027
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->hasLevel:Z

    .line 1028
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->level_:F

    .line 1029
    return-object p0
.end method

.method public clearTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 2

    .prologue
    .line 1044
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->hasTimeUsec:Z

    .line 1045
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->timeUsec_:J

    .line 1046
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1074
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->getSerializedSize()I

    .line 1078
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->cachedSize:I

    return v0
.end method

.method public getLevel()F
    .locals 1

    .prologue
    .line 1019
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->level_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->hasLevel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->getLevel()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1088
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->hasTimeUsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1089
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->getTimeUsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1092
    :cond_1
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->cachedSize:I

    .line 1093
    return v0
.end method

.method public getTimeUsec()J
    .locals 2

    .prologue
    .line 1036
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->timeUsec_:J

    return-wide v0
.end method

.method public hasLevel()Z
    .locals 1

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->hasLevel:Z

    return v0
.end method

.method public hasTimeUsec()Z
    .locals 1

    .prologue
    .line 1037
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->hasTimeUsec:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1057
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
    .line 1010
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1102
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1106
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1107
    :sswitch_0
    return-object p0

    .line 1112
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->setLevel(F)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    goto :goto_0

    .line 1116
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->setTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    goto :goto_0

    .line 1102
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLevel(F)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->hasLevel:Z

    .line 1023
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->level_:F

    .line 1024
    return-object p0
.end method

.method public setTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->hasTimeUsec:Z

    .line 1040
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->timeUsec_:J

    .line 1041
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
    .line 1063
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->hasLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->getLevel()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 1066
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->hasTimeUsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->getTimeUsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1069
    :cond_1
    return-void
.end method
