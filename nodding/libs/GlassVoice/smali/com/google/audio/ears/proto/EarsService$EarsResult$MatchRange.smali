.class public final Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService$EarsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatchRange"
.end annotation


# static fields
.field public static final END_MS_FIELD_NUMBER:I = 0x2

.field public static final START_MS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private endMs_:J

.field private hasEndMs:Z

.field private hasStartMs:Z

.field private startMs_:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1144
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1149
    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->startMs_:J

    .line 1166
    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->endMs_:J

    .line 1202
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->cachedSize:I

    .line 1144
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 1

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->clearStartMs()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1182
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->clearEndMs()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    .line 1183
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->cachedSize:I

    .line 1184
    return-object p0
.end method

.method public clearEndMs()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 2

    .prologue
    .line 1175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->hasEndMs:Z

    .line 1176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->endMs_:J

    .line 1177
    return-object p0
.end method

.method public clearStartMs()Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 2

    .prologue
    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->hasStartMs:Z

    .line 1159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->startMs_:J

    .line 1160
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1205
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->cachedSize:I

    if-gez v0, :cond_0

    .line 1207
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->getSerializedSize()I

    .line 1209
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->cachedSize:I

    return v0
.end method

.method public getEndMs()J
    .locals 2

    .prologue
    .line 1167
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->endMs_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1214
    const/4 v0, 0x0

    .line 1215
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->hasStartMs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->getStartMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->hasEndMs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1220
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->getEndMs()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1223
    :cond_1
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->cachedSize:I

    .line 1224
    return v0
.end method

.method public getStartMs()J
    .locals 2

    .prologue
    .line 1150
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->startMs_:J

    return-wide v0
.end method

.method public hasEndMs()Z
    .locals 1

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->hasEndMs:Z

    return v0
.end method

.method public hasStartMs()Z
    .locals 1

    .prologue
    .line 1151
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->hasStartMs:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1188
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1232
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1233
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1237
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1238
    :sswitch_0
    return-object p0

    .line 1243
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->setStartMs(J)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    goto :goto_0

    .line 1247
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->setEndMs(J)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    goto :goto_0

    .line 1233
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
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
    .line 1141
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1262
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1256
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;

    return-object v0
.end method

.method public setEndMs(J)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 1
    .parameter "value"

    .prologue
    .line 1170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->hasEndMs:Z

    .line 1171
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->endMs_:J

    .line 1172
    return-object p0
.end method

.method public setStartMs(J)Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;
    .locals 1
    .parameter "value"

    .prologue
    .line 1153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->hasStartMs:Z

    .line 1154
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->startMs_:J

    .line 1155
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
    .line 1194
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->hasStartMs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->getStartMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1197
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->hasEndMs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$EarsResult$MatchRange;->getEndMs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1200
    :cond_1
    return-void
.end method
