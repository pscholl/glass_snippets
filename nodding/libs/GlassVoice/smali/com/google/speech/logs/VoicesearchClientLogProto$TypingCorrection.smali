.class public final Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VoicesearchClientLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/VoicesearchClientLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypingCorrection"
.end annotation


# static fields
.field public static final RECOGNIZER_SEGMENT_INDEX_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasRecognizerSegmentIndex:Z

.field private recognizerSegmentIndex_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2463
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2468
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    .line 2500
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    .line 2463
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2552
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2546
    new-instance v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    invoke-direct {v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    check-cast v0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1

    .prologue
    .line 2483
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->clearRecognizerSegmentIndex()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    .line 2484
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    .line 2485
    return-object p0
.end method

.method public clearRecognizerSegmentIndex()Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2477
    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->hasRecognizerSegmentIndex:Z

    .line 2478
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    .line 2479
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2503
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    if-gez v0, :cond_0

    .line 2505
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->getSerializedSize()I

    .line 2507
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    return v0
.end method

.method public getRecognizerSegmentIndex()I
    .locals 1

    .prologue
    .line 2469
    iget v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2512
    const/4 v0, 0x0

    .line 2513
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->hasRecognizerSegmentIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2514
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->getRecognizerSegmentIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2517
    :cond_0
    iput v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->cachedSize:I

    .line 2518
    return v0
.end method

.method public hasRecognizerSegmentIndex()Z
    .locals 1

    .prologue
    .line 2470
    iget-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->hasRecognizerSegmentIndex:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2489
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
    .line 2460
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2526
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2527
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2531
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2532
    :sswitch_0
    return-object p0

    .line 2537
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->setRecognizerSegmentIndex(I)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;

    goto :goto_0

    .line 2527
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setRecognizerSegmentIndex(I)Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;
    .locals 1
    .parameter "value"

    .prologue
    .line 2472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->hasRecognizerSegmentIndex:Z

    .line 2473
    iput p1, p0, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->recognizerSegmentIndex_:I

    .line 2474
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
    .line 2495
    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->hasRecognizerSegmentIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2496
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/VoicesearchClientLogProto$TypingCorrection;->getRecognizerSegmentIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2498
    :cond_0
    return-void
.end method
