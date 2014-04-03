.class public final Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrammarSelectorParams"
.end annotation


# static fields
.field public static final SELECTED_APPLICATION_FIELD_NUMBER:I = 0x1

.field public static final SELECTED_SLOT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasSelectedApplication:Z

.field private hasSelectedSlot:Z

.field private selectedApplication_:Ljava/lang/String;

.field private selectedSlot_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedApplication_:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedSlot_:Ljava/lang/String;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->cachedSize:I

    .line 20
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->clearSelectedApplication()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    .line 58
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->clearSelectedSlot()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->cachedSize:I

    .line 60
    return-object p0
.end method

.method public clearSelectedApplication()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->hasSelectedApplication:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedApplication_:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public clearSelectedSlot()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->hasSelectedSlot:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedSlot_:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->getSerializedSize()I

    .line 85
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->cachedSize:I

    return v0
.end method

.method public getSelectedApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedApplication_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedSlot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedSlot_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->hasSelectedApplication()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->getSelectedApplication()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->hasSelectedSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->getSelectedSlot()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_1
    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->cachedSize:I

    .line 100
    return v0
.end method

.method public hasSelectedApplication()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->hasSelectedApplication:Z

    return v0
.end method

.method public hasSelectedSlot()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->hasSelectedSlot:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 64
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
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 109
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :sswitch_0
    return-object p0

    .line 119
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->setSelectedApplication(Ljava/lang/String;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    goto :goto_0

    .line 123
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->setSelectedSlot(Ljava/lang/String;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    goto :goto_0

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    return-object v0
.end method

.method public setSelectedApplication(Ljava/lang/String;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->hasSelectedApplication:Z

    .line 30
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedApplication_:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public setSelectedSlot(Ljava/lang/String;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->hasSelectedSlot:Z

    .line 47
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedSlot_:Ljava/lang/String;

    .line 48
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
    .line 70
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->hasSelectedApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->getSelectedApplication()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->hasSelectedSlot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->getSelectedSlot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 76
    :cond_1
    return-void
.end method
