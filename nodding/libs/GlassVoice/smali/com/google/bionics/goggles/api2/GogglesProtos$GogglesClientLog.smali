.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesClientLog"
.end annotation


# static fields
.field public static final EVENTS_FIELD_NUMBER:I = 0x2

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private events_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private hasSessionId:Z

.field private sessionId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3100
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->sessionId_:Ljava/lang/String;

    .line 3121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events_:Ljava/util/List;

    .line 3174
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->cachedSize:I

    .line 3100
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3236
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3230
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    return-object v0
.end method


# virtual methods
.method public addEvents(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 3138
    if-nez p1, :cond_0

    .line 3139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3141
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events_:Ljava/util/List;

    .line 3144
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3145
    return-object p0
.end method

.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1

    .prologue
    .line 3153
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->clearSessionId()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    .line 3154
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->clearEvents()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    .line 3155
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->cachedSize:I

    .line 3156
    return-object p0
.end method

.method public clearEvents()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1

    .prologue
    .line 3148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events_:Ljava/util/List;

    .line 3149
    return-object p0
.end method

.method public clearSessionId()Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1

    .prologue
    .line 3114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->hasSessionId:Z

    .line 3115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->sessionId_:Ljava/lang/String;

    .line 3116
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3177
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 3179
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->getSerializedSize()I

    .line 3181
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->cachedSize:I

    return v0
.end method

.method public getEvents(I)Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    .locals 1
    .parameter "index"

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    return-object v0
.end method

.method public getEventsCount()I
    .locals 1

    .prologue
    .line 3126
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3186
    const/4 v2, 0x0

    .line 3187
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->hasSessionId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3188
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3191
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->getEventsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 3192
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3195
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    :cond_1
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->cachedSize:I

    .line 3196
    return v2
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3106
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 3107
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->hasSessionId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3160
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3205
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3209
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3210
    :sswitch_0
    return-object p0

    .line 3215
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->setSessionId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    goto :goto_0

    .line 3219
    :sswitch_2
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;-><init>()V

    .line 3220
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3221
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->addEvents(Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    goto :goto_0

    .line 3205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 3097
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;

    move-result-object v0

    return-object v0
.end method

.method public setEvents(ILcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3131
    if-nez p2, :cond_0

    .line 3132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3134
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->events_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3135
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 3109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->hasSessionId:Z

    .line 3110
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->sessionId_:Ljava/lang/String;

    .line 3111
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
    .line 3166
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->hasSessionId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3167
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3169
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$GogglesClientLog;->getEventsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;

    .line 3170
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 3172
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesProtos$ClientLogEvent;
    :cond_1
    return-void
.end method
