.class public final Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService$ProductOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PricingInfo"
.end annotation


# static fields
.field public static final COUNTRY_FIELD_NUMBER:I = 0x2

.field public static final CURRENCY_CODE_FIELD_NUMBER:I = 0x4

.field public static final PRICE_FIELD_NUMBER:I = 0x1

.field public static final PRICE_MICROS_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private country_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currencyCode_:Ljava/lang/String;

.field private hasCurrencyCode:Z

.field private hasPrice:Z

.field private hasPriceMicros:Z

.field private priceMicros_:J

.field private price_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3246
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->price_:Ljava/lang/String;

    .line 3267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country_:Ljava/util/List;

    .line 3301
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->priceMicros_:J

    .line 3318
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->currencyCode_:Ljava/lang/String;

    .line 3362
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->cachedSize:I

    .line 3246
    return-void
.end method


# virtual methods
.method public addCountry(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 3284
    if-nez p1, :cond_0

    .line 3285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3287
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country_:Ljava/util/List;

    .line 3290
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3291
    return-object p0
.end method

.method public final clear()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1

    .prologue
    .line 3333
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->clearPrice()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3334
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->clearCountry()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3335
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->clearPriceMicros()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3336
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->clearCurrencyCode()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3337
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->cachedSize:I

    .line 3338
    return-object p0
.end method

.method public clearCountry()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1

    .prologue
    .line 3294
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country_:Ljava/util/List;

    .line 3295
    return-object p0
.end method

.method public clearCurrencyCode()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1

    .prologue
    .line 3327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasCurrencyCode:Z

    .line 3328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->currencyCode_:Ljava/lang/String;

    .line 3329
    return-object p0
.end method

.method public clearPrice()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1

    .prologue
    .line 3260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasPrice:Z

    .line 3261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->price_:Ljava/lang/String;

    .line 3262
    return-object p0
.end method

.method public clearPriceMicros()Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 2

    .prologue
    .line 3310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasPriceMicros:Z

    .line 3311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->priceMicros_:J

    .line 3312
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3365
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 3367
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->getSerializedSize()I

    .line 3369
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->cachedSize:I

    return v0
.end method

.method public getCountry(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCount()I
    .locals 1

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCountryList()Ljava/util/List;
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
    .line 3270
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country_:Ljava/util/List;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->currencyCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->price_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceMicros()J
    .locals 2

    .prologue
    .line 3302
    iget-wide v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->priceMicros_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 3374
    const/4 v3, 0x0

    .line 3375
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasPrice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3376
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3380
    :cond_0
    const/4 v0, 0x0

    .line 3381
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->getCountryList()Ljava/util/List;

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

    .line 3382
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 3385
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    add-int/2addr v3, v0

    .line 3386
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->getCountryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 3388
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasPriceMicros()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3389
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->getPriceMicros()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 3392
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasCurrencyCode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3393
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 3396
    :cond_3
    iput v3, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->cachedSize:I

    .line 3397
    return v3
.end method

.method public hasCurrencyCode()Z
    .locals 1

    .prologue
    .line 3320
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasCurrencyCode:Z

    return v0
.end method

.method public hasPrice()Z
    .locals 1

    .prologue
    .line 3253
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasPrice:Z

    return v0
.end method

.method public hasPriceMicros()Z
    .locals 1

    .prologue
    .line 3303
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasPriceMicros:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3342
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3405
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3406
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3410
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3411
    :sswitch_0
    return-object p0

    .line 3416
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->setPrice(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    goto :goto_0

    .line 3420
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->addCountry(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    goto :goto_0

    .line 3424
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->setPriceMicros(J)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    goto :goto_0

    .line 3428
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->setCurrencyCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    goto :goto_0

    .line 3406
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
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
    .line 3243
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3443
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3437
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    return-object v0
.end method

.method public setCountry(ILjava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3277
    if-nez p2, :cond_0

    .line 3278
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3280
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->country_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3281
    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 3322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasCurrencyCode:Z

    .line 3323
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->currencyCode_:Ljava/lang/String;

    .line 3324
    return-object p0
.end method

.method public setPrice(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 3255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasPrice:Z

    .line 3256
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->price_:Ljava/lang/String;

    .line 3257
    return-object p0
.end method

.method public setPriceMicros(J)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 3305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasPriceMicros:Z

    .line 3306
    iput-wide p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->priceMicros_:J

    .line 3307
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3348
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasPrice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3349
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3351
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->getCountryList()Ljava/util/List;

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

    .line 3352
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 3354
    .end local v0           #element:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasPriceMicros()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3355
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->getPriceMicros()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 3357
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->hasCurrencyCode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3358
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3360
    :cond_3
    return-void
.end method
