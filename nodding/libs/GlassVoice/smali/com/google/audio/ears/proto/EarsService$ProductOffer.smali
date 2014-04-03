.class public final Lcom/google/audio/ears/proto/EarsService$ProductOffer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductOffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    }
.end annotation


# static fields
.field public static final IDENTIFIER_FIELD_NUMBER:I = 0x2

.field public static final PARENT_IDENTIFIER_FIELD_NUMBER:I = 0x3

.field public static final PARENT_PRICING_INFO_FIELD_NUMBER:I = 0x6

.field public static final PREVIEW_URL_FIELD_NUMBER:I = 0x7

.field public static final PRICING_INFO_FIELD_NUMBER:I = 0x4

.field public static final URL_FIELD_NUMBER:I = 0x5

.field public static final VENDOR_FIELD_NUMBER:I = 0x1

.field public static final VENDOR_ID_AMAZON:I = 0x0

.field public static final VENDOR_ID_GOOGLE_MUSIC:I = 0x2

.field public static final VENDOR_ID_ITUNES:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasIdentifier:Z

.field private hasParentIdentifier:Z

.field private hasPreviewUrl:Z

.field private hasUrl:Z

.field private hasVendor:Z

.field private identifier_:Ljava/lang/String;

.field private parentIdentifier_:Ljava/lang/String;

.field private parentPricingInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private previewUrl_:Ljava/lang/String;

.field private pricingInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private url_:Ljava/lang/String;

.field private vendor_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3236
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3451
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->vendor_:I

    .line 3468
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->identifier_:Ljava/lang/String;

    .line 3485
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentIdentifier_:Ljava/lang/String;

    .line 3501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo_:Ljava/util/List;

    .line 3534
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo_:Ljava/util/List;

    .line 3568
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->url_:Ljava/lang/String;

    .line 3585
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->previewUrl_:Ljava/lang/String;

    .line 3641
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->cachedSize:I

    .line 3236
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3745
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3739
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    return-object v0
.end method


