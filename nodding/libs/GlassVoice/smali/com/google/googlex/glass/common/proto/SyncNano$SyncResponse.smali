.class public final Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;


# instance fields
.field private cachedSize:I

.field public deleteFailedItemIds:[Ljava/lang/String;

.field public insertFailedItemIds:[Ljava/lang/String;

.field public responseCode:I

.field public selectContinuationToken:[B

.field public selectMaxWriteTimestamp:Ljava/lang/Long;

.field public selectStartTime:Ljava/lang/Long;

.field public selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public syncContinuationToken:[B

.field public syncEndTime:Ljava/lang/Long;

.field public syncStartTime:Ljava/lang/Long;

.field public updateFailedItemIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 244
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    .line 247
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 250
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .line 253
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .line 256
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .line 393
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->cachedSize:I

    .line 237
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    .line 272
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 273
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .line 275
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .line 276
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    .line 277
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    .line 278
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken:[B

    .line 279
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    .line 280
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken:[B

    .line 281
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->cachedSize:I

    .line 283
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    if-ne p1, p0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v1

    .line 289
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 290
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    .line 291
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken:[B

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->getSerializedSize()I

    .line 400
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    .line 405
    const/4 v5, 0x0

    .line 406
    .local v5, size:I
    const/4 v6, 0x1

    iget v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 408
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v6, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 410
    .local v2, element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v6, 0x2

    invoke-static {v6, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 409
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_2

    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 417
    .local v2, element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 416
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 420
    .end local v2           #element:Ljava/lang/String;
    :cond_1
    add-int/2addr v5, v1

    .line 421
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 423
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 424
    const/4 v1, 0x0

    .line 425
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 426
    .restart local v2       #element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 425
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 429
    .end local v2           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v5, v1

    .line 430
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 432
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_6

    .line 433
    const/4 v1, 0x0

    .line 434
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v2, v0, v3

    .line 435
    .restart local v2       #element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 434
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 438
    .end local v2           #element:Ljava/lang/String;
    :cond_5
    add-int/2addr v5, v1

    .line 439
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 441
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    if-eqz v6, :cond_7

    .line 442
    const/4 v6, 0x6

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 445
    :cond_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    if-eqz v6, :cond_8

    .line 446
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 449
    :cond_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken:[B

    if-eqz v6, :cond_9

    .line 450
    const/16 v6, 0x8

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken:[B

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v6

    add-int/2addr v5, v6

    .line 453
    :cond_9
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    if-eqz v6, :cond_a

    .line 454
    const/16 v6, 0x9

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 457
    :cond_a
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken:[B

    if-eqz v6, :cond_b

    .line 458
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken:[B

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v6

    add-int/2addr v5, v6

    .line 461
    :cond_b
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    if-eqz v6, :cond_c

    .line 462
    const/16 v6, 0xb

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v6

    add-int/2addr v5, v6

    .line 465
    :cond_c
    iput v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->cachedSize:I

    .line 466
    return v5
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v3, 0x0

    .line 305
    const/16 v1, 0x11

    .line 306
    .local v1, result:I
    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    add-int/lit16 v1, v2, 0x20f

    .line 307
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    if-nez v2, :cond_8

    mul-int/lit8 v1, v1, 0x1f

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    if-nez v2, :cond_a

    mul-int/lit8 v1, v1, 0x1f

    .line 325
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    if-nez v2, :cond_c

    mul-int/lit8 v1, v1, 0x1f

    .line 331
    :cond_3
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    if-nez v2, :cond_e

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 332
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    if-nez v2, :cond_f

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 333
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken:[B

    if-nez v2, :cond_10

    mul-int/lit8 v1, v1, 0x1f

    .line 339
    :cond_4
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    if-nez v2, :cond_11

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 340
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken:[B

    if-nez v2, :cond_12

    mul-int/lit8 v1, v1, 0x1f

    .line 346
    :cond_5
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    if-nez v4, :cond_13

    :goto_3
    add-int v1, v2, v3

    .line 347
    return v1

    .line 309
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 310
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 310
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_5

    .line 315
    .end local v0           #i:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 316
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 316
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 321
    .end local v0           #i:I
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 322
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_b

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 322
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 327
    .end local v0           #i:I
    :cond_c
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 328
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_d

    move v2, v3

    :goto_b
    add-int v1, v4, v2

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 328
    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    .line 331
    .end local v0           #i:I
    :cond_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto/16 :goto_0

    .line 332
    :cond_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto/16 :goto_1

    .line 335
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken:[B

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 336
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 339
    .end local v0           #i:I
    :cond_11
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto/16 :goto_2

    .line 342
    :cond_12
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken:[B

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 343
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken:[B

    aget-byte v4, v4, v0

    add-int v1, v2, v4

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 346
    .end local v0           #i:I
    :cond_13
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    ushr-long/2addr v5, v9

    xor-long/2addr v3, v5

    long-to-int v3, v3

    goto/16 :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 474
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 475
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 479
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 480
    :sswitch_0
    return-object p0

    .line 485
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 486
    .local v4, temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    goto :goto_0

    .line 490
    .end local v4           #temp:I
    :sswitch_2
    const/16 v6, 0x12

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 491
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v6, :cond_2

    move v1, v5

    .line 492
    .local v1, i:I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 493
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v6, :cond_1

    .line 494
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 497
    :goto_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 498
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v7, v6, v1

    .line 499
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 500
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 491
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v1, v6

    goto :goto_1

    .line 503
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v7, v6, v1

    .line 504
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 508
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :sswitch_3
    const/16 v6, 0x1a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 509
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v1, v6

    .line 510
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 511
    .local v2, newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .line 513
    :goto_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_4

    .line 514
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 515
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 518
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 522
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_4
    const/16 v6, 0x22

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 523
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v1, v6

    .line 524
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 525
    .restart local v2       #newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .line 527
    :goto_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_5

    .line 528
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 529
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 532
    :cond_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 536
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_5
    const/16 v6, 0x2a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 537
    .restart local v0       #arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v1, v6

    .line 538
    .restart local v1       #i:I
    add-int v6, v1, v0

    new-array v2, v6, [Ljava/lang/String;

    .line 539
    .restart local v2       #newArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .line 541
    :goto_5
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_6

    .line 542
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 543
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 541
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 546
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto/16 :goto_0

    .line 550
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    goto/16 :goto_0

    .line 554
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    goto/16 :goto_0

    .line 558
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken:[B

    goto/16 :goto_0

    .line 562
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    goto/16 :goto_0

    .line 566
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken:[B

    goto/16 :goto_0

    .line 570
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    goto/16 :goto_0

    .line 475
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
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
    .line 233
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    const/4 v4, 0x1

    iget v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->responseCode:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 353
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v4, :cond_0

    .line 354
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectedItems:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 355
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 359
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->insertFailedItemIds:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 360
    .local v1, element:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 363
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 364
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->updateFailedItemIds:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 365
    .restart local v1       #element:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 368
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 369
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->deleteFailedItemIds:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 370
    .restart local v1       #element:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 373
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    if-eqz v4, :cond_4

    .line 374
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncStartTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 376
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 377
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncEndTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 379
    :cond_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken:[B

    if-eqz v4, :cond_6

    .line 380
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->syncContinuationToken:[B

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 382
    :cond_6
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    if-eqz v4, :cond_7

    .line 383
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectStartTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 385
    :cond_7
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken:[B

    if-eqz v4, :cond_8

    .line 386
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectContinuationToken:[B

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 388
    :cond_8
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    if-eqz v4, :cond_9

    .line 389
    const/16 v4, 0xb

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncResponse;->selectMaxWriteTimestamp:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 391
    :cond_9
    return-void
.end method
