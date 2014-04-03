.class public final Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ImageDownloadNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ImageDownloadNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageDownloadResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse$Status;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;


# instance fields
.field private cachedSize:I

.field public image:[B

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 278
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->cachedSize:I

    .line 268
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    .line 282
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    .line 283
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->cachedSize:I

    .line 284
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    if-ne p1, p0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v1

    .line 290
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 291
    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    .line 292
    .local v0, other:Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->getSerializedSize()I

    .line 325
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    if-eqz v1, :cond_0

    .line 332
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_1

    .line 336
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 339
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->cachedSize:I

    .line 340
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 297
    const/16 v1, 0x11

    .line 298
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 304
    :cond_0
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    add-int v1, v2, v3

    .line 305
    return v1

    .line 300
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 301
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 349
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 353
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    :sswitch_0
    return-object p0

    .line 359
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    goto :goto_0

    .line 363
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 364
    .local v1, temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    goto :goto_0

    .line 349
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
    .line 264
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

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
    .line 310
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->image:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 313
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_1

    .line 314
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->status:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 316
    :cond_1
    return-void
.end method
