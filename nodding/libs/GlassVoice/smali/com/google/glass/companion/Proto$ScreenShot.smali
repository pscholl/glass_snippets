.class public final Lcom/google/glass/companion/Proto$ScreenShot;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenShot"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ScreenShot;


# instance fields
.field private cachedSize:I

.field public screenshotBytesG2C:[B

.field public startScreenshotRequestC2G:Ljava/lang/Boolean;

.field public stopScreenshotRequestC2G:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2480
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$ScreenShot;

    sput-object v0, Lcom/google/glass/companion/Proto$ScreenShot;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ScreenShot;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2481
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2533
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->cachedSize:I

    .line 2481
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2601
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ScreenShot;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2595
    new-instance v0, Lcom/google/glass/companion/Proto$ScreenShot;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ScreenShot;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2490
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    .line 2491
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    .line 2492
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C:[B

    .line 2493
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->cachedSize:I

    .line 2494
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2499
    if-ne p1, p0, :cond_1

    .line 2502
    :cond_0
    :goto_0
    return v1

    .line 2500
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$ScreenShot;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2501
    check-cast v0, Lcom/google/glass/companion/Proto$ScreenShot;

    .line 2502
    .local v0, other:Lcom/google/glass/companion/Proto$ScreenShot;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C:[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2536
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->cachedSize:I

    if-gez v0, :cond_0

    .line 2538
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ScreenShot;->getSerializedSize()I

    .line 2540
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2545
    const/4 v0, 0x0

    .line 2546
    .local v0, size:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2547
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2550
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 2551
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2554
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C:[B

    if-eqz v1, :cond_2

    .line 2555
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2558
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->cachedSize:I

    .line 2559
    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2508
    const/16 v1, 0x11

    .line 2509
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 2510
    mul-int/lit8 v2, v1, 0x1f

    iget-object v6, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    if-nez v6, :cond_3

    :goto_1
    add-int v1, v2, v3

    .line 2511
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C:[B

    if-nez v2, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 2517
    :cond_0
    return v1

    .line 2509
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_0

    .line 2510
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_1

    .line 2513
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2514
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 2513
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2567
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2568
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2572
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2573
    :sswitch_0
    return-object p0

    .line 2578
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    goto :goto_0

    .line 2582
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    goto :goto_0

    .line 2586
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C:[B

    goto :goto_0

    .line 2568
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 2477
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ScreenShot;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ScreenShot;

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
    .line 2522
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2523
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->startScreenshotRequestC2G:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2525
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 2526
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->stopScreenshotRequestC2G:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2528
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C:[B

    if-eqz v0, :cond_2

    .line 2529
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ScreenShot;->screenshotBytesG2C:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 2531
    :cond_2
    return-void
.end method
