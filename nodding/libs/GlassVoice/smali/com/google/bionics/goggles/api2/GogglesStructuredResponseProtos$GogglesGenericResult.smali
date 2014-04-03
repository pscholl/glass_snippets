.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesGenericResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;,
        Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    }
.end annotation


# static fields
.field public static final FACT_FIELD_NUMBER:I = 0x8

.field public static final FIFE_IMAGE_URL_FIELD_NUMBER:I = 0x2

.field public static final LINK_FIELD_NUMBER:I = 0x7

.field public static final SUBTITLE_FIELD_NUMBER:I = 0x3

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private fact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;",
            ">;"
        }
    .end annotation
.end field

.field private fifeImageUrl_:Ljava/lang/String;

.field private hasFifeImageUrl:Z

.field private hasSubtitle:Z

.field private hasTitle:Z

.field private link_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 300
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->title_:Ljava/lang/String;

    .line 317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->subtitle_:Ljava/lang/String;

    .line 334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fifeImageUrl_:Ljava/lang/String;

    .line 350
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link_:Ljava/util/List;

    .line 383
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fact_:Ljava/util/List;

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 530
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    return-object v0
.end method


# virtual methods
.method public addFact(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fact_:Ljava/util/List;

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    return-object p0
.end method

.method public addLink(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 367
    if-nez p1, :cond_0

    .line 368
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link_:Ljava/util/List;

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-object p0
.end method

.method public final clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->clearTitle()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 416
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->clearSubtitle()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 417
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->clearFifeImageUrl()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 418
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->clearLink()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 419
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->clearFact()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->cachedSize:I

    .line 421
    return-object p0
.end method

.method public clearFact()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1

    .prologue
    .line 410
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fact_:Ljava/util/List;

    .line 411
    return-object p0
.end method

.method public clearFifeImageUrl()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasFifeImageUrl:Z

    .line 344
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fifeImageUrl_:Ljava/lang/String;

    .line 345
    return-object p0
.end method

.method public clearLink()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link_:Ljava/util/List;

    .line 378
    return-object p0
.end method

.method public clearSubtitle()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasSubtitle:Z

    .line 327
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->subtitle_:Ljava/lang/String;

    .line 328
    return-object p0
.end method

.method public clearTitle()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasTitle:Z

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->title_:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->getSerializedSize()I

    .line 455
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->cachedSize:I

    return v0
.end method

.method public getFact(I)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    .locals 1
    .parameter "index"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    return-object v0
.end method

.method public getFactCount()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fact_:Ljava/util/List;

    return-object v0
.end method

.method public getFifeImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fifeImageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLink(I)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1
    .parameter "index"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    return-object v0
.end method

.method public getLinkCount()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 460
    const/4 v2, 0x0

    .line 461
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasFifeImageUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 466
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->getFifeImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasSubtitle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 470
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 473
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->getLinkList()Ljava/util/List;

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

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    .line 474
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 477
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    :cond_3
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->getFactList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    .line 478
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 481
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    :cond_4
    iput v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->cachedSize:I

    .line 482
    return v2
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->subtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFifeImageUrl()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasFifeImageUrl:Z

    return v0
.end method

.method public hasSubtitle()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasSubtitle:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 491
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 495
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    :sswitch_0
    return-object p0

    .line 501
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->setTitle(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    goto :goto_0

    .line 505
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->setFifeImageUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    goto :goto_0

    .line 509
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->setSubtitle(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    goto :goto_0

    .line 513
    :sswitch_4
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;-><init>()V

    .line 514
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 515
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->addLink(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    goto :goto_0

    .line 519
    .end local v1           #value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    :sswitch_5
    new-instance v1, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    invoke-direct {v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;-><init>()V

    .line 520
    .local v1, value:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 521
    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->addFact(Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    goto :goto_0

    .line 491
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x3a -> :sswitch_4
        0x42 -> :sswitch_5
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;

    move-result-object v0

    return-object v0
.end method

.method public setFact(ILcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 393
    if-nez p2, :cond_0

    .line 394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fact_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-object p0
.end method

.method public setFifeImageUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasFifeImageUrl:Z

    .line 339
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->fifeImageUrl_:Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public setLink(ILcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 360
    if-nez p2, :cond_0

    .line 361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->link_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasSubtitle:Z

    .line 322
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->subtitle_:Ljava/lang/String;

    .line 323
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasTitle:Z

    .line 305
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->title_:Ljava/lang/String;

    .line 306
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
    .line 431
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasFifeImageUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->getFifeImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->hasSubtitle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 438
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 440
    :cond_2
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->getLinkList()Ljava/util/List;

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

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    .line 441
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 443
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    :cond_3
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;->getFactList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;

    .line 444
    .local v0, element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 446
    .end local v0           #element:Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Fact;
    :cond_4
    return-void
.end method