# virtual methods
.method public addParentPricingInfo(Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3551
    if-nez p1, :cond_0

    .line 3552
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3554
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo_:Ljava/util/List;

    .line 3557
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3558
    return-object p0
.end method

.method public addPricingInfo(Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3518
    if-nez p1, :cond_0

    .line 3519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3521
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo_:Ljava/util/List;

    .line 3524
    :cond_1
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3525
    return-object p0
.end method

.method public final clear()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3600
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->clearVendor()Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 3601
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->clearIdentifier()Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 3602
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->clearParentIdentifier()Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 3603
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->clearPricingInfo()Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 3604
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->clearParentPricingInfo()Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 3605
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->clearUrl()Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 3606
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->clearPreviewUrl()Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    .line 3607
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->cachedSize:I

    .line 3608
    return-object p0
.end method

.method public clearIdentifier()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasIdentifier:Z

    .line 3478
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->identifier_:Ljava/lang/String;

    .line 3479
    return-object p0
.end method

.method public clearParentIdentifier()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasParentIdentifier:Z

    .line 3495
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentIdentifier_:Ljava/lang/String;

    .line 3496
    return-object p0
.end method

.method public clearParentPricingInfo()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3561
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo_:Ljava/util/List;

    .line 3562
    return-object p0
.end method

.method public clearPreviewUrl()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasPreviewUrl:Z

    .line 3595
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->previewUrl_:Ljava/lang/String;

    .line 3596
    return-object p0
.end method

.method public clearPricingInfo()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3528
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo_:Ljava/util/List;

    .line 3529
    return-object p0
.end method

.method public clearUrl()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    .line 3577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasUrl:Z

    .line 3578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->url_:Ljava/lang/String;

    .line 3579
    return-object p0
.end method

.method public clearVendor()Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3460
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasVendor:Z

    .line 3461
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->vendor_:I

    .line 3462
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3644
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->cachedSize:I

    if-gez v0, :cond_0

    .line 3646
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getSerializedSize()I

    .line 3648
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->cachedSize:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3469
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->identifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentIdentifier_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentPricingInfo(I)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 3541
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    return-object v0
.end method

.method public getParentPricingInfoCount()I
    .locals 1

    .prologue
    .line 3539
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParentPricingInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo_:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3586
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->previewUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPricingInfo(I)Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 3508
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    return-object v0
.end method

.method public getPricingInfoCount()I
    .locals 1

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPricingInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3504
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3653
    const/4 v2, 0x0

    .line 3654
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasVendor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3655
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getVendor()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 3658
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasIdentifier()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3659
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3662
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasParentIdentifier()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3663
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getParentIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3666
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getPricingInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3667
    .local v0, element:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3670
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasUrl()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3671
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3674
    :cond_4
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getParentPricingInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3675
    .restart local v0       #element:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 3678
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :cond_5
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasPreviewUrl()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3679
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getPreviewUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3682
    :cond_6
    iput v2, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->cachedSize:I

    .line 3683
    return v2
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()I
    .locals 1

    .prologue
    .line 3453
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->vendor_:I

    return v0
.end method

.method public hasIdentifier()Z
    .locals 1

    .prologue
    .line 3470
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasIdentifier:Z

    return v0
.end method

.method public hasParentIdentifier()Z
    .locals 1

    .prologue
    .line 3487
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasParentIdentifier:Z

    return v0
.end method

.method public hasPreviewUrl()Z
    .locals 1

    .prologue
    .line 3587
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasPreviewUrl:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 3570
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasUrl:Z

    return v0
.end method

.method public hasVendor()Z
    .locals 1

    .prologue
    .line 3452
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasVendor:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3612
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3691
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3692
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3696
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3697
    :sswitch_0
    return-object p0

    .line 3702
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->setVendor(I)Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    goto :goto_0

    .line 3706
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->setIdentifier(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    goto :goto_0

    .line 3710
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->setParentIdentifier(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    goto :goto_0

    .line 3714
    :sswitch_4
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;-><init>()V

    .line 3715
    .local v1, value:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3716
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->addPricingInfo(Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    goto :goto_0

    .line 3720
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->setUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    goto :goto_0

    .line 3724
    :sswitch_6
    new-instance v1, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    invoke-direct {v1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;-><init>()V

    .line 3725
    .restart local v1       #value:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3726
    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->addParentPricingInfo(Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    goto :goto_0

    .line 3730
    .end local v1           #value:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->setPreviewUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    goto :goto_0

    .line 3692
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 3233
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;

    move-result-object v0

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasIdentifier:Z

    .line 3473
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->identifier_:Ljava/lang/String;

    .line 3474
    return-object p0
.end method

.method public setParentIdentifier(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasParentIdentifier:Z

    .line 3490
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentIdentifier_:Ljava/lang/String;

    .line 3491
    return-object p0
.end method

.method public setParentPricingInfo(ILcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3544
    if-nez p2, :cond_0

    .line 3545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3547
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->parentPricingInfo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3548
    return-object p0
.end method

.method public setPreviewUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasPreviewUrl:Z

    .line 3590
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->previewUrl_:Ljava/lang/String;

    .line 3591
    return-object p0
.end method

.method public setPricingInfo(ILcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3511
    if-nez p2, :cond_0

    .line 3512
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3514
    :cond_0
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->pricingInfo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3515
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasUrl:Z

    .line 3573
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->url_:Ljava/lang/String;

    .line 3574
    return-object p0
.end method

.method public setVendor(I)Lcom/google/audio/ears/proto/EarsService$ProductOffer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasVendor:Z

    .line 3456
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->vendor_:I

    .line 3457
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
    .line 3618
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasVendor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3619
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getVendor()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3621
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasIdentifier()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3622
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3624
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasParentIdentifier()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3625
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getParentIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3627
    :cond_2
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getPricingInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3628
    .local v0, element:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 3630
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3631
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3633
    :cond_4
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getParentPricingInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;

    .line 3634
    .restart local v0       #element:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 3636
    .end local v0           #element:Lcom/google/audio/ears/proto/EarsService$ProductOffer$PricingInfo;
    :cond_5
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->hasPreviewUrl()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3637
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$ProductOffer;->getPreviewUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3639
    :cond_6
    return-void
.end method
