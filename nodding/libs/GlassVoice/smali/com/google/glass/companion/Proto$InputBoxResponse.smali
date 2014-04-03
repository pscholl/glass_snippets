.class public final Lcom/google/glass/companion/Proto$InputBoxResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputBoxResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxResponse;


# instance fields
.field private cachedSize:I

.field public handlerObject:[B

.field public response:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3300
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$InputBoxResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$InputBoxResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3301
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 3345
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->cachedSize:I

    .line 3301
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3405
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$InputBoxResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3399
    new-instance v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$InputBoxResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3308
    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    .line 3309
    iput-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    .line 3310
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->cachedSize:I

    .line 3311
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3316
    if-ne p1, p0, :cond_1

    .line 3319
    :cond_0
    :goto_0
    return v1

    .line 3317
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$InputBoxResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3318
    check-cast v0, Lcom/google/glass/companion/Proto$InputBoxResponse;

    .line 3319
    .local v0, other:Lcom/google/glass/companion/Proto$InputBoxResponse;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3348
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 3350
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$InputBoxResponse;->getSerializedSize()I

    .line 3352
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3357
    const/4 v0, 0x0

    .line 3358
    .local v0, size:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3359
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3362
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    if-eqz v1, :cond_1

    .line 3363
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 3366
    :cond_1
    iput v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->cachedSize:I

    .line 3367
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 3324
    const/16 v1, 0x11

    .line 3325
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 3326
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 3332
    :cond_0
    return v1

    .line 3325
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 3328
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3329
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 3328
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3375
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3376
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3380
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3381
    :sswitch_0
    return-object p0

    .line 3386
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    goto :goto_0

    .line 3390
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    goto :goto_0

    .line 3376
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 3297
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$InputBoxResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$InputBoxResponse;

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
    .line 3337
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3338
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->response:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3340
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    if-eqz v0, :cond_1

    .line 3341
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$InputBoxResponse;->handlerObject:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 3343
    :cond_1
    return-void
.end method
