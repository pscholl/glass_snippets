.class public final Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/RecognizerProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hypothesis"
.end annotation


# static fields
.field public static final ACCEPT_FIELD_NUMBER:I = 0xb

.field public static final ALTERNATES_FIELD_NUMBER:I = 0x6

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x2

.field public static final PHONE_ALIGN_FIELD_NUMBER:I = 0x3

.field public static final PRENORM_TEXT_FIELD_NUMBER:I = 0xc

.field public static final SCRUBBED_TEXT_FIELD_NUMBER:I = 0xd

.field public static final SEMANTIC_RESULT_FIELD_NUMBER:I = 0x7

.field public static final STATE_ALIGN_FIELD_NUMBER:I = 0xa

.field public static final TEXT_FIELD_NUMBER:I = 0x1

.field public static final WORD_ALIGN_FIELD_NUMBER:I = 0x4

.field public static final WORD_CONF_FEATURE_FIELD_NUMBER:I = 0x5


# instance fields
.field private accept_:Z

.field private alternates_:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

.field private cachedSize:I

.field private confidence_:F

.field private hasAccept:Z

.field private hasAlternates:Z

.field private hasConfidence:Z

.field private hasPhoneAlign:Z

.field private hasPrenormText:Z

.field private hasScrubbedText:Z

.field private hasSemanticResult:Z

.field private hasStateAlign:Z

.field private hasText:Z

.field private hasWordAlign:Z

.field private phoneAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field private prenormText_:Ljava/lang/String;

.field private scrubbedText_:Ljava/lang/String;

.field private semanticResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

.field private stateAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field private text_:Ljava/lang/String;

.field private wordAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

.field private wordConfFeature_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->text_:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->prenormText_:Ljava/lang/String;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->scrubbedText_:Ljava/lang/String;

    .line 191
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->confidence_:F

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->accept_:Z

    .line 245
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 265
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 285
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 304
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature_:Ljava/util/List;

    .line 338
    iput-object v1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates_:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 428
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->cachedSize:I

    .line 135
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 566
    new-instance v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    check-cast v0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    return-object v0
.end method


