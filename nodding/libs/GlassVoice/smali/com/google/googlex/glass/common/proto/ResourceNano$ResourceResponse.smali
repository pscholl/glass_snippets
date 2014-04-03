.class public final Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ResourceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResourceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse$Status;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;


# instance fields
.field private cachedSize:I

.field public data:[B

.field public fingerprint:Ljava/lang/Long;

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 170
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->cachedSize:I

    .line 161
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    .line 178
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    .line 179
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->cachedSize:I

    .line 181
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    if-ne p1, p0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 188
    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    .line 189
    .local v0, other:Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->getSerializedSize()I

    .line 227
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 234
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    if-eqz v1, :cond_1

    .line 238
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 242
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->cachedSize:I

    .line 246
    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 195
    const/16 v1, 0x11

    .line 196
    .local v1, result:I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    add-int/lit16 v1, v2, 0x20f

    .line 197
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 203
    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 204
    return v1

    .line 199
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 200
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v2, 0x20

    ushr-long/2addr v6, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 255
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 259
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    :sswitch_0
    return-object p0

    .line 265
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 266
    .local v1, temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    goto :goto_0

    .line 270
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    goto :goto_0

    .line 274
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    goto :goto_0

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
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
    .line 157
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 210
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->status:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    if-eqz v0, :cond_1

    .line 213
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->data:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 216
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;->fingerprint:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 218
    :cond_2
    return-void
.end method
