.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateCorrectionData"
.end annotation


# static fields
.field public static final ALTERNATE_UNIT_UTF8_BYTES:I = 0x1

.field public static final ALTERNATE_UNIT_WORD:I = 0x0

.field public static final LENGTH_FIELD_NUMBER:I = 0x4

.field public static final NEW_TEXT_FIELD_NUMBER:I = 0x6

.field public static final OLD_TEXT_FIELD_NUMBER:I = 0x5

.field public static final RECOGNIZER_SEGMENT_INDEX_FIELD_NUMBER:I = 0x1

.field public static final START_FIELD_NUMBER:I = 0x3

.field public static final UNIT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLength:Z

.field private hasNewText:Z

.field private hasOldText:Z

.field private hasRecognizerSegmentIndex:Z

.field private hasStart:Z

.field private hasUnit:Z

.field private length_:I

.field private newText_:Ljava/lang/String;

.field private oldText_:Ljava/lang/String;

.field private recognizerSegmentIndex_:I

.field private start_:I

.field private unit_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2057
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2066
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    .line 2083
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    .line 2100
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    .line 2117
    iput v1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    .line 2134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    .line 2151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    .line 2203
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    .line 2057
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2295
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2289
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearRecognizerSegmentIndex()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2167
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearUnit()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2168
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearStart()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2169
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearLength()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2170
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearOldText()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2171
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->clearNewText()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    .line 2172
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    .line 2173
    return-object p0
.end method

.method public clearLength()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2126
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasLength:Z

    .line 2127
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    .line 2128
    return-object p0
.end method

.method public clearNewText()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 2160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasNewText:Z

    .line 2161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    .line 2162
    return-object p0
.end method

.method public clearOldText()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 2143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasOldText:Z

    .line 2144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    .line 2145
    return-object p0
.end method

.method public clearRecognizerSegmentIndex()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2075
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasRecognizerSegmentIndex:Z

    .line 2076
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    .line 2077
    return-object p0
.end method

.method public clearStart()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2109
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasStart:Z

    .line 2110
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    .line 2111
    return-object p0
.end method

.method public clearUnit()Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1

    .prologue
    .line 2092
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasUnit:Z

    .line 2093
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    .line 2094
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2206
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    if-gez v0, :cond_0

    .line 2208
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getSerializedSize()I

    .line 2210
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 2118
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    return v0
.end method

.method public getNewText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    return-object v0
.end method

.method public getOldText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizerSegmentIndex()I
    .locals 1

    .prologue
    .line 2067
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2215
    const/4 v0, 0x0

    .line 2216
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasRecognizerSegmentIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2217
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getRecognizerSegmentIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2220
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasUnit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2221
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getUnit()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2224
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2225
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getStart()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2228
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasLength()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2229
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2232
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasOldText()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2233
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getOldText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2236
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasNewText()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2237
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getNewText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2240
    :cond_5
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->cachedSize:I

    .line 2241
    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 2101
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 2084
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 2119
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasLength:Z

    return v0
.end method

.method public hasNewText()Z
    .locals 1

    .prologue
    .line 2153
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasNewText:Z

    return v0
.end method

.method public hasOldText()Z
    .locals 1

    .prologue
    .line 2136
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasOldText:Z

    return v0
.end method

.method public hasRecognizerSegmentIndex()Z
    .locals 1

    .prologue
    .line 2068
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasRecognizerSegmentIndex:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 2102
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasStart:Z

    return v0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 2085
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasUnit:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2177
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
    .line 2054
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2249
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2250
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2254
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2255
    :sswitch_0
    return-object p0

    .line 2260
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setRecognizerSegmentIndex(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2264
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setUnit(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2268
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setStart(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2272
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setLength(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2276
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setOldText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2280
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->setNewText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;

    goto :goto_0

    .line 2250
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setLength(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasLength:Z

    .line 2122
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->length_:I

    .line 2123
    return-object p0
.end method

.method public setNewText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasNewText:Z

    .line 2156
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->newText_:Ljava/lang/String;

    .line 2157
    return-object p0
.end method

.method public setOldText(Ljava/lang/String;)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasOldText:Z

    .line 2139
    iput-object p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->oldText_:Ljava/lang/String;

    .line 2140
    return-object p0
.end method

.method public setRecognizerSegmentIndex(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasRecognizerSegmentIndex:Z

    .line 2071
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->recognizerSegmentIndex_:I

    .line 2072
    return-object p0
.end method

.method public setStart(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasStart:Z

    .line 2105
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->start_:I

    .line 2106
    return-object p0
.end method

.method public setUnit(I)Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;
    .locals 1
    .parameter "value"

    .prologue
    .line 2087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasUnit:Z

    .line 2088
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->unit_:I

    .line 2089
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
    .line 2183
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasRecognizerSegmentIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2184
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getRecognizerSegmentIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2186
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasUnit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2187
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getUnit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2189
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2190
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2192
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasLength()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2193
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2195
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasOldText()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2196
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getOldText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2198
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->hasNewText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2199
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$AlternateCorrectionData;->getNewText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2201
    :cond_5
    return-void
.end method
