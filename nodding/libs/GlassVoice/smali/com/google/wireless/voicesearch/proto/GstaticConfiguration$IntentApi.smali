.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentApi"
.end annotation


# static fields
.field public static final ENDPOINTER_PARAMS_FIELD_NUMBER:I = 0x2

.field public static final MAX_NBEST_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field private hasEndpointerParams:Z

.field private hasMaxNbest:Z

.field private maxNbest_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2586
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2591
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->maxNbest_:I

    .line 2608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2647
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->cachedSize:I

    .line 2586
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2709
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2703
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1

    .prologue
    .line 2626
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->clearMaxNbest()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    .line 2627
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->clearEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    .line 2628
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->cachedSize:I

    .line 2629
    return-object p0
.end method

.method public clearEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1

    .prologue
    .line 2620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->hasEndpointerParams:Z

    .line 2621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2622
    return-object p0
.end method

.method public clearMaxNbest()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1

    .prologue
    .line 2600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->hasMaxNbest:Z

    .line 2601
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->maxNbest_:I

    .line 2602
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2650
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->cachedSize:I

    if-gez v0, :cond_0

    .line 2652
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->getSerializedSize()I

    .line 2654
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->cachedSize:I

    return v0
.end method

.method public getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    return-object v0
.end method

.method public getMaxNbest()I
    .locals 1

    .prologue
    .line 2592
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->maxNbest_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2659
    const/4 v0, 0x0

    .line 2660
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->hasMaxNbest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2661
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->getMaxNbest()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2664
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->hasEndpointerParams()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2665
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2668
    :cond_1
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->cachedSize:I

    .line 2669
    return v0
.end method

.method public hasEndpointerParams()Z
    .locals 1

    .prologue
    .line 2609
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->hasEndpointerParams:Z

    return v0
.end method

.method public hasMaxNbest()Z
    .locals 1

    .prologue
    .line 2593
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->hasMaxNbest:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2633
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
    .line 2583
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2677
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2678
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2682
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2683
    :sswitch_0
    return-object p0

    .line 2688
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->setMaxNbest(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    goto :goto_0

    .line 2692
    :sswitch_2
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    .line 2693
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2694
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;

    goto :goto_0

    .line 2678
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1
    .parameter "value"

    .prologue
    .line 2612
    if-nez p1, :cond_0

    .line 2613
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2615
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->hasEndpointerParams:Z

    .line 2616
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2617
    return-object p0
.end method

.method public setMaxNbest(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;
    .locals 1
    .parameter "value"

    .prologue
    .line 2595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->hasMaxNbest:Z

    .line 2596
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->maxNbest_:I

    .line 2597
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
    .line 2639
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->hasMaxNbest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2640
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->getMaxNbest()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2642
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->hasEndpointerParams()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2643
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$IntentApi;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2645
    :cond_1
    return-void
.end method
