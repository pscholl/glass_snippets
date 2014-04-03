.class public final Lcom/google/speech/common/Alternates$AlternateSpan;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateSpan"
.end annotation


# static fields
.field public static final ALTERNATES_FIELD_NUMBER:I = 0x3

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x4

.field public static final LENGTH_FIELD_NUMBER:I = 0x2

.field public static final START_FIELD_NUMBER:I = 0x1


# instance fields
.field private alternates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private confidence_:F

.field private hasConfidence:Z

.field private hasLength:Z

.field private hasStart:Z

.field private length_:I

.field private start_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 346
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 351
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->start_:I

    .line 368
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->length_:I

    .line 384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->confidence_:F

    .line 467
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->cachedSize:I

    .line 346
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    new-instance v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$AlternateSpan;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$AlternateSpan;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    check-cast v0, Lcom/google/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method


# virtual methods
.method public addAlternates(Lcom/google/speech/common/Alternates$Alternate;)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter "value"

    .prologue
    .line 401
    if-nez p1, :cond_0

    .line 402
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    return-object p0
.end method

.method public final clear()Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->clearStart()Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 434
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->clearLength()Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 435
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->clearAlternates()Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 436
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->clearConfidence()Lcom/google/speech/common/Alternates$AlternateSpan;

    .line 437
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->cachedSize:I

    .line 438
    return-object p0
.end method

.method public clearAlternates()Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    .line 412
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->hasConfidence:Z

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->confidence_:F

    .line 429
    return-object p0
.end method

.method public clearLength()Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->hasLength:Z

    .line 378
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->length_:I

    .line 379
    return-object p0
.end method

.method public clearStart()Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->hasStart:Z

    .line 361
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->start_:I

    .line 362
    return-object p0
.end method

.method public getAlternates(I)Lcom/google/speech/common/Alternates$Alternate;
    .locals 1
    .parameter "index"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$Alternate;

    return-object v0
.end method

.method public getAlternatesCount()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->cachedSize:I

    if-gez v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->getSerializedSize()I

    .line 474
    :cond_0
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->confidence_:F

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->length_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 479
    const/4 v2, 0x0

    .line 480
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->hasStart()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->hasLength()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->getLength()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->getAlternatesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$Alternate;

    .line 489
    .local v0, element:Lcom/google/speech/common/Alternates$Alternate;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 492
    .end local v0           #element:Lcom/google/speech/common/Alternates$Alternate;
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->hasConfidence()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 493
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->getConfidence()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 496
    :cond_3
    iput v2, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->cachedSize:I

    .line 497
    return v2
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->start_:I

    return v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->hasConfidence:Z

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->hasLength:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->hasStart:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-boolean v3, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->hasStart:Z

    if-nez v3, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v2

    .line 443
    :cond_1
    iget-boolean v3, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->hasLength:Z

    if-eqz v3, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->getAlternatesList()Ljava/util/List;

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

    check-cast v0, Lcom/google/speech/common/Alternates$Alternate;

    .line 445
    .local v0, element:Lcom/google/speech/common/Alternates$Alternate;
    invoke-virtual {v0}, Lcom/google/speech/common/Alternates$Alternate;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 447
    .end local v0           #element:Lcom/google/speech/common/Alternates$Alternate;
    :cond_3
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
    .line 343
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$AlternateSpan;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$AlternateSpan;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 506
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 510
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/common/Alternates$AlternateSpan;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    :sswitch_0
    return-object p0

    .line 516
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/common/Alternates$AlternateSpan;->setStart(I)Lcom/google/speech/common/Alternates$AlternateSpan;

    goto :goto_0

    .line 520
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/common/Alternates$AlternateSpan;->setLength(I)Lcom/google/speech/common/Alternates$AlternateSpan;

    goto :goto_0

    .line 524
    :sswitch_3
    new-instance v1, Lcom/google/speech/common/Alternates$Alternate;

    invoke-direct {v1}, Lcom/google/speech/common/Alternates$Alternate;-><init>()V

    .line 525
    .local v1, value:Lcom/google/speech/common/Alternates$Alternate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 526
    invoke-virtual {p0, v1}, Lcom/google/speech/common/Alternates$AlternateSpan;->addAlternates(Lcom/google/speech/common/Alternates$Alternate;)Lcom/google/speech/common/Alternates$AlternateSpan;

    goto :goto_0

    .line 530
    .end local v1           #value:Lcom/google/speech/common/Alternates$Alternate;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/common/Alternates$AlternateSpan;->setConfidence(F)Lcom/google/speech/common/Alternates$AlternateSpan;

    goto :goto_0

    .line 506
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public setAlternates(ILcom/google/speech/common/Alternates$Alternate;)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 394
    if-nez p2, :cond_0

    .line 395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->alternates_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 398
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter "value"

    .prologue
    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->hasConfidence:Z

    .line 423
    iput p1, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->confidence_:F

    .line 424
    return-object p0
.end method

.method public setLength(I)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter "value"

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->hasLength:Z

    .line 373
    iput p1, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->length_:I

    .line 374
    return-object p0
.end method

.method public setStart(I)Lcom/google/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter "value"

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->hasStart:Z

    .line 356
    iput p1, p0, Lcom/google/speech/common/Alternates$AlternateSpan;->start_:I

    .line 357
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
    .line 453
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->hasStart()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->hasLength()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->getLength()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->getAlternatesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$Alternate;

    .line 460
    .local v0, element:Lcom/google/speech/common/Alternates$Alternate;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 462
    .end local v0           #element:Lcom/google/speech/common/Alternates$Alternate;
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->hasConfidence()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 463
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateSpan;->getConfidence()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 465
    :cond_3
    return-void
.end method
