.class public final Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "NativeRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/NativeRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeRecognitionResult"
.end annotation


# static fields
.field public static final RECOGNIZER_INFO_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasRecognizerInfo:Z

.field private hasStatus:Z

.field private recognizerInfo_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->status_:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    check-cast v0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->clearStatus()Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    .line 51
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->clearRecognizerInfo()Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->cachedSize:I

    .line 53
    return-object p0
.end method

.method public clearRecognizerInfo()Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->hasRecognizerInfo:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 46
    return-object p0
.end method

.method public clearStatus()Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->hasStatus:Z

    .line 25
    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->status_:I

    .line 26
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->getSerializedSize()I

    .line 78
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->cachedSize:I

    return v0
.end method

.method public getRecognizerInfo()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->hasRecognizerInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->getRecognizerInfo()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_1
    iput v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->cachedSize:I

    .line 93
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->status_:I

    return v0
.end method

.method public hasRecognizerInfo()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->hasRecognizerInfo:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->hasStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 57
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 102
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    :sswitch_0
    return-object p0

    .line 112
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->setStatus(I)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    goto :goto_0

    .line 116
    :sswitch_2
    new-instance v1, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    invoke-direct {v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;-><init>()V

    .line 117
    .local v1, value:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->setRecognizerInfo(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    goto :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setRecognizerInfo(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->hasRecognizerInfo:Z

    .line 40
    iput-object p1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->recognizerInfo_:Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    .line 41
    return-object p0
.end method

.method public setStatus(I)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->hasStatus:Z

    .line 20
    iput p1, p0, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->status_:I

    .line 21
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
    .line 63
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->hasRecognizerInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->getRecognizerInfo()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 69
    :cond_1
    return-void
.end method
