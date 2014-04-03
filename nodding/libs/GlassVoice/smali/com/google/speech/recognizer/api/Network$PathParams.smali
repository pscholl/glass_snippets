.class public final Lcom/google/speech/recognizer/api/Network$PathParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathParams"
.end annotation


# static fields
.field public static final DICTIONARY_PRON_FIELD_NUMBER:I = 0x2

.field public static final LAST_PHONE_OPTIONAL_FIELD_NUMBER:I = 0x4

.field public static final OUTPUT_LABEL_POS_FIELD_NUMBER:I = 0x5

.field public static final PHONE_DECODE_FILEPATH_FIELD_NUMBER:I = 0x3

.field public static final REFERENCE_FIELD_NUMBER:I = 0x6

.field public static final SYMBOL_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private dictionaryPron_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasLastPhoneOptional:Z

.field private hasOutputLabelPos:Z

.field private hasPhoneDecodeFilepath:Z

.field private hasReference:Z

.field private hasSymbol:Z

.field private lastPhoneOptional_:Z

.field private outputLabelPos_:I

.field private phoneDecodeFilepath_:Ljava/lang/String;

.field private reference_:Ljava/lang/String;

.field private symbol_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    .line 321
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    .line 337
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron_:Ljava/util/List;

    .line 371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    .line 457
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->cachedSize:I

    .line 299
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/Network$PathParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    check-cast v0, Lcom/google/speech/recognizer/api/Network$PathParams;

    return-object v0
.end method


# virtual methods
.method public addDictionaryPron(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron_:Ljava/util/List;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    return-object p0
.end method

.method public final clear()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->clearSymbol()Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 421
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->clearReference()Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 422
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->clearDictionaryPron()Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 423
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->clearPhoneDecodeFilepath()Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 424
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->clearLastPhoneOptional()Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 425
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->clearOutputLabelPos()Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 426
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->cachedSize:I

    .line 427
    return-object p0
.end method

.method public clearDictionaryPron()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    .line 364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron_:Ljava/util/List;

    .line 365
    return-object p0
.end method

.method public clearLastPhoneOptional()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasLastPhoneOptional:Z

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    .line 399
    return-object p0
.end method

.method public clearOutputLabelPos()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 414
    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasOutputLabelPos:Z

    .line 415
    iput v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    .line 416
    return-object p0
.end method

.method public clearPhoneDecodeFilepath()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasPhoneDecodeFilepath:Z

    .line 381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    .line 382
    return-object p0
.end method

.method public clearReference()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasReference:Z

    .line 331
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    .line 332
    return-object p0
.end method

.method public clearSymbol()Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasSymbol:Z

    .line 314
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getSerializedSize()I

    .line 464
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->cachedSize:I

    return v0
.end method

.method public getDictionaryPron(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDictionaryPronCount()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDictionaryPronList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron_:Ljava/util/List;

    return-object v0
.end method

.method public getLastPhoneOptional()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    return v0
.end method

.method public getOutputLabelPos()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    return v0
.end method

.method public getPhoneDecodeFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 469
    const/4 v3, 0x0

    .line 470
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->hasSymbol()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 475
    :cond_0
    const/4 v0, 0x0

    .line 476
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getDictionaryPronList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 477
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 480
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    add-int/2addr v3, v0

    .line 481
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getDictionaryPronList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 483
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->hasPhoneDecodeFilepath()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 484
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getPhoneDecodeFilepath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 487
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->hasLastPhoneOptional()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 488
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getLastPhoneOptional()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 491
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->hasOutputLabelPos()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 492
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getOutputLabelPos()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 495
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->hasReference()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 496
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getReference()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 499
    :cond_5
    iput v3, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->cachedSize:I

    .line 500
    return v3
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLastPhoneOptional()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasLastPhoneOptional:Z

    return v0
.end method

.method public hasOutputLabelPos()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasOutputLabelPos:Z

    return v0
.end method

.method public hasPhoneDecodeFilepath()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasPhoneDecodeFilepath:Z

    return v0
.end method

.method public hasReference()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasReference:Z

    return v0
.end method

.method public hasSymbol()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasSymbol:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 431
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
    .line 296
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/Network$PathParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/Network$PathParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 509
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 513
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/Network$PathParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    :sswitch_0
    return-object p0

    .line 519
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/Network$PathParams;->setSymbol(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;

    goto :goto_0

    .line 523
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/Network$PathParams;->addDictionaryPron(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;

    goto :goto_0

    .line 527
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/Network$PathParams;->setPhoneDecodeFilepath(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;

    goto :goto_0

    .line 531
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/Network$PathParams;->setLastPhoneOptional(Z)Lcom/google/speech/recognizer/api/Network$PathParams;

    goto :goto_0

    .line 535
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/Network$PathParams;->setOutputLabelPos(I)Lcom/google/speech/recognizer/api/Network$PathParams;

    goto :goto_0

    .line 539
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/Network$PathParams;->setReference(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;

    goto :goto_0

    .line 509
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setDictionaryPron(ILjava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 347
    if-nez p2, :cond_0

    .line 348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-object p0
.end method

.method public setLastPhoneOptional(Z)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasLastPhoneOptional:Z

    .line 393
    iput-boolean p1, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->lastPhoneOptional_:Z

    .line 394
    return-object p0
.end method

.method public setOutputLabelPos(I)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasOutputLabelPos:Z

    .line 410
    iput p1, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->outputLabelPos_:I

    .line 411
    return-object p0
.end method

.method public setPhoneDecodeFilepath(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasPhoneDecodeFilepath:Z

    .line 376
    iput-object p1, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->phoneDecodeFilepath_:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public setReference(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasReference:Z

    .line 326
    iput-object p1, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->reference_:Ljava/lang/String;

    .line 327
    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->hasSymbol:Z

    .line 309
    iput-object p1, p0, Lcom/google/speech/recognizer/api/Network$PathParams;->symbol_:Ljava/lang/String;

    .line 310
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
    .line 437
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->hasSymbol()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getDictionaryPronList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 443
    .end local v0           #element:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->hasPhoneDecodeFilepath()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getPhoneDecodeFilepath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 446
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->hasLastPhoneOptional()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 447
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getLastPhoneOptional()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 449
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->hasOutputLabelPos()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 450
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getOutputLabelPos()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 452
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->hasReference()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 453
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/Network$PathParams;->getReference()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 455
    :cond_5
    return-void
.end method
