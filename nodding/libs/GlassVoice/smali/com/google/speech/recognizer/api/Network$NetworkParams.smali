.class public final Lcom/google/speech/recognizer/api/Network$NetworkParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkParams"
.end annotation


# static fields
.field public static final ADD_RESTART_ARCS_FIELD_NUMBER:I = 0x8

.field public static final ADD_SIL_LOOPS_FIELD_NUMBER:I = 0x6

.field public static final CLOSURE_FIELD_NUMBER:I = 0x7

.field public static final MAX_INSERTIONS_FIELD_NUMBER:I = 0x4

.field public static final MIN_FREQUENCY_FIELD_NUMBER:I = 0x3

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field public static final PINCH_FIELD_NUMBER:I = 0x5


# instance fields
.field private addRestartArcs_:Z

.field private addSilLoops_:Z

.field private cachedSize:I

.field private closure_:Z

.field private hasAddRestartArcs:Z

.field private hasAddSilLoops:Z

.field private hasClosure:Z

.field private hasMaxInsertions:Z

.field private hasMinFrequency:Z

.field private hasPinch:Z

.field private maxInsertions_:I

.field private minFrequency_:I

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

.field private pinch_:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path_:Ljava/util/List;

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    .line 65
    iput v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    .line 82
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    .line 99
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    .line 116
    iput-boolean v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    .line 133
    iput-boolean v1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/Network$NetworkParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;

    check-cast v0, Lcom/google/speech/recognizer/api/Network$NetworkParams;

    return-object v0
.end method


# virtual methods
.method public addPath(Lcom/google/speech/recognizer/api/Network$PathParams;)Lcom/google/speech/recognizer/api/Network$NetworkParams;
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
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path_:Ljava/util/List;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-object p0
.end method

.method public final clear()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->clearPath()Lcom/google/speech/recognizer/api/Network$NetworkParams;

    .line 149
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->clearMinFrequency()Lcom/google/speech/recognizer/api/Network$NetworkParams;

    .line 150
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->clearMaxInsertions()Lcom/google/speech/recognizer/api/Network$NetworkParams;

    .line 151
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->clearPinch()Lcom/google/speech/recognizer/api/Network$NetworkParams;

    .line 152
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->clearAddSilLoops()Lcom/google/speech/recognizer/api/Network$NetworkParams;

    .line 153
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->clearClosure()Lcom/google/speech/recognizer/api/Network$NetworkParams;

    .line 154
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->clearAddRestartArcs()Lcom/google/speech/recognizer/api/Network$NetworkParams;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->cachedSize:I

    .line 156
    return-object p0
.end method

.method public clearAddRestartArcs()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasAddRestartArcs:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    .line 144
    return-object p0
.end method

.method public clearAddSilLoops()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasAddSilLoops:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    .line 110
    return-object p0
.end method

.method public clearClosure()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasClosure:Z

    .line 126
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    .line 127
    return-object p0
.end method

.method public clearMaxInsertions()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasMaxInsertions:Z

    .line 75
    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    .line 76
    return-object p0
.end method

.method public clearMinFrequency()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasMinFrequency:Z

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    .line 59
    return-object p0
.end method

.method public clearPath()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path_:Ljava/util/List;

    .line 42
    return-object p0
.end method

.method public clearPinch()Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasPinch:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    .line 93
    return-object p0
.end method

.method public getAddRestartArcs()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    return v0
.end method

.method public getAddSilLoops()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getSerializedSize()I

    .line 196
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->cachedSize:I

    return v0
.end method

.method public getClosure()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    return v0
.end method

.method public getMaxInsertions()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    return v0
.end method

.method public getMinFrequency()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    return v0
.end method

.method public getPath(I)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .parameter "index"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    return-object v0
.end method

.method public getPathCount()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path_:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path_:Ljava/util/List;

    return-object v0
.end method

