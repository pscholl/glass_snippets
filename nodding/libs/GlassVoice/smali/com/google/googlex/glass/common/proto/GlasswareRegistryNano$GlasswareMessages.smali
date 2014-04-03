.class public final Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GlasswareRegistryNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlasswareMessages"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages; = null

.field private static final LOCALE_DEFAULT:Ljava/lang/String; = "en_US"


# instance fields
.field private cachedSize:I

.field public description:Ljava/lang/String;

.field public locale:Ljava/lang/String;

.field public moreInfoTitle:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public permissions:Ljava/lang/String;

.field public shortDescription:Ljava/lang/String;

.field public speakableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 431
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->cachedSize:I

    .line 351
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    .line 370
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    .line 371
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    .line 372
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    .line 373
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    .line 374
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    .line 375
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->cachedSize:I

    .line 377
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    if-ne p1, p0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v1

    .line 383
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 384
    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    .line 385
    .local v0, other:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->cachedSize:I

    if-gez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->getSerializedSize()I

    .line 438
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 445
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 449
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 453
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 457
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 461
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 464
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 465
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 468
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 469
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 472
    :cond_6
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->cachedSize:I

    .line 473
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 395
    const/16 v0, 0x11

    .line 396
    .local v0, result:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 397
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 398
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 399
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 400
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 401
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    add-int v0, v3, v1

    .line 402
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    if-nez v3, :cond_6

    :goto_6
    add-int v0, v1, v2

    .line 403
    return v0

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 399
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    .line 401
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    .line 402
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 482
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 486
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    :sswitch_0
    return-object p0

    .line 492
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    goto :goto_0

    .line 496
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    goto :goto_0

    .line 500
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    goto :goto_0

    .line 504
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    goto :goto_0

    .line 508
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    goto :goto_0

    .line 512
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    goto :goto_0

    .line 516
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    goto :goto_0

    .line 482
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 412
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 415
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 418
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->shortDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 421
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->moreInfoTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 423
    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 424
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->permissions:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 426
    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 427
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->speakableName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 429
    :cond_6
    return-void
.end method
