.class public final Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerEvent"
.end annotation


# static fields
.field public static final ENDPOINTER_EVENT_FIELD_NUMBER:I = 0x2

.field public static final RECOGNITION_EVENT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private endpointerEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

.field private hasEndpointerEvent:Z

.field private hasRecognitionEvent:Z

.field private recognitionEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 775
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 780
    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 800
    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 842
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    .line 775
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 900
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->clearRecognitionEvent()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 819
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->clearEndpointerEvent()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 820
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    .line 821
    return-object p0
.end method

.method public clearEndpointerEvent()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasEndpointerEvent:Z

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 814
    return-object p0
.end method

.method public clearRecognitionEvent()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent:Z

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 794
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getSerializedSize()I

    .line 849
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    return v0
.end method

.method public getEndpointerEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    return-object v0
.end method

.method public getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 854
    const/4 v0, 0x0

    .line 855
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasEndpointerEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getEndpointerEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 863
    :cond_1
    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    .line 864
    return v0
.end method

.method public hasEndpointerEvent()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasEndpointerEvent:Z

    return v0
.end method

.method public hasRecognitionEvent()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .line 772
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 873
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 877
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 878
    :sswitch_0
    return-object p0

    .line 883
    :sswitch_1
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    .line 884
    .local v1, value:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 885
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->setRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    goto :goto_0

    .line 889
    .end local v1           #value:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    :sswitch_2
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;-><init>()V

    .line 890
    .local v1, value:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 891
    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->setEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    goto :goto_0

    .line 873
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 804
    if-nez p1, :cond_0

    .line 805
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 807
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasEndpointerEvent:Z

    .line 808
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 809
    return-object p0
.end method

.method public setRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 784
    if-nez p1, :cond_0

    .line 785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 787
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent:Z

    .line 788
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent_:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 789
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
    .line 834
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasRecognitionEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getRecognitionEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 837
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->hasEndpointerEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->getEndpointerEvent()Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 840
    :cond_1
    return-void
.end method
