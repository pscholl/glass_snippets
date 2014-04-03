.class public final Lspeech/InterpretationProto$Slot;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "InterpretationProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspeech/InterpretationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slot"
.end annotation


# static fields
.field public static final ALTERNATES_FIELD_NUMBER:I = 0x12

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x3

.field public static final DECODED_WORDS_FIELD_NUMBER:I = 0x7

.field public static final LITERAL_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PRETEXTNORM_DECODED_WORDS_FIELD_NUMBER:I = 0x9

.field public static final PRETEXTNORM_VALUE_FIELD_NUMBER:I = 0x8

.field public static final SUBSLOT_FIELD_NUMBER:I = 0x5

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private alternates_:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

.field private cachedSize:I

.field private confidence_:F

.field private decodedWords_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lspeech/DecodedWordProto$DecodedWord;",
            ">;"
        }
    .end annotation
.end field

.field private hasAlternates:Z

.field private hasConfidence:Z

.field private hasLiteral:Z

.field private hasName:Z

.field private hasPretextnormValue:Z

.field private hasValue:Z

.field private literal_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private pretextnormDecodedWords_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lspeech/DecodedWordProto$DecodedWord;",
            ">;"
        }
    .end annotation
.end field

.field private pretextnormValue_:Ljava/lang/String;

.field private subslot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lspeech/InterpretationProto$Slot;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->name_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->value_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->literal_:Ljava/lang/String;

    .line 66
    const/high16 v0, -0x4080

    iput v0, p0, Lspeech/InterpretationProto$Slot;->confidence_:F

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->subslot_:Ljava/util/List;

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->decodedWords_:Ljava/util/List;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormValue_:Ljava/lang/String;

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords_:Ljava/util/List;

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->alternates_:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 280
    const/4 v0, -0x1

    iput v0, p0, Lspeech/InterpretationProto$Slot;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    new-instance v0, Lspeech/InterpretationProto$Slot;

    invoke-direct {v0}, Lspeech/InterpretationProto$Slot;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/InterpretationProto$Slot;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/InterpretationProto$Slot;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Lspeech/InterpretationProto$Slot;

    invoke-direct {v0}, Lspeech/InterpretationProto$Slot;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/InterpretationProto$Slot;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Slot;

    check-cast v0, Lspeech/InterpretationProto$Slot;

    return-object v0
.end method


