.class public final Lcom/google/glass/companion/Proto$GlassInfoRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassInfoRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoRequest;


# instance fields
.field private cachedSize:I

.field public requestBatteryLevel:Ljava/lang/Boolean;

.field public requestDeviceName:Ljava/lang/Boolean;

.field public requestStorageInfo:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2120
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassInfoRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassInfoRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2121
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2168
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->cachedSize:I

    .line 2121
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2236
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2230
    new-instance v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2130
    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    .line 2131
    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    .line 2132
    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    .line 2133
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->cachedSize:I

    .line 2134
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2139
    if-ne p1, p0, :cond_1

    .line 2142
    :cond_0
    :goto_0
    return v1

    .line 2140
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2141
    check-cast v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;

    .line 2142
    .local v0, other:Lcom/google/glass/companion/Proto$GlassInfoRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2171
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 2173
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->getSerializedSize()I

    .line 2175
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2180
    const/4 v0, 0x0

    .line 2181
    .local v0, size:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2182
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2185
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 2186
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2189
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 2190
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2193
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->cachedSize:I

    .line 2194
    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2148
    const/16 v0, 0x11

    .line 2149
    .local v0, result:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 2150
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v5, v1

    .line 2151
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    if-nez v5, :cond_4

    :goto_2
    add-int v0, v1, v2

    .line 2152
    return v0

    .line 2149
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_0

    .line 2150
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_1

    .line 2151
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;
    .locals 2
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2203
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2207
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2208
    :sswitch_0
    return-object p0

    .line 2213
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    goto :goto_0

    .line 2217
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    goto :goto_0

    .line 2221
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    goto :goto_0

    .line 2203
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassInfoRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2158
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestBatteryLevel:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2160
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 2161
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestStorageInfo:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2163
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 2164
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassInfoRequest;->requestDeviceName:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2166
    :cond_2
    return-void
.end method
