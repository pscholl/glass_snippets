.class public final Lcom/google/speech/s3/PinholeStream$PinholeHeader;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeHeader"
.end annotation


# static fields
.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static final OVERWRITE_FIELD_NUMBER:I = 0x3

.field public static final OVERWRITE_MODE_APPEND:I = 0x1

.field public static final OVERWRITE_MODE_NO_OVERWRITE:I = 0x0

.field public static final OVERWRITE_MODE_OVERWRITE:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasKey:Z

.field private hasOverwrite:Z

.field private hasValue:Z

.field private key_:Ljava/lang/String;

.field private overwrite_:I

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 337
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->key_:Ljava/lang/String;

    .line 354
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->value_:Ljava/lang/String;

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->overwrite_:I

    .line 411
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->cachedSize:I

    .line 327
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->clearKey()Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 387
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->clearValue()Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 388
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->clearOverwrite()Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 389
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->cachedSize:I

    .line 390
    return-object p0
.end method

.method public clearKey()Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasKey:Z

    .line 347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->key_:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public clearOverwrite()Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasOverwrite:Z

    .line 381
    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->overwrite_:I

    .line 382
    return-object p0
.end method

.method public clearValue()Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasValue:Z

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->value_:Ljava/lang/String;

    .line 365
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->cachedSize:I

    if-gez v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->getSerializedSize()I

    .line 418
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->cachedSize:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public getOverwrite()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->overwrite_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasOverwrite()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->getOverwrite()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_2
    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->cachedSize:I

    .line 437
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasKey:Z

    return v0
.end method

.method public hasOverwrite()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasOverwrite:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 394
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
    .line 324
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 446
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 450
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    :sswitch_0
    return-object p0

    .line 456
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    goto :goto_0

    .line 460
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    goto :goto_0

    .line 464
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    goto :goto_0

    .line 446
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .parameter "value"

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasKey:Z

    .line 342
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->key_:Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public setOverwrite(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .parameter "value"

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasOverwrite:Z

    .line 376
    iput p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->overwrite_:I

    .line 377
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .parameter "value"

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasValue:Z

    .line 359
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->value_:Ljava/lang/String;

    .line 360
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
    .line 400
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->hasOverwrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;->getOverwrite()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 409
    :cond_2
    return-void
.end method
