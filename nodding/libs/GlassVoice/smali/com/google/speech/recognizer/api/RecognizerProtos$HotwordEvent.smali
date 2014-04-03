.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotwordEvent"
.end annotation


# static fields
.field public static final EVENT_TYPE_END_OF_HOTWORD:I = 0x1

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x1

.field public static final EVENT_TYPE_START_OF_HOTWORD:I = 0x0

.field public static final TIME_USEC_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private eventType_:I

.field private hasEventType:Z

.field private hasTimeUsec:Z

.field private timeUsec_:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1148
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->eventType_:I

    .line 1165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->timeUsec_:J

    .line 1201
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->cachedSize:I

    .line 1139
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1255
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 1

    .prologue
    .line 1180
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->clearEventType()Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    .line 1181
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->clearTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    .line 1182
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->cachedSize:I

    .line 1183
    return-object p0
.end method

.method public clearEventType()Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1157
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->hasEventType:Z

    .line 1158
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->eventType_:I

    .line 1159
    return-object p0
.end method

.method public clearTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 2

    .prologue
    .line 1174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->hasTimeUsec:Z

    .line 1175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->timeUsec_:J

    .line 1176
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1204
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->getSerializedSize()I

    .line 1208
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->cachedSize:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 1150
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->eventType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1213
    const/4 v0, 0x0

    .line 1214
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->hasEventType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->getEventType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->hasTimeUsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1219
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->getTimeUsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1222
    :cond_1
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->cachedSize:I

    .line 1223
    return v0
.end method

.method public getTimeUsec()J
    .locals 2

    .prologue
    .line 1166
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->timeUsec_:J

    return-wide v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->hasEventType:Z

    return v0
.end method

.method public hasTimeUsec()Z
    .locals 1

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->hasTimeUsec:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1187
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
    .line 1136
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1231
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1232
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1236
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1237
    :sswitch_0
    return-object p0

    .line 1242
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->setEventType(I)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    goto :goto_0

    .line 1246
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->setTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;

    goto :goto_0

    .line 1232
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method public setEventType(I)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->hasEventType:Z

    .line 1153
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->eventType_:I

    .line 1154
    return-object p0
.end method

.method public setTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->hasTimeUsec:Z

    .line 1170
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->timeUsec_:J

    .line 1171
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
    .line 1193
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->getEventType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1196
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->hasTimeUsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;->getTimeUsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1199
    :cond_1
    return-void
.end method
