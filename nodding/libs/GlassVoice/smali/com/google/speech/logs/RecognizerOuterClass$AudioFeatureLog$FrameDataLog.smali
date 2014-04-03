.class public final Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameDataLog"
.end annotation


# static fields
.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private value_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1013
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value_:Ljava/util/List;

    .line 1056
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->cachedSize:I

    .line 1009
    return-void
.end method


# virtual methods
.method public addValue(F)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 2
    .parameter "value"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value_:Ljava/util/List;

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    return-object p0
.end method

.method public final clear()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 1

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->clearValue()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    .line 1040
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->cachedSize:I

    .line 1041
    return-object p0
.end method

.method public clearValue()Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 1

    .prologue
    .line 1034
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value_:Ljava/util/List;

    .line 1035
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1059
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 1061
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->getSerializedSize()I

    .line 1063
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1068
    const/4 v1, 0x0

    .line 1070
    .local v1, size:I
    const/4 v0, 0x0

    .line 1071
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->getValueList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x4

    .line 1072
    add-int/2addr v1, v0

    .line 1073
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->getValueList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 1075
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->cachedSize:I

    .line 1076
    return v1
.end method

.method public getValue(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1045
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
    .line 1006
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1084
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1085
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1089
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1090
    :sswitch_0
    return-object p0

    .line 1095
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->addValue(F)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    goto :goto_0

    .line 1085
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1110
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1104
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;

    return-object v0
.end method

.method public setValue(IF)Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->value_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1024
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
    .line 1051
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$AudioFeatureLog$FrameDataLog;->getValueList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1052
    .local v0, element:F
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    goto :goto_0

    .line 1054
    .end local v0           #element:F
    :cond_0
    return-void
.end method
