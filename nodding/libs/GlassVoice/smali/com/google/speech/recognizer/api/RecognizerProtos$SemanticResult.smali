.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SemanticResult"
.end annotation


# static fields
.field public static final INTERPRETATION_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lspeech/InterpretationProto$Interpretation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation_:Ljava/util/List;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->cachedSize:I

    .line 17
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    return-object v0
.end method


# virtual methods
.method public addInterpretation(Lspeech/InterpretationProto$Interpretation;)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation_:Ljava/util/List;

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-object p0
.end method

.method public final clear()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->clearInterpretation()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->cachedSize:I

    .line 55
    return-object p0
.end method

.method public clearInterpretation()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation_:Ljava/util/List;

    .line 49
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->getSerializedSize()I

    .line 80
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->cachedSize:I

    return v0
.end method

.method public getInterpretation(I)Lspeech/InterpretationProto$Interpretation;
    .locals 1
    .parameter "index"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Interpretation;

    return-object v0
.end method

.method public getInterpretationCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInterpretationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lspeech/InterpretationProto$Interpretation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->getInterpretationList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Interpretation;

    .line 87
    .local v0, element:Lspeech/InterpretationProto$Interpretation;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 90
    .end local v0           #element:Lspeech/InterpretationProto$Interpretation;
    :cond_0
    iput v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->cachedSize:I

    .line 91
    return v2
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->getInterpretationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Interpretation;

    .line 60
    .local v0, element:Lspeech/InterpretationProto$Interpretation;
    invoke-virtual {v0}, Lspeech/InterpretationProto$Interpretation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 62
    .end local v0           #element:Lspeech/InterpretationProto$Interpretation;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

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
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 100
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    :sswitch_0
    return-object p0

    .line 110
    :sswitch_1
    new-instance v1, Lspeech/InterpretationProto$Interpretation;

    invoke-direct {v1}, Lspeech/InterpretationProto$Interpretation;-><init>()V

    .line 111
    .local v1, value:Lspeech/InterpretationProto$Interpretation;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->addInterpretation(Lspeech/InterpretationProto$Interpretation;)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setInterpretation(ILspeech/InterpretationProto$Interpretation;)Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 31
    if-nez p2, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 35
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
    .line 68
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->getInterpretationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Interpretation;

    .line 69
    .local v0, element:Lspeech/InterpretationProto$Interpretation;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 71
    .end local v0           #element:Lspeech/InterpretationProto$Interpretation;
    :cond_0
    return-void
.end method
