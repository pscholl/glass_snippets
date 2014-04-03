.class public final Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionClientAlternates"
.end annotation


# static fields
.field public static final MAX_SPAN_LENGTH_FIELD_NUMBER:I = 0x2

.field public static final SPAN_FIELD_NUMBER:I = 0x1

.field public static final UNIT_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private hasMaxSpanLength:Z

.field private hasUnit:Z

.field private maxSpanLength_:I

.field private span_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private unit_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    .line 207
    iput v1, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    .line 224
    iput v1, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->cachedSize:I

    .line 169
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method


# virtual methods
.method public addSpan(Lcom/google/speech/common/Alternates$AlternateSpan;)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter "value"

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-object p0
.end method

.method public final clear()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->clearSpan()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 240
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->clearMaxSpanLength()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 241
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->clearUnit()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->cachedSize:I

    .line 243
    return-object p0
.end method

.method public clearMaxSpanLength()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->hasMaxSpanLength:Z

    .line 217
    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    .line 218
    return-object p0
.end method

.method public clearSpan()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    .line 201
    return-object p0
.end method

.method public clearUnit()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->hasUnit:Z

    .line 234
    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    .line 235
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->cachedSize:I

    if-gez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->getSerializedSize()I

    .line 275
    :cond_0
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->cachedSize:I

    return v0
.end method

.method public getMaxSpanLength()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->getSpanList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 282
    .local v0, element:Lcom/google/speech/common/Alternates$AlternateSpan;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 285
    .end local v0           #element:Lcom/google/speech/common/Alternates$AlternateSpan;
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->hasMaxSpanLength()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->getMaxSpanLength()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->hasUnit()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->getUnit()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 293
    :cond_2
    iput v2, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->cachedSize:I

    .line 294
    return v2
.end method

.method public getSpan(I)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter "index"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    return-object v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    return v0
.end method

.method public hasMaxSpanLength()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->hasMaxSpanLength:Z

    return v0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->hasUnit:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-boolean v3, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->hasMaxSpanLength:Z

    if-nez v3, :cond_0

    .line 251
    :goto_0
    return v2

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->getSpanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 249
    .local v0, element:Lcom/google/speech/common/Alternates$AlternateSpan;
    invoke-virtual {v0}, Lcom/google/speech/common/Alternates$AlternateSpan;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 251
    .end local v0           #element:Lcom/google/speech/common/Alternates$AlternateSpan;
    :cond_2
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
    .line 166
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 303
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    :sswitch_0
    return-object p0

    .line 313
    :sswitch_1
    new-instance v1, Lcom/google/speech/common/Alternates$AlternateSpan;

    invoke-direct {v1}, Lcom/google/speech/common/Alternates$AlternateSpan;-><init>()V

    .line 314
    .local v1, value:Lcom/google/speech/common/Alternates$AlternateSpan;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 315
    invoke-virtual {p0, v1}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->addSpan(Lcom/google/speech/common/Alternates$AlternateSpan;)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    goto :goto_0

    .line 319
    .end local v1           #value:Lcom/google/speech/common/Alternates$AlternateSpan;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->setMaxSpanLength(I)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    goto :goto_0

    .line 323
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->setUnit(I)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    goto :goto_0

    .line 303
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setMaxSpanLength(I)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter "value"

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->hasMaxSpanLength:Z

    .line 212
    iput p1, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    .line 213
    return-object p0
.end method

.method public setSpan(ILcom/google/speech/common/Alternates$AlternateSpan;)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 183
    if-nez p2, :cond_0

    .line 184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-object p0
.end method

.method public setUnit(I)Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1
    .parameter "value"

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->hasUnit:Z

    .line 229
    iput p1, p0, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    .line 230
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
    .line 257
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->getSpanList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 258
    .local v0, element:Lcom/google/speech/common/Alternates$AlternateSpan;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 260
    .end local v0           #element:Lcom/google/speech/common/Alternates$AlternateSpan;
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->hasMaxSpanLength()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->getMaxSpanLength()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->hasUnit()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->getUnit()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 266
    :cond_2
    return-void
.end method
