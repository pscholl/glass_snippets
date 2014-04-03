.class public final Llocation/unified/LocationDescriptorProto$LatLng;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLng"
.end annotation


# static fields
.field public static final LATITUDE_E7_FIELD_NUMBER:I = 0x1

.field public static final LONGITUDE_E7_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLatitudeE7:Z

.field private hasLongitudeE7:Z

.field private latitudeE7_:I

.field private longitudeE7_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 345
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 350
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    .line 367
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    .line 403
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->cachedSize:I

    .line 345
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    new-instance v0, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LatLng;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 457
    new-instance v0, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LatLng;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LatLng;

    check-cast v0, Llocation/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method


# virtual methods
.method public final clear()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->clearLatitudeE7()Llocation/unified/LocationDescriptorProto$LatLng;

    .line 383
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->clearLongitudeE7()Llocation/unified/LocationDescriptorProto$LatLng;

    .line 384
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->cachedSize:I

    .line 385
    return-object p0
.end method

.method public clearLatitudeE7()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->hasLatitudeE7:Z

    .line 360
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    .line 361
    return-object p0
.end method

.method public clearLongitudeE7()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->hasLongitudeE7:Z

    .line 377
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    .line 378
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->cachedSize:I

    if-gez v0, :cond_0

    .line 408
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->getSerializedSize()I

    .line 410
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->cachedSize:I

    return v0
.end method

.method public getLatitudeE7()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    return v0
.end method

.method public getLongitudeE7()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, size:I
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->hasLatitudeE7()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    const/4 v1, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->getLatitudeE7()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->hasLongitudeE7()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    const/4 v1, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->getLongitudeE7()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    :cond_1
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->cachedSize:I

    .line 425
    return v0
.end method

.method public hasLatitudeE7()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->hasLatitudeE7:Z

    return v0
.end method

.method public hasLongitudeE7()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->hasLongitudeE7:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 389
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
    .line 342
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LatLng;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 434
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 438
    invoke-virtual {p0, p1, v0}, Llocation/unified/LocationDescriptorProto$LatLng;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    :sswitch_0
    return-object p0

    .line 444
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LatLng;->setLatitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    goto :goto_0

    .line 448
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LatLng;->setLongitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    goto :goto_0

    .line 434
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLatitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter "value"

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->hasLatitudeE7:Z

    .line 355
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->latitudeE7_:I

    .line 356
    return-object p0
.end method

.method public setLongitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1
    .parameter "value"

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LatLng;->hasLongitudeE7:Z

    .line 372
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LatLng;->longitudeE7_:I

    .line 373
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
    .line 395
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->hasLatitudeE7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const/4 v0, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->getLatitudeE7()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSFixed32(II)V

    .line 398
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->hasLongitudeE7()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    const/4 v0, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LatLng;->getLongitudeE7()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSFixed32(II)V

    .line 401
    :cond_1
    return-void
.end method
