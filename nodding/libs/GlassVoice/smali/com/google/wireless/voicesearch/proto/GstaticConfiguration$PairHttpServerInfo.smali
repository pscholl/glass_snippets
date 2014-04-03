.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairHttpServerInfo"
.end annotation


# static fields
.field public static final DOWN_FIELD_NUMBER:I = 0x1

.field public static final UP_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private down_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

.field private hasDown:Z

.field private hasUp:Z

.field private up_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2108
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2113
    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->down_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2133
    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->up_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2172
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->cachedSize:I

    .line 2108
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2236
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2230
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1

    .prologue
    .line 2151
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->clearDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 2152
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->clearUp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    .line 2153
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->cachedSize:I

    .line 2154
    return-object p0
.end method

.method public clearDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1

    .prologue
    .line 2125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->hasDown:Z

    .line 2126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->down_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2127
    return-object p0
.end method

.method public clearUp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1

    .prologue
    .line 2145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->hasUp:Z

    .line 2146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->up_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2147
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2175
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2177
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getSerializedSize()I

    .line 2179
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->cachedSize:I

    return v0
.end method

.method public getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->down_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2184
    const/4 v0, 0x0

    .line 2185
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->hasDown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2186
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2189
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->hasUp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2190
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getUp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2193
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->cachedSize:I

    .line 2194
    return v0
.end method

.method public getUp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .locals 1

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->up_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    return-object v0
.end method

.method public hasDown()Z
    .locals 1

    .prologue
    .line 2114
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->hasDown:Z

    return v0
.end method

.method public hasUp()Z
    .locals 1

    .prologue
    .line 2134
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->hasUp:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2158
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
    .line 2105
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2202
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2203
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2207
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2208
    :sswitch_0
    return-object p0

    .line 2213
    :sswitch_1
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    .line 2214
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2215
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->setDown(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    goto :goto_0

    .line 2219
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    :sswitch_2
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;-><init>()V

    .line 2220
    .restart local v1       #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2221
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->setUp(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    goto :goto_0

    .line 2203
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setDown(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2117
    if-nez p1, :cond_0

    .line 2118
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2120
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->hasDown:Z

    .line 2121
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->down_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2122
    return-object p0
.end method

.method public setUp(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2137
    if-nez p1, :cond_0

    .line 2138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2140
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->hasUp:Z

    .line 2141
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->up_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    .line 2142
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
    .line 2164
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->hasDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2165
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getDown()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2167
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->hasUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2168
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;->getUp()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2170
    :cond_1
    return-void
.end method
