.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserEvent"
.end annotation


# static fields
.field public static final ENTRY_POINT_ENTRY_CORPUS_SELECTOR_TOOLBAR:I = 0xa

.field public static final ENTRY_POINT_ENTRY_DISAMBIG_DISMISSAL:I = 0x4

.field public static final ENTRY_POINT_ENTRY_ERROR_RETRY:I = 0x7

.field public static final ENTRY_POINT_ENTRY_HOMESCREEN:I = 0x8

.field public static final ENTRY_POINT_ENTRY_KEYBOARD:I = 0x9

.field public static final ENTRY_POINT_ENTRY_MENU_ITEM:I = 0x2

.field public static final ENTRY_POINT_ENTRY_OTHER:I = 0x1

.field public static final ENTRY_POINT_ENTRY_PREDICTIVE_CARD:I = 0x5

.field public static final ENTRY_POINT_ENTRY_RESULT_PAGE:I = 0x3

.field public static final ENTRY_POINT_ENTRY_VOICE_ACTION:I = 0x6

.field public static final ENTRY_POINT_FIELD_NUMBER:I = 0x2

.field public static final EVENT_TYPE_EVENT_CLOSED_SEARCH:I = 0x7

.field public static final EVENT_TYPE_EVENT_DISAMBIG_CLICK:I = 0x3

.field public static final EVENT_TYPE_EVENT_FURTHER_RESULT_DETAILS:I = 0x6

.field public static final EVENT_TYPE_EVENT_GO_BACK:I = 0x4

.field public static final EVENT_TYPE_EVENT_REQUEST_RESULTS:I = 0x2

.field public static final EVENT_TYPE_EVENT_START_SEARCH:I = 0x1

.field public static final EVENT_TYPE_EVENT_TEXT_REFINEMENT:I = 0x5

.field public static final RESULT_ID_FIELD_NUMBER:I = 0x4

.field public static final RESULT_SET_NUMBER_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private entryPoint_:I

.field private hasEntryPoint:Z

.field private hasResultId:Z

.field private hasResultSetNumber:Z

.field private hasType:Z

.field private resultId_:Ljava/lang/String;

.field private resultSetNumber_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2159
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2185
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->type_:I

    .line 2202
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->entryPoint_:I

    .line 2219
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultSetNumber_:I

    .line 2236
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultId_:Ljava/lang/String;

    .line 2280
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->cachedSize:I

    .line 2159
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2356
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2350
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1

    .prologue
    .line 2251
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->clearType()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2252
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->clearEntryPoint()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2253
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2254
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->clearResultId()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    .line 2255
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->cachedSize:I

    .line 2256
    return-object p0
.end method

.method public clearEntryPoint()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1

    .prologue
    .line 2211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasEntryPoint:Z

    .line 2212
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->entryPoint_:I

    .line 2213
    return-object p0
.end method

.method public clearResultId()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1

    .prologue
    .line 2245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasResultId:Z

    .line 2246
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultId_:Ljava/lang/String;

    .line 2247
    return-object p0
.end method

.method public clearResultSetNumber()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2228
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasResultSetNumber:Z

    .line 2229
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultSetNumber_:I

    .line 2230
    return-object p0
.end method

.method public clearType()Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1

    .prologue
    .line 2194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasType:Z

    .line 2195
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->type_:I

    .line 2196
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2283
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 2285
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->getSerializedSize()I

    .line 2287
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->cachedSize:I

    return v0
.end method

.method public getEntryPoint()I
    .locals 1

    .prologue
    .line 2204
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->entryPoint_:I

    return v0
.end method

.method public getResultId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultId_:Ljava/lang/String;

    return-object v0
.end method

.method public getResultSetNumber()I
    .locals 1

    .prologue
    .line 2220
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultSetNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2292
    const/4 v0, 0x0

    .line 2293
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2294
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2297
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasEntryPoint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2298
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->getEntryPoint()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2301
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasResultSetNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2302
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->getResultSetNumber()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2305
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasResultId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2306
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->getResultId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2309
    :cond_3
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->cachedSize:I

    .line 2310
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2187
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->type_:I

    return v0
.end method

.method public hasEntryPoint()Z
    .locals 1

    .prologue
    .line 2203
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasEntryPoint:Z

    return v0
.end method

.method public hasResultId()Z
    .locals 1

    .prologue
    .line 2238
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasResultId:Z

    return v0
.end method

.method public hasResultSetNumber()Z
    .locals 1

    .prologue
    .line 2221
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasResultSetNumber:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2186
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2260
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2318
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2319
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2323
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2324
    :sswitch_0
    return-object p0

    .line 2329
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->setType(I)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    goto :goto_0

    .line 2333
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->setEntryPoint(I)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    goto :goto_0

    .line 2337
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    goto :goto_0

    .line 2341
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->setResultId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    goto :goto_0

    .line 2319
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 2156
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;

    move-result-object v0

    return-object v0
.end method

.method public setEntryPoint(I)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasEntryPoint:Z

    .line 2207
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->entryPoint_:I

    .line 2208
    return-object p0
.end method

.method public setResultId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasResultId:Z

    .line 2241
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultId_:Ljava/lang/String;

    .line 2242
    return-object p0
.end method

.method public setResultSetNumber(I)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasResultSetNumber:Z

    .line 2224
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->resultSetNumber_:I

    .line 2225
    return-object p0
.end method

.method public setType(I)Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 2189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasType:Z

    .line 2190
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->type_:I

    .line 2191
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
    .line 2266
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2267
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2269
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasEntryPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2270
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->getEntryPoint()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2272
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasResultSetNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2273
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->getResultSetNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2275
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->hasResultId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2276
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$UserEvent;->getResultId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2278
    :cond_3
    return-void
.end method
