.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndpointerEvent"
.end annotation


# static fields
.field public static final EVENT_TYPE_END_OF_AUDIO:I = 0x2

.field public static final EVENT_TYPE_END_OF_SPEECH:I = 0x1

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x1

.field public static final EVENT_TYPE_START_OF_SPEECH:I = 0x0

.field public static final TIME_USEC_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private eventType_:I

.field private hasEventType:Z

.field private hasTimeUsec:Z

.field private timeUsec_:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 795
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->eventType_:I

    .line 812
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->timeUsec_:J

    .line 848
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->cachedSize:I

    .line 785
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 908
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 902
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->clearEventType()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 828
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->clearTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 829
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->cachedSize:I

    .line 830
    return-object p0
.end method

.method public clearEventType()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 804
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasEventType:Z

    .line 805
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->eventType_:I

    .line 806
    return-object p0
.end method

.method public clearTimeUsec()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 2

    .prologue
    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasTimeUsec:Z

    .line 822
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->timeUsec_:J

    .line 823
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 851
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getSerializedSize()I

    .line 855
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->cachedSize:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->eventType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasEventType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getEventType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 865
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasTimeUsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 869
    :cond_1
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->cachedSize:I

    .line 870
    return v0
.end method

.method public getTimeUsec()J
    .locals 2

    .prologue
    .line 813
    iget-wide v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->timeUsec_:J

    return-wide v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasEventType:Z

    return v0
.end method

.method public hasTimeUsec()Z
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasTimeUsec:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 834
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
    .line 782
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 879
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 883
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 884
    :sswitch_0
    return-object p0

    .line 889
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->setEventType(I)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    goto :goto_0

    .line 893
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->setTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    goto :goto_0

    .line 879
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setEventType(I)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasEventType:Z

    .line 800
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->eventType_:I

    .line 801
    return-object p0
.end method

.method public setTimeUsec(J)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasTimeUsec:Z

    .line 817
    iput-wide p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->timeUsec_:J

    .line 818
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getEventType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasTimeUsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 846
    :cond_1
    return-void
.end method
