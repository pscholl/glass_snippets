.class public final Lspeech/InterpretationProto$Interpretation;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "InterpretationProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspeech/InterpretationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interpretation"
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x2

.field public static final GRAMMAR_ID_FIELD_NUMBER:I = 0x3

.field public static final SLOT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private confidence_:F

.field private grammarId_:Ljava/lang/String;

.field private hasConfidence:Z

.field private hasGrammarId:Z

.field private slot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lspeech/InterpretationProto$Slot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 416
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Interpretation;->slot_:Ljava/util/List;

    .line 450
    const/high16 v0, 0x3f80

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->confidence_:F

    .line 467
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Interpretation;->grammarId_:Ljava/lang/String;

    .line 510
    const/4 v0, -0x1

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->cachedSize:I

    .line 412
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/InterpretationProto$Interpretation;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    new-instance v0, Lspeech/InterpretationProto$Interpretation;

    invoke-direct {v0}, Lspeech/InterpretationProto$Interpretation;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/InterpretationProto$Interpretation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/InterpretationProto$Interpretation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lspeech/InterpretationProto$Interpretation;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v0, Lspeech/InterpretationProto$Interpretation;

    invoke-direct {v0}, Lspeech/InterpretationProto$Interpretation;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/InterpretationProto$Interpretation;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Interpretation;

    check-cast v0, Lspeech/InterpretationProto$Interpretation;

    return-object v0
.end method


# virtual methods
.method public addSlot(Lspeech/InterpretationProto$Slot;)Lspeech/InterpretationProto$Interpretation;
    .locals 1
    .parameter "value"

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 434
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 436
    :cond_0
    iget-object v0, p0, Lspeech/InterpretationProto$Interpretation;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lspeech/InterpretationProto$Interpretation;->slot_:Ljava/util/List;

    .line 439
    :cond_1
    iget-object v0, p0, Lspeech/InterpretationProto$Interpretation;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    return-object p0
.end method

.method public final clear()Lspeech/InterpretationProto$Interpretation;
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->clearSlot()Lspeech/InterpretationProto$Interpretation;

    .line 483
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->clearConfidence()Lspeech/InterpretationProto$Interpretation;

    .line 484
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->clearGrammarId()Lspeech/InterpretationProto$Interpretation;

    .line 485
    const/4 v0, -0x1

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->cachedSize:I

    .line 486
    return-object p0
.end method

.method public clearConfidence()Lspeech/InterpretationProto$Interpretation;
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/InterpretationProto$Interpretation;->hasConfidence:Z

    .line 460
    const/high16 v0, 0x3f80

    iput v0, p0, Lspeech/InterpretationProto$Interpretation;->confidence_:F

    .line 461
    return-object p0
.end method

.method public clearGrammarId()Lspeech/InterpretationProto$Interpretation;
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/InterpretationProto$Interpretation;->hasGrammarId:Z

    .line 477
    const-string v0, ""

    iput-object v0, p0, Lspeech/InterpretationProto$Interpretation;->grammarId_:Ljava/lang/String;

    .line 478
    return-object p0
.end method

.method public clearSlot()Lspeech/InterpretationProto$Interpretation;
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lspeech/InterpretationProto$Interpretation;->slot_:Ljava/util/List;

    .line 444
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lspeech/InterpretationProto$Interpretation;->cachedSize:I

    if-gez v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->getSerializedSize()I

    .line 517
    :cond_0
    iget v0, p0, Lspeech/InterpretationProto$Interpretation;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lspeech/InterpretationProto$Interpretation;->confidence_:F

    return v0
.end method

.method public getGrammarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lspeech/InterpretationProto$Interpretation;->grammarId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 522
    const/4 v2, 0x0

    .line 523
    .local v2, size:I
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->getSlotList()Ljava/util/List;

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

    check-cast v0, Lspeech/InterpretationProto$Slot;

    .line 524
    .local v0, element:Lspeech/InterpretationProto$Slot;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 527
    .end local v0           #element:Lspeech/InterpretationProto$Slot;
    :cond_0
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->hasConfidence()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    const/4 v3, 0x2

    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->getConfidence()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 531
    :cond_1
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->hasGrammarId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 532
    const/4 v3, 0x3

    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->getGrammarId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 535
    :cond_2
    iput v2, p0, Lspeech/InterpretationProto$Interpretation;->cachedSize:I

    .line 536
    return v2
