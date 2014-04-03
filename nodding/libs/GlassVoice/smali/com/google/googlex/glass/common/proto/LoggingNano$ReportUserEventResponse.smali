.class public final Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "LoggingNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LoggingNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportUserEventResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;


# instance fields
.field private cachedSize:I

.field public responseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 416
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode:I

    .line 445
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->cachedSize:I

    .line 407
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1

    .prologue
    .line 419
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode:I

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->cachedSize:I

    .line 421
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 426
    if-ne p1, p0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v1

    .line 427
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 428
    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    .line 429
    .local v0, other:Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->getSerializedSize()I

    .line 452
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 459
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 462
    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->cachedSize:I

    .line 463
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 433
    const/16 v0, 0x11

    .line 434
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode:I

    add-int/lit16 v0, v1, 0x20f

    .line 435
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 472
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 476
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    :sswitch_0
    return-object p0

    .line 482
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 483
    .local v1, temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode:I

    goto :goto_0

    .line 472
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 403
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

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
    .line 440
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 441
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;->responseCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 443
    :cond_0
    return-void
.end method