.method public getPinch()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getPathList()Ljava/util/List;

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

    .line 203
    .local v0, element:Lcom/google/speech/recognizer/api/Network$PathParams;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 206
    .end local v0           #element:Lcom/google/speech/recognizer/api/Network$PathParams;
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasMinFrequency()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getMinFrequency()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasMaxInsertions()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getMaxInsertions()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasPinch()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getPinch()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasAddSilLoops()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 219
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getAddSilLoops()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 222
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasClosure()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 223
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getClosure()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 226
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasAddRestartArcs()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 227
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getAddRestartArcs()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 230
    :cond_6
    iput v2, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->cachedSize:I

    .line 231
    return v2
.end method

.method public hasAddRestartArcs()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasAddRestartArcs:Z

    return v0
.end method

.method public hasAddSilLoops()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasAddSilLoops:Z

    return v0
.end method

.method public hasClosure()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasClosure:Z

    return v0
.end method

.method public hasMaxInsertions()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasMaxInsertions:Z

    return v0
.end method

.method public hasMinFrequency()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasMinFrequency:Z

    return v0
.end method

.method public hasPinch()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasPinch:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 160
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
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/Network$NetworkParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 240
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 244
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    :sswitch_0
    return-object p0

    .line 250
    :sswitch_1
    new-instance v1, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    .line 251
    .local v1, value:Lcom/google/speech/recognizer/api/Network$PathParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 252
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addPath(Lcom/google/speech/recognizer/api/Network$PathParams;)Lcom/google/speech/recognizer/api/Network$NetworkParams;

    goto :goto_0

    .line 256
    .end local v1           #value:Lcom/google/speech/recognizer/api/Network$PathParams;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->setMinFrequency(I)Lcom/google/speech/recognizer/api/Network$NetworkParams;

    goto :goto_0

    .line 260
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->setMaxInsertions(I)Lcom/google/speech/recognizer/api/Network$NetworkParams;

    goto :goto_0

    .line 264
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->setPinch(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;

    goto :goto_0

    .line 268
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->setAddSilLoops(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;

    goto :goto_0

    .line 272
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->setClosure(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;

    goto :goto_0

    .line 276
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->setAddRestartArcs(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;

    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x40 -> :sswitch_7
    .end sparse-switch
.end method

.method public setAddRestartArcs(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasAddRestartArcs:Z

    .line 138
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addRestartArcs_:Z

    .line 139
    return-object p0
.end method

.method public setAddSilLoops(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasAddSilLoops:Z

    .line 104
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->addSilLoops_:Z

    .line 105
    return-object p0
.end method

.method public setClosure(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasClosure:Z

    .line 121
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->closure_:Z

    .line 122
    return-object p0
.end method

.method public setMaxInsertions(I)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasMaxInsertions:Z

    .line 70
    iput p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->maxInsertions_:I

    .line 71
    return-object p0
.end method

.method public setMinFrequency(I)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasMinFrequency:Z

    .line 53
    iput p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->minFrequency_:I

    .line 54
    return-object p0
.end method

.method public setPath(ILcom/google/speech/recognizer/api/Network$PathParams;)Lcom/google/speech/recognizer/api/Network$NetworkParams;
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
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->path_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object p0
.end method

.method public setPinch(Z)Lcom/google/speech/recognizer/api/Network$NetworkParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasPinch:Z

    .line 87
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/Network$NetworkParams;->pinch_:Z

    .line 88
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
    .line 166
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getPathList()Ljava/util/List;

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

    .line 167
    .local v0, element:Lcom/google/speech/recognizer/api/Network$PathParams;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 169
    .end local v0           #element:Lcom/google/speech/recognizer/api/Network$PathParams;
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasMinFrequency()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getMinFrequency()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasMaxInsertions()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getMaxInsertions()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasPinch()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getPinch()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasAddSilLoops()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 179
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getAddSilLoops()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasClosure()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getClosure()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 184
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->hasAddRestartArcs()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 185
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$NetworkParams;->getAddRestartArcs()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 187
    :cond_6
    return-void
.end method