.end method

.method public getSlot(I)Lspeech/InterpretationProto$Slot;
    .locals 1
    .parameter "index"

    .prologue
    .line 423
    iget-object v0, p0, Lspeech/InterpretationProto$Interpretation;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspeech/InterpretationProto$Slot;

    return-object v0
.end method

.method public getSlotCount()I
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lspeech/InterpretationProto$Interpretation;->slot_:Ljava/util/List;

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
            "Lspeech/InterpretationProto$Slot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lspeech/InterpretationProto$Interpretation;->slot_:Ljava/util/List;

    return-object v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lspeech/InterpretationProto$Interpretation;->hasConfidence:Z

    return v0
.end method

.method public hasGrammarId()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lspeech/InterpretationProto$Interpretation;->hasGrammarId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    .line 490
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->getSlotList()Ljava/util/List;

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

    check-cast v0, Lspeech/InterpretationProto$Slot;

    .line 491
    .local v0, element:Lspeech/InterpretationProto$Slot;
    invoke-virtual {v0}, Lspeech/InterpretationProto$Slot;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 493
    .end local v0           #element:Lspeech/InterpretationProto$Slot;
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
    .line 409
    invoke-virtual {p0, p1}, Lspeech/InterpretationProto$Interpretation;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/InterpretationProto$Interpretation;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/InterpretationProto$Interpretation;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 545
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 549
    invoke-virtual {p0, p1, v0}, Lspeech/InterpretationProto$Interpretation;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    :sswitch_0
    return-object p0

    .line 555
    :sswitch_1
    new-instance v1, Lspeech/InterpretationProto$Slot;

    invoke-direct {v1}, Lspeech/InterpretationProto$Slot;-><init>()V

    .line 556
    .local v1, value:Lspeech/InterpretationProto$Slot;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 557
    invoke-virtual {p0, v1}, Lspeech/InterpretationProto$Interpretation;->addSlot(Lspeech/InterpretationProto$Slot;)Lspeech/InterpretationProto$Interpretation;

    goto :goto_0

    .line 561
    .end local v1           #value:Lspeech/InterpretationProto$Slot;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lspeech/InterpretationProto$Interpretation;->setConfidence(F)Lspeech/InterpretationProto$Interpretation;

    goto :goto_0

    .line 565
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lspeech/InterpretationProto$Interpretation;->setGrammarId(Ljava/lang/String;)Lspeech/InterpretationProto$Interpretation;

    goto :goto_0

    .line 545
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setConfidence(F)Lspeech/InterpretationProto$Interpretation;
    .locals 1
    .parameter "value"

    .prologue
    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/InterpretationProto$Interpretation;->hasConfidence:Z

    .line 455
    iput p1, p0, Lspeech/InterpretationProto$Interpretation;->confidence_:F

    .line 456
    return-object p0
.end method

.method public setGrammarId(Ljava/lang/String;)Lspeech/InterpretationProto$Interpretation;
    .locals 1
    .parameter "value"

    .prologue
    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/InterpretationProto$Interpretation;->hasGrammarId:Z

    .line 472
    iput-object p1, p0, Lspeech/InterpretationProto$Interpretation;->grammarId_:Ljava/lang/String;

    .line 473
    return-object p0
.end method

.method public setSlot(ILspeech/InterpretationProto$Slot;)Lspeech/InterpretationProto$Interpretation;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 426
    if-nez p2, :cond_0

    .line 427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 429
    :cond_0
    iget-object v0, p0, Lspeech/InterpretationProto$Interpretation;->slot_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 430
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
    .line 499
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->getSlotList()Ljava/util/List;

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

    check-cast v0, Lspeech/InterpretationProto$Slot;

    .line 500
    .local v0, element:Lspeech/InterpretationProto$Slot;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 502
    .end local v0           #element:Lspeech/InterpretationProto$Slot;
    :cond_0
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->hasConfidence()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    const/4 v2, 0x2

    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->getConfidence()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 505
    :cond_1
    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->hasGrammarId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    const/4 v2, 0x3

    invoke-virtual {p0}, Lspeech/InterpretationProto$Interpretation;->getGrammarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 508
    :cond_2
    return-void
.end method
