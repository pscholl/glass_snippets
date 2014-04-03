.class public final Lcom/google/speech/common/Alternates$AlternateParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateParams"
.end annotation


# static fields
.field public static final ALTERNATE_UNIT_UTF8_BYTES:I = 0x1

.field public static final ALTERNATE_UNIT_WORD:I = 0x0

.field public static final MAX_SPAN_LENGTH_FIELD_NUMBER:I = 0x1

.field public static final MAX_TOTAL_SPAN_LENGTH_FIELD_NUMBER:I = 0x2

.field public static final UNIT_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private hasMaxSpanLength:Z

.field private hasMaxTotalSpanLength:Z

.field private hasUnit:Z

.field private maxSpanLength_:I

.field private maxTotalSpanLength_:I

.field private unit_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    .line 36
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    .line 53
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->unit_:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v0, Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$AlternateParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$AlternateParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$AlternateParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$AlternateParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$AlternateParams;

    check-cast v0, Lcom/google/speech/common/Alternates$AlternateParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->clearMaxSpanLength()Lcom/google/speech/common/Alternates$AlternateParams;

    .line 69
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->clearMaxTotalSpanLength()Lcom/google/speech/common/Alternates$AlternateParams;

    .line 70
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->clearUnit()Lcom/google/speech/common/Alternates$AlternateParams;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->cachedSize:I

    .line 72
    return-object p0
.end method

.method public clearMaxSpanLength()Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->hasMaxSpanLength:Z

    .line 29
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    .line 30
    return-object p0
.end method

.method public clearMaxTotalSpanLength()Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->hasMaxTotalSpanLength:Z

    .line 46
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    .line 47
    return-object p0
.end method

.method public clearUnit()Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->hasUnit:Z

    .line 63
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->unit_:I

    .line 64
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->getSerializedSize()I

    .line 100
    :cond_0
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->cachedSize:I

    return v0
.end method

.method public getMaxSpanLength()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    return v0
.end method

.method public getMaxTotalSpanLength()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->hasMaxSpanLength()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->getMaxSpanLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->hasMaxTotalSpanLength()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->getMaxTotalSpanLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->hasUnit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->getUnit()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_2
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->cachedSize:I

    .line 119
    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->unit_:I

    return v0
.end method

.method public hasMaxSpanLength()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->hasMaxSpanLength:Z

    return v0
.end method

.method public hasMaxTotalSpanLength()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->hasMaxTotalSpanLength:Z

    return v0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->hasUnit:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 76
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
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$AlternateParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 128
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/common/Alternates$AlternateParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    :sswitch_0
    return-object p0

    .line 138
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/Alternates$AlternateParams;->setMaxSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;

    goto :goto_0

    .line 142
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/Alternates$AlternateParams;->setMaxTotalSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;

    goto :goto_0

    .line 146
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/Alternates$AlternateParams;->setUnit(I)Lcom/google/speech/common/Alternates$AlternateParams;

    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setMaxSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->hasMaxSpanLength:Z

    .line 24
    iput p1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    .line 25
    return-object p0
.end method

.method public setMaxTotalSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->hasMaxTotalSpanLength:Z

    .line 41
    iput p1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    .line 42
    return-object p0
.end method

.method public setUnit(I)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->hasUnit:Z

    .line 58
    iput p1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->unit_:I

    .line 59
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
    .line 82
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->hasMaxSpanLength()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->getMaxSpanLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->hasMaxTotalSpanLength()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->getMaxTotalSpanLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->hasUnit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->getUnit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 91
    :cond_2
    return-void
.end method
