.class public final Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "HotwordCompileParamsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/HotwordCompileParamsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotwordCompileParams"
.end annotation


# static fields
.field public static final OUTPUT_FILENAME_PREFIX_FIELD_NUMBER:I = 0x2

.field public static final PATH_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasOutputFilenamePrefix:Z

.field private outputFilenamePrefix_:Ljava/lang/String;

.field private path_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/recognizer/api/Network$PathParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path_:Ljava/util/List;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    check-cast v0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    return-object v0
.end method


# virtual methods
.method public addPath(Lcom/google/speech/recognizer/api/Network$PathParams;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path_:Ljava/util/List;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-object p0
.end method

.method public final clear()Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->clearPath()Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    .line 64
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->clearOutputFilenamePrefix()Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->cachedSize:I

    .line 66
    return-object p0
.end method

.method public clearOutputFilenamePrefix()Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->hasOutputFilenamePrefix:Z

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public clearPath()Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path_:Ljava/util/List;

    .line 42
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->getSerializedSize()I

    .line 91
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->cachedSize:I

    return v0
.end method

.method public getOutputFilenamePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(I)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .parameter "index"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    return-object v0
.end method

.method public getPathCount()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/recognizer/api/Network$PathParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->getPathList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 98
    .local v0, element:Lcom/google/speech/recognizer/api/Network$PathParams;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 101
    .end local v0           #element:Lcom/google/speech/recognizer/api/Network$PathParams;
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->hasOutputFilenamePrefix()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->getOutputFilenamePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 105
    :cond_1
    iput v2, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->cachedSize:I

    .line 106
    return v2
.end method

.method public hasOutputFilenamePrefix()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->hasOutputFilenamePrefix:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 70
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
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 115
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    :sswitch_0
    return-object p0

    .line 125
    :sswitch_1
    new-instance v1, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    .line 126
    .local v1, value:Lcom/google/speech/recognizer/api/Network$PathParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->addPath(Lcom/google/speech/recognizer/api/Network$PathParams;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    goto :goto_0

    .line 131
    .end local v1           #value:Lcom/google/speech/recognizer/api/Network$PathParams;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->setOutputFilenamePrefix(Ljava/lang/String;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setOutputFilenamePrefix(Ljava/lang/String;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->hasOutputFilenamePrefix:Z

    .line 53
    iput-object p1, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->outputFilenamePrefix_:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public setPath(ILcom/google/speech/recognizer/api/Network$PathParams;)Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 24
    if-nez p2, :cond_0

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->getPathList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 77
    .local v0, element:Lcom/google/speech/recognizer/api/Network$PathParams;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 79
    .end local v0           #element:Lcom/google/speech/recognizer/api/Network$PathParams;
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->hasOutputFilenamePrefix()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->getOutputFilenamePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 82
    :cond_1
    return-void
.end method
