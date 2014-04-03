.class public final Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "DeviceCheckinNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/DeviceCheckinNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceCheckinResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;


# instance fields
.field private cachedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->cachedSize:I

    .line 153
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;
    .locals 1

    .prologue
    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->cachedSize:I

    .line 157
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->getSerializedSize()I

    .line 171
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, size:I
    iput v0, p0, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->cachedSize:I

    .line 178
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 187
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 191
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    :pswitch_0
    return-object p0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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
    .line 149
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 162
    return-void
.end method