# virtual methods
.method public addDecodedWords(Lspeech/DecodedWordProto$DecodedWord;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->decodedWords_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->decodedWords_:Ljava/util/List;

    .line 138
    :cond_1
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->decodedWords_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-object p0
.end method

.method public addPretextnormDecodedWords(Lspeech/DecodedWordProto$DecodedWord;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords_:Ljava/util/List;

    .line 188
    :cond_1
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-object p0
.end method

.method public addSubslot(Lspeech/InterpretationProto$Slot;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->subslot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->subslot_:Ljava/util/List;

    .line 105
    :cond_1
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object p0
.end method

.method public final clear()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->clearName()Lspeech/InterpretationProto$Slot;

    .line 218
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->clearValue()Lspeech/InterpretationProto$Slot;

    .line 219
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->clearLiteral()Lspeech/InterpretationProto$Slot;

    .line 220
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->clearConfidence()Lspeech/InterpretationProto$Slot;

    .line 221
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->clearSubslot()Lspeech/InterpretationProto$Slot;

    .line 222
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->clearDecodedWords()Lspeech/InterpretationProto$Slot;

    .line 223
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->clearPretextnormValue()Lspeech/InterpretationProto$Slot;

    .line 224
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->clearPretextnormDecodedWords()Lspeech/InterpretationProto$Slot;

    .line 225
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->clearAlternates()Lspeech/InterpretationProto$Slot;

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Lspeech/InterpretationProto$Slot;->cachedSize:I

    .line 227
    return-object p0
.end method

.method public clearAlternates()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasAlternates:Z

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->alternates_:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 213
    return-object p0
.end method

.method public clearConfidence()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasConfidence:Z

    .line 76
    const/high16 v0, -0x4080

    iput v0, p0, Lspeech/InterpretationProto$Slot;->confidence_:F

    .line 77
    return-object p0
.end method

.method public clearDecodedWords()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->decodedWords_:Ljava/util/List;

    .line 143
    return-object p0
.end method

.method public clearLiteral()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasLiteral:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->literal_:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public clearName()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasName:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->name_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public clearPretextnormDecodedWords()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords_:Ljava/util/List;

    .line 193
    return-object p0
.end method

.method public clearPretextnormValue()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasPretextnormValue:Z

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormValue_:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public clearSubslot()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->subslot_:Ljava/util/List;

    .line 110
    return-object p0
.end method

.method public clearValue()Lspeech/InterpretationProto$Slot;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasValue:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Slot;->value_:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public getAlternates()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->alternates_:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lspeech/InterpretationProto$Slot;->cachedSize:I

    if-gez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getSerializedSize()I

    .line 287
    :cond_0
    iget v0, p0, Lspeech/InterpretationProto$Slot;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lspeech/InterpretationProto$Slot;->confidence_:F

    return v0
.end method

.method public getDecodedWords(I)Lspeech/DecodedWordProto$DecodedWord;
    .locals 1
    .parameter "index"

    .prologue
    .line 122
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->decodedWords_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/DecodedWordProto$DecodedWord;

    return-object v0
.end method

.method public getDecodedWordsCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->decodedWords_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDecodedWordsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lspeech/DecodedWordProto$DecodedWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->decodedWords_:Ljava/util/List;

    return-object v0
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->literal_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPretextnormDecodedWords(I)Lspeech/DecodedWordProto$DecodedWord;
    .locals 1
    .parameter "index"

    .prologue
    .line 172
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/DecodedWordProto$DecodedWord;

    return-object v0
.end method

.method public getPretextnormDecodedWordsCount()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPretextnormDecodedWordsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lspeech/DecodedWordProto$DecodedWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords_:Ljava/util/List;

    return-object v0
.end method

.method public getPretextnormValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, size:I
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    const/4 v3, 0x1

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 297
    :cond_0
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    const/4 v3, 0x2

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 301
    :cond_1
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasConfidence()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    const/4 v3, 0x3

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getConfidence()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 305
    :cond_2
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasLiteral()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    const/4 v3, 0x4

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getLiteral()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 309
    :cond_3
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getSubslotList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Slot;

    .line 310
    .local v0, element:Lspeech/InterpretationProto$Slot;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 313
    .end local v0           #element:Lspeech/InterpretationProto$Slot;
    :cond_4
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getDecodedWordsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/DecodedWordProto$DecodedWord;

    .line 314
    .local v0, element:Lspeech/DecodedWordProto$DecodedWord;
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 317
    .end local v0           #element:Lspeech/DecodedWordProto$DecodedWord;
    :cond_5
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasPretextnormValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 318
    const/16 v3, 0x8

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getPretextnormValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 321
    :cond_6
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getPretextnormDecodedWordsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/DecodedWordProto$DecodedWord;

    .line 322
    .restart local v0       #element:Lspeech/DecodedWordProto$DecodedWord;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 325
    .end local v0           #element:Lspeech/DecodedWordProto$DecodedWord;
    :cond_7
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasAlternates()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 326
    const/16 v3, 0x12

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getAlternates()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 329
    :cond_8
    iput v2, p0, Lspeech/InterpretationProto$Slot;->cachedSize:I

    .line 330
    return v2
.end method

.method public getSubslot(I)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "index"

    .prologue
    .line 89
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Slot;

    return-object v0
.end method

.method public getSubslotCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->subslot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubslotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lspeech/InterpretationProto$Slot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->subslot_:Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAlternates()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasAlternates:Z

    return v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasConfidence:Z

    return v0
.end method

.method public hasLiteral()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasLiteral:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasName:Z

    return v0
.end method

.method public hasPretextnormValue()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasPretextnormValue:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-boolean v3, p0, Lspeech/InterpretationProto$Slot;->hasName:Z

    if-nez v3, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v2

    .line 232
    :cond_1
    iget-boolean v3, p0, Lspeech/InterpretationProto$Slot;->hasValue:Z

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getSubslotList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Slot;

    .line 234
    .local v0, element:Lspeech/InterpretationProto$Slot;
    invoke-virtual {v0}, Lspeech/InterpretationProto$Slot;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 236
    .end local v0           #element:Lspeech/InterpretationProto$Slot;
    :cond_3
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getDecodedWordsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/DecodedWordProto$DecodedWord;

    .line 237
    .local v0, element:Lspeech/DecodedWordProto$DecodedWord;
    invoke-virtual {v0}, Lspeech/DecodedWordProto$DecodedWord;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 239
    .end local v0           #element:Lspeech/DecodedWordProto$DecodedWord;
    :cond_5
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getPretextnormDecodedWordsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/DecodedWordProto$DecodedWord;

    .line 240
    .restart local v0       #element:Lspeech/DecodedWordProto$DecodedWord;
    invoke-virtual {v0}, Lspeech/DecodedWordProto$DecodedWord;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 242
    .end local v0           #element:Lspeech/DecodedWordProto$DecodedWord;
    :cond_7
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasAlternates()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 243
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getAlternates()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    :cond_8
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
    .line 7
    invoke-virtual {p0, p1}, Lspeech/InterpretationProto$Slot;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/InterpretationProto$Slot;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/InterpretationProto$Slot;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 339
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 343
    invoke-virtual {p0, p1, v0}, Lspeech/InterpretationProto$Slot;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    :sswitch_0
    return-object p0

    .line 349
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lspeech/InterpretationProto$Slot;->setName(Ljava/lang/String;)Lspeech/InterpretationProto$Slot;

    goto :goto_0

    .line 353
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lspeech/InterpretationProto$Slot;->setValue(Ljava/lang/String;)Lspeech/InterpretationProto$Slot;

    goto :goto_0

    .line 357
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lspeech/InterpretationProto$Slot;->setConfidence(F)Lspeech/InterpretationProto$Slot;

    goto :goto_0

    .line 361
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lspeech/InterpretationProto$Slot;->setLiteral(Ljava/lang/String;)Lspeech/InterpretationProto$Slot;

    goto :goto_0

    .line 365
    :sswitch_5
    new-instance v1, Lspeech/InterpretationProto$Slot;

    invoke-direct {v1}, Lspeech/InterpretationProto$Slot;-><init>()V

    .line 366
    .local v1, value:Lspeech/InterpretationProto$Slot;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 367
    invoke-virtual {p0, v1}, Lspeech/InterpretationProto$Slot;->addSubslot(Lspeech/InterpretationProto$Slot;)Lspeech/InterpretationProto$Slot;

    goto :goto_0

    .line 371
    .end local v1           #value:Lspeech/InterpretationProto$Slot;
    :sswitch_6
    new-instance v1, Lspeech/DecodedWordProto$DecodedWord;

    invoke-direct {v1}, Lspeech/DecodedWordProto$DecodedWord;-><init>()V

    .line 372
    .local v1, value:Lspeech/DecodedWordProto$DecodedWord;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 373
    invoke-virtual {p0, v1}, Lspeech/InterpretationProto$Slot;->addDecodedWords(Lspeech/DecodedWordProto$DecodedWord;)Lspeech/InterpretationProto$Slot;

    goto :goto_0

    .line 377
    .end local v1           #value:Lspeech/DecodedWordProto$DecodedWord;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lspeech/InterpretationProto$Slot;->setPretextnormValue(Ljava/lang/String;)Lspeech/InterpretationProto$Slot;

    goto :goto_0

    .line 381
    :sswitch_8
    new-instance v1, Lspeech/DecodedWordProto$DecodedWord;

    invoke-direct {v1}, Lspeech/DecodedWordProto$DecodedWord;-><init>()V

    .line 382
    .restart local v1       #value:Lspeech/DecodedWordProto$DecodedWord;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 383
    invoke-virtual {p0, v1}, Lspeech/InterpretationProto$Slot;->addPretextnormDecodedWords(Lspeech/DecodedWordProto$DecodedWord;)Lspeech/InterpretationProto$Slot;

    goto :goto_0

    .line 387
    .end local v1           #value:Lspeech/DecodedWordProto$DecodedWord;
    :sswitch_9
    new-instance v1, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-direct {v1}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;-><init>()V

    .line 388
    .local v1, value:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 389
    invoke-virtual {p0, v1}, Lspeech/InterpretationProto$Slot;->setAlternates(Lcom/google/speech/common/Alternates$RecognitionClientAlternates;)Lspeech/InterpretationProto$Slot;

    goto :goto_0

    .line 339
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x92 -> :sswitch_9
    .end sparse-switch
.end method

.method public setAlternates(Lcom/google/speech/common/Alternates$RecognitionClientAlternates;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasAlternates:Z

    .line 207
    iput-object p1, p0, Lspeech/InterpretationProto$Slot;->alternates_:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 208
    return-object p0
.end method

.method public setConfidence(F)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasConfidence:Z

    .line 71
    iput p1, p0, Lspeech/InterpretationProto$Slot;->confidence_:F

    .line 72
    return-object p0
.end method

.method public setDecodedWords(ILspeech/DecodedWordProto$DecodedWord;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 125
    if-nez p2, :cond_0

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->decodedWords_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object p0
.end method

.method public setLiteral(Ljava/lang/String;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasLiteral:Z

    .line 54
    iput-object p1, p0, Lspeech/InterpretationProto$Slot;->literal_:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasName:Z

    .line 20
    iput-object p1, p0, Lspeech/InterpretationProto$Slot;->name_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setPretextnormDecodedWords(ILspeech/DecodedWordProto$DecodedWord;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 175
    if-nez p2, :cond_0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->pretextnormDecodedWords_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-object p0
.end method

.method public setPretextnormValue(Ljava/lang/String;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasPretextnormValue:Z

    .line 154
    iput-object p1, p0, Lspeech/InterpretationProto$Slot;->pretextnormValue_:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setSubslot(ILspeech/InterpretationProto$Slot;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 92
    if-nez p2, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p0, Lspeech/InterpretationProto$Slot;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/InterpretationProto$Slot;->hasValue:Z

    .line 37
    iput-object p1, p0, Lspeech/InterpretationProto$Slot;->value_:Ljava/lang/String;

    .line 38
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
    .line 251
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    const/4 v2, 0x1

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    const/4 v2, 0x2

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 257
    :cond_1
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasConfidence()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    const/4 v2, 0x3

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getConfidence()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 260
    :cond_2
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasLiteral()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    const/4 v2, 0x4

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 263
    :cond_3
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getSubslotList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Slot;

    .line 264
    .local v0, element:Lspeech/InterpretationProto$Slot;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 266
    .end local v0           #element:Lspeech/InterpretationProto$Slot;
    :cond_4
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getDecodedWordsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/DecodedWordProto$DecodedWord;

    .line 267
    .local v0, element:Lspeech/DecodedWordProto$DecodedWord;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 269
    .end local v0           #element:Lspeech/DecodedWordProto$DecodedWord;
    :cond_5
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasPretextnormValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 270
    const/16 v2, 0x8

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getPretextnormValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 272
    :cond_6
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getPretextnormDecodedWordsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/DecodedWordProto$DecodedWord;

    .line 273
    .restart local v0       #element:Lspeech/DecodedWordProto$DecodedWord;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 275
    .end local v0           #element:Lspeech/DecodedWordProto$DecodedWord;
    :cond_7
    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->hasAlternates()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 276
    const/16 v2, 0x12

    invoke-virtual {p0}, Lspeech/InterpretationProto$Slot;->getAlternates()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 278
    :cond_8
    return-void
.end method
