.class public final Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchHeader"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;


# instance fields
.field public authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

.field private cachedSize:I

.field public dispatcherId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 128
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->cachedSize:I

    .line 125
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->cachedSize:I

    .line 136
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    if-ne p1, p0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 143
    check-cast v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    .line 144
    .local v0, other:Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->cachedSize:I

    if-gez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->getSerializedSize()I

    .line 179
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 184
    const/4 v4, 0x0

    .line 185
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-eqz v5, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 187
    .local v1, element:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 192
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 195
    :cond_1
    iput v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->cachedSize:I

    .line 196
    return v4
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 149
    const/16 v1, 0x11

    .line 150
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 156
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    if-nez v4, :cond_3

    :goto_0
    add-int v1, v2, v3

    .line 157
    return v1

    .line 152
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 153
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->hashCode()I

    move-result v2

    goto :goto_2

    .line 156
    .end local v0           #i:I
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 205
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 209
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 210
    :sswitch_0
    return-object p0

    .line 215
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 216
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-nez v5, :cond_2

    move v1, v4

    .line 217
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 218
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-eqz v5, :cond_1

    .line 219
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .line 222
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 223
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;-><init>()V

    aput-object v6, v5, v1

    .line 224
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 225
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 216
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    array-length v1, v5

    goto :goto_1

    .line 228
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    new-instance v6, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;-><init>()V

    aput-object v6, v5, v1

    .line 229
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 233
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 121
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    if-eqz v4, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->authToken:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 164
    .local v1, element:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 168
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/BatchNano$BatchHeader;->dispatcherId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 170
    :cond_1
    return-void
.end method
