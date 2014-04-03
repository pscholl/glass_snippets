.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioEvent"
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private data_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 921
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 953
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->cachedSize:I

    .line 916
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1005
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 999
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->clearData()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    .line 937
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->cachedSize:I

    .line 938
    return-object p0
.end method

.method public clearData()Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->hasData:Z

    .line 931
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 932
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->cachedSize:I

    if-gez v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->getSerializedSize()I

    .line 960
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->cachedSize:I

    return v0
.end method

.method public getData()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 965
    const/4 v0, 0x0

    .line 966
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 970
    :cond_0
    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->cachedSize:I

    .line 971
    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->hasData:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 942
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
    .line 913
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 980
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 984
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    :sswitch_0
    return-object p0

    .line 990
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->setData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;

    goto :goto_0

    .line 980
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;
    .locals 1
    .parameter "value"

    .prologue
    .line 925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->hasData:Z

    .line 926
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 927
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
    .line 948
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 951
    :cond_0
    return-void
.end method