# virtual methods
.method public addWordConfFeature(Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "value"

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature_:Ljava/util/List;

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    return-object p0
.end method

.method public final clear()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clearText()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 357
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clearPrenormText()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 358
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clearScrubbedText()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 359
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clearSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 360
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clearConfidence()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 361
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clearAccept()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 362
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clearStateAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 363
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clearPhoneAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 364
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clearWordAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 365
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clearWordConfFeature()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 366
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->clearAlternates()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    .line 367
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->cachedSize:I

    .line 368
    return-object p0
.end method

.method public clearAccept()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAccept:Z

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->accept_:Z

    .line 239
    return-object p0
.end method

.method public clearAlternates()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAlternates:Z

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates_:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 352
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasConfidence:Z

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->confidence_:F

    .line 222
    return-object p0
.end method

.method public clearPhoneAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasPhoneAlign:Z

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 279
    return-object p0
.end method

.method public clearPrenormText()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasPrenormText:Z

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->prenormText_:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public clearScrubbedText()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasScrubbedText:Z

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->scrubbedText_:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public clearSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasSemanticResult:Z

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 205
    return-object p0
.end method

.method public clearStateAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasStateAlign:Z

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 259
    return-object p0
.end method

.method public clearText()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText:Z

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->text_:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public clearWordAlign()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasWordAlign:Z

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 299
    return-object p0
.end method

.method public clearWordConfFeature()Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature_:Ljava/util/List;

    .line 332
    return-object p0
.end method

.method public getAccept()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->accept_:Z

    return v0
.end method

.method public getAlternates()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates_:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->cachedSize:I

    if-gez v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getSerializedSize()I

    .line 435
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->confidence_:F

    return v0
.end method

.method public getPhoneAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    return-object v0
.end method

.method public getPrenormText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->prenormText_:Ljava/lang/String;

    return-object v0
.end method

.method public getScrubbedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->scrubbedText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 440
    const/4 v2, 0x0

    .line 441
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasConfidence()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 446
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getConfidence()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasPhoneAlign()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 450
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getPhoneAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 453
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasWordAlign()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 454
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getWordAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 457
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getWordConfFeatureList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 458
    .local v0, element:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 461
    .end local v0           #element:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAlternates()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 462
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getAlternates()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 465
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasSemanticResult()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 466
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 469
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasStateAlign()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 470
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getStateAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 473
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAccept()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 474
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getAccept()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 477
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasPrenormText()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 478
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getPrenormText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 481
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasScrubbedText()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 482
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getScrubbedText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 485
    :cond_a
    iput v2, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->cachedSize:I

    .line 486
    return v2
.end method

.method public getStateAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getWordAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    return-object v0
.end method

.method public getWordConfFeature(I)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "index"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    return-object v0
.end method

.method public getWordConfFeatureCount()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWordConfFeatureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature_:Ljava/util/List;

    return-object v0
.end method

.method public hasAccept()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAccept:Z

    return v0
.end method

.method public hasAlternates()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAlternates:Z

    return v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasConfidence:Z

    return v0
.end method

.method public hasPhoneAlign()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasPhoneAlign:Z

    return v0
.end method

.method public hasPrenormText()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasPrenormText:Z

    return v0
.end method

.method public hasScrubbedText()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasScrubbedText:Z

    return v0
.end method

.method public hasSemanticResult()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasSemanticResult:Z

    return v0
.end method

.method public hasStateAlign()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasStateAlign:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText:Z

    return v0
.end method

.method public hasWordAlign()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasWordAlign:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasSemanticResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasStateAlign()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getStateAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasPhoneAlign()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getPhoneAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasWordAlign()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 382
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getWordAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAlternates()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 385
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getAlternates()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    :cond_5
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
    .line 132
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 495
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 499
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 500
    :sswitch_0
    return-object p0

    .line 505
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 509
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setConfidence(F)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 513
    :sswitch_3
    new-instance v1, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    .line 514
    .local v1, value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 515
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setPhoneAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 519
    .end local v1           #value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    :sswitch_4
    new-instance v1, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    .line 520
    .restart local v1       #value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 521
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setWordAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 525
    .end local v1           #value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    :sswitch_5
    new-instance v1, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-direct {v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;-><init>()V

    .line 526
    .local v1, value:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 527
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->addWordConfFeature(Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 531
    .end local v1           #value:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :sswitch_6
    new-instance v1, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    invoke-direct {v1}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;-><init>()V

    .line 532
    .local v1, value:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 533
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setAlternates(Lcom/google/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 537
    .end local v1           #value:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;
    :sswitch_7
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;-><init>()V

    .line 538
    .local v1, value:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 539
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setSemanticResult(Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 543
    .end local v1           #value:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    :sswitch_8
    new-instance v1, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    invoke-direct {v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto;-><init>()V

    .line 544
    .local v1, value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 545
    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setStateAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 549
    .end local v1           #value:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setAccept(Z)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 553
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setPrenormText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 557
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->setScrubbedText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    goto :goto_0

    .line 495
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x52 -> :sswitch_8
        0x58 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
    .end sparse-switch
.end method

.method public setAccept(Z)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "value"

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAccept:Z

    .line 233
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->accept_:Z

    .line 234
    return-object p0
.end method

.method public setAlternates(Lcom/google/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "value"

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 345
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAlternates:Z

    .line 346
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->alternates_:Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    .line 347
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "value"

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasConfidence:Z

    .line 216
    iput p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->confidence_:F

    .line 217
    return-object p0
.end method

.method public setPhoneAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "value"

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 272
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasPhoneAlign:Z

    .line 273
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->phoneAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 274
    return-object p0
.end method

.method public setPrenormText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "value"

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasPrenormText:Z

    .line 162
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->prenormText_:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setScrubbedText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "value"

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasScrubbedText:Z

    .line 179
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->scrubbedText_:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public setSemanticResult(Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "value"

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 198
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasSemanticResult:Z

    .line 199
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->semanticResult_:Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    .line 200
    return-object p0
.end method

.method public setStateAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "value"

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 252
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasStateAlign:Z

    .line 253
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->stateAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 254
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "value"

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText:Z

    .line 145
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->text_:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public setWordAlign(Lcom/google/speech/decoder/common/Alignment$AlignmentProto;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "value"

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 292
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasWordAlign:Z

    .line 293
    iput-object p1, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordAlign_:Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    .line 294
    return-object p0
.end method

.method public setWordConfFeature(ILcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 314
    if-nez p2, :cond_0

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->wordConfFeature_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 318
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
    .line 393
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasConfidence()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getConfidence()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 399
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasPhoneAlign()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getPhoneAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 402
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasWordAlign()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 403
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getWordAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 405
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getWordConfFeatureList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 406
    .local v0, element:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 408
    .end local v0           #element:Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAlternates()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 409
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getAlternates()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 411
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasSemanticResult()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 412
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getSemanticResult()Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 414
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasStateAlign()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 415
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getStateAlign()Lcom/google/speech/decoder/common/Alignment$AlignmentProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 417
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAccept()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 418
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getAccept()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 420
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasPrenormText()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 421
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getPrenormText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 423
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasScrubbedText()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 424
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getScrubbedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 426
    :cond_a
    return-void
.end method
