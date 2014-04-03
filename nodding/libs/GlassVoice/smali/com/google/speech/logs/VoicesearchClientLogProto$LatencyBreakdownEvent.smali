.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatencyBreakdownEvent"
.end annotation


# static fields
.field public static final EVENT_FIELD_NUMBER:I = 0x1

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_CREATE_END:I = 0x13

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_CREATE_START:I = 0x12

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESTART_START:I = 0x1b

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESUME_END:I = 0x18

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_RESUME_START:I = 0x17

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_START_END:I = 0x16

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_ACTIVITY_ON_START_START:I = 0x15

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_APPLICATION_ON_CREATE_END:I = 0x11

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_APPLICATION_ON_CREATE_START:I = 0x10

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_SEARCH_PLATE_ON_DRAW_START:I = 0x14

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_STARTUP_UI_THREAD_IDLE:I = 0x20

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_INITIALIZE_DELAYED_END:I = 0x1c

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_INITIALIZE_DELAYED_START:I = 0x28

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_UPDATE_MODE_END:I = 0x1a

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_VELVET_PRESENTER_UPDATE_MODE_START:I = 0x19

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_CARD:I = 0x27

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_WEBVIEW:I = 0xe

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_FRAGMENT_SHOW_WEBVIEW_COMPLETE:I = 0xf

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_HIDER_CALLBACK:I = 0xd

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_HIDER_CALLED_JS:I = 0xc

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_COMMIT:I = 0x4

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_END_JESR:I = 0xa

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_END_NONJESR:I = 0xb

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_LOGIN_COMPLETE:I = 0x5

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_REQUEST_JESR:I = 0x6

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_REQUEST_NONJESR:I = 0x7

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_START_JESR:I = 0x8

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_JESRCTRL_START_NONJESR:I = 0x9

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_CANCEL:I = 0x1f

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_END:I = 0x1e

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_PREFETCH_START:I = 0x1d

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_COMMIT_WEB:I = 0x1

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_COMMIT_WEB_SINGLE_REQUEST:I = 0x23

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_CONNECTION_ERROR_FAILED:I = 0x29

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_CONNECTION_ERROR_TIMEOUT:I = 0x2a

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_CORPORA_LOAD:I = 0x3

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_HANDLE_ACTION:I = 0x26

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_END:I = 0x22

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_PUMPKIN_PARSE_START:I = 0x21

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_RECEIVED_ANSWER_RESPONSE:I = 0x2

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_RECOGNIZE:I = 0x0

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_SELECT_ACTION:I = 0x25

.field public static final LATENCY_BREAKDOWN_EVENT_TYPE_WEBSEARCH_QUERYSTATE_SWITCH_QUERY:I = 0x24

.field public static final OFFSET_MSEC_FIELD_NUMBER:I = 0x2

.field public static final SUBLATENCY_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private event_:I

.field private hasEvent:Z

.field private hasOffsetMsec:Z

.field private hasSublatency:Z

.field private offsetMsec_:I

.field private sublatency_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1857
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1907
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    .line 1924
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    .line 1941
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    .line 1981
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    .line 1857
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2049
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2043
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    .line 1956
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->clearEvent()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 1957
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->clearOffsetMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 1958
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->clearSublatency()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    .line 1959
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    .line 1960
    return-object p0
.end method

.method public clearEvent()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1916
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasEvent:Z

    .line 1917
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    .line 1918
    return-object p0
.end method

.method public clearOffsetMsec()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1933
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasOffsetMsec:Z

    .line 1934
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    .line 1935
    return-object p0
.end method

.method public clearSublatency()Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1950
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasSublatency:Z

    .line 1951
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    .line 1952
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1984
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 1986
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getSerializedSize()I

    .line 1988
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    return v0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    .line 1908
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    return v0
.end method

.method public getOffsetMsec()I
    .locals 1

    .prologue
    .line 1925
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1993
    const/4 v0, 0x0

    .line 1994
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1995
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getEvent()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1998
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasOffsetMsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1999
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getOffsetMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2002
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasSublatency()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2003
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getSublatency()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2006
    :cond_2
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->cachedSize:I

    .line 2007
    return v0
.end method

.method public getSublatency()I
    .locals 1

    .prologue
    .line 1942
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    return v0
.end method

.method public hasEvent()Z
    .locals 1

    .prologue
    .line 1909
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasEvent:Z

    return v0
.end method

.method public hasOffsetMsec()Z
    .locals 1

    .prologue
    .line 1926
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasOffsetMsec:Z

    return v0
.end method

.method public hasSublatency()Z
    .locals 1

    .prologue
    .line 1943
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasSublatency:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1964
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
    .line 1854
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2015
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2016
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2020
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2021
    :sswitch_0
    return-object p0

    .line 2026
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->setEvent(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    goto :goto_0

    .line 2030
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->setOffsetMsec(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    goto :goto_0

    .line 2034
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->setSublatency(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;

    goto :goto_0

    .line 2016
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setEvent(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1911
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasEvent:Z

    .line 1912
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->event_:I

    .line 1913
    return-object p0
.end method

.method public setOffsetMsec(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasOffsetMsec:Z

    .line 1929
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->offsetMsec_:I

    .line 1930
    return-object p0
.end method

.method public setSublatency(I)Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 1945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasSublatency:Z

    .line 1946
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->sublatency_:I

    .line 1947
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
    .line 1970
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getEvent()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1973
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasOffsetMsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1974
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getOffsetMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1976
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->hasSublatency()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1977
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$LatencyBreakdownEvent;->getSublatency()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1979
    :cond_2
    return-void
.end method
