.class public final Lspeech/DecodedWordProto$DecodedWord;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DecodedWordProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspeech/DecodedWordProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecodedWord"
.end annotation


# static fields
.field public static final END_FRAME_FIELD_NUMBER:I = 0x3

.field public static final START_FRAME_FIELD_NUMBER:I = 0x2

.field public static final TEXT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private endFrame_:I

.field private hasEndFrame:Z

.field private hasStartFrame:Z

.field private hasText:Z

.field private startFrame_:I

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lspeech/DecodedWordProto$DecodedWord;->text_:Ljava/lang/String;

    .line 32
    iput v1, p0, Lspeech/DecodedWordProto$DecodedWord;->startFrame_:I

    .line 49
    iput v1, p0, Lspeech/DecodedWordProto$DecodedWord;->endFrame_:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lspeech/DecodedWordProto$DecodedWord;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/DecodedWordProto$DecodedWord;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lspeech/DecodedWordProto$DecodedWord;

    invoke-direct {v0}, Lspeech/DecodedWordProto$DecodedWord;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/DecodedWordProto$DecodedWord;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/DecodedWordProto$DecodedWord;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lspeech/DecodedWordProto$DecodedWord;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lspeech/DecodedWordProto$DecodedWord;

    invoke-direct {v0}, Lspeech/DecodedWordProto$DecodedWord;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/DecodedWordProto$DecodedWord;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lspeech/DecodedWordProto$DecodedWord;

    check-cast v0, Lspeech/DecodedWordProto$DecodedWord;

    return-object v0
.end method


# virtual methods
.method public final clear()Lspeech/DecodedWordProto$DecodedWord;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->clearText()Lspeech/DecodedWordProto$DecodedWord;

    .line 65
    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->clearStartFrame()Lspeech/DecodedWordProto$DecodedWord;

    .line 66
    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->clearEndFrame()Lspeech/DecodedWordProto$DecodedWord;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lspeech/DecodedWordProto$DecodedWord;->cachedSize:I

    .line 68
    return-object p0
.end method

.method public clearEndFrame()Lspeech/DecodedWordProto$DecodedWord;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lspeech/DecodedWordProto$DecodedWord;->hasEndFrame:Z

    .line 59
    iput v0, p0, Lspeech/DecodedWordProto$DecodedWord;->endFrame_:I

    .line 60
    return-object p0
.end method

.method public clearStartFrame()Lspeech/DecodedWordProto$DecodedWord;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lspeech/DecodedWordProto$DecodedWord;->hasStartFrame:Z

    .line 42
    iput v0, p0, Lspeech/DecodedWordProto$DecodedWord;->startFrame_:I

    .line 43
    return-object p0
.end method

.method public clearText()Lspeech/DecodedWordProto$DecodedWord;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/DecodedWordProto$DecodedWord;->hasText:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lspeech/DecodedWordProto$DecodedWord;->text_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lspeech/DecodedWordProto$DecodedWord;->cachedSize:I

    if-gez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->getSerializedSize()I

    .line 99
    :cond_0
    iget v0, p0, Lspeech/DecodedWordProto$DecodedWord;->cachedSize:I

    return v0
.end method

.method public getEndFrame()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lspeech/DecodedWordProto$DecodedWord;->endFrame_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, size:I
    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const/4 v1, 0x1

    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->hasStartFrame()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const/4 v1, 0x2

    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->getStartFrame()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_1
    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->hasEndFrame()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const/4 v1, 0x3

    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->getEndFrame()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_2
    iput v0, p0, Lspeech/DecodedWordProto$DecodedWord;->cachedSize:I

    .line 118
    return v0
.end method

.method public getStartFrame()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lspeech/DecodedWordProto$DecodedWord;->startFrame_:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lspeech/DecodedWordProto$DecodedWord;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasEndFrame()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lspeech/DecodedWordProto$DecodedWord;->hasEndFrame:Z

    return v0
.end method

.method public hasStartFrame()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lspeech/DecodedWordProto$DecodedWord;->hasStartFrame:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lspeech/DecodedWordProto$DecodedWord;->hasText:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-boolean v1, p0, Lspeech/DecodedWordProto$DecodedWord;->hasText:Z

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    iget-boolean v1, p0, Lspeech/DecodedWordProto$DecodedWord;->hasStartFrame:Z

    if-eqz v1, :cond_0

    .line 74
    iget-boolean v1, p0, Lspeech/DecodedWordProto$DecodedWord;->hasEndFrame:Z

    if-eqz v1, :cond_0

    .line 75
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
    .line 7
    invoke-virtual {p0, p1}, Lspeech/DecodedWordProto$DecodedWord;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/DecodedWordProto$DecodedWord;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/DecodedWordProto$DecodedWord;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 127
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 131
    invoke-virtual {p0, p1, v0}, Lspeech/DecodedWordProto$DecodedWord;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    :sswitch_0
    return-object p0

    .line 137
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lspeech/DecodedWordProto$DecodedWord;->setText(Ljava/lang/String;)Lspeech/DecodedWordProto$DecodedWord;

    goto :goto_0

    .line 141
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lspeech/DecodedWordProto$DecodedWord;->setStartFrame(I)Lspeech/DecodedWordProto$DecodedWord;

    goto :goto_0

    .line 145
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lspeech/DecodedWordProto$DecodedWord;->setEndFrame(I)Lspeech/DecodedWordProto$DecodedWord;

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setEndFrame(I)Lspeech/DecodedWordProto$DecodedWord;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/DecodedWordProto$DecodedWord;->hasEndFrame:Z

    .line 54
    iput p1, p0, Lspeech/DecodedWordProto$DecodedWord;->endFrame_:I

    .line 55
    return-object p0
.end method

.method public setStartFrame(I)Lspeech/DecodedWordProto$DecodedWord;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/DecodedWordProto$DecodedWord;->hasStartFrame:Z

    .line 37
    iput p1, p0, Lspeech/DecodedWordProto$DecodedWord;->startFrame_:I

    .line 38
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lspeech/DecodedWordProto$DecodedWord;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/DecodedWordProto$DecodedWord;->hasText:Z

    .line 20
    iput-object p1, p0, Lspeech/DecodedWordProto$DecodedWord;->text_:Ljava/lang/String;

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
    .line 81
    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->hasStartFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x2

    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->getStartFrame()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->hasEndFrame()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0}, Lspeech/DecodedWordProto$DecodedWord;->getEndFrame()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 90
    :cond_2
    return-void
.end method
