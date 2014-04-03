.class public final Lcom/google/speech/common/Alternates$RecognitionAlternates;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionAlternates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    }
.end annotation


# static fields
.field public static final SLOT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private slot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1020
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    .line 1072
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->cachedSize:I

    .line 680
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1120
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates;

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates;

    return-object v0
.end method


# virtual methods
.method public addSlot(Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter "value"

    .prologue
    .line 1037
    if-nez p1, :cond_0

    .line 1038
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    return-object p0
.end method

.method public final clear()Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 1

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->clearSlot()Lcom/google/speech/common/Alternates$RecognitionAlternates;

    .line 1053
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->cachedSize:I

    .line 1054
    return-object p0
.end method

.method public clearSlot()Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 1

    .prologue
    .line 1047
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    .line 1048
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1075
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->cachedSize:I

    if-gez v0, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->getSerializedSize()I

    .line 1079
    :cond_0
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1084
    const/4 v2, 0x0

    .line 1085
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->getSlotList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 1086
    .local v0, element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1089
    .end local v0           #element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    :cond_0
    iput v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->cachedSize:I

    .line 1090
    return v2
.end method

.method public getSlot(I)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter "index"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object v0
.end method

.method public getSlotCount()I
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSlotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->getSlotList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 1059
    .local v0, element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    invoke-virtual {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 1061
    .end local v0           #element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
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
    .line 677
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1098
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1099
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1103
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1104
    :sswitch_0
    return-object p0

    .line 1109
    :sswitch_1
    new-instance v1, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    invoke-direct {v1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;-><init>()V

    .line 1110
    .local v1, value:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 1111
    invoke-virtual {p0, v1}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->addSlot(Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/speech/common/Alternates$RecognitionAlternates;

    goto :goto_0

    .line 1099
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public setSlot(ILcom/google/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/speech/common/Alternates$RecognitionAlternates;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1030
    if-nez p2, :cond_0

    .line 1031
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates;->slot_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1034
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
    .line 1067
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates;->getSlotList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 1068
    .local v0, element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1070
    .end local v0           #element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    :cond_0
    return-void
.end method
