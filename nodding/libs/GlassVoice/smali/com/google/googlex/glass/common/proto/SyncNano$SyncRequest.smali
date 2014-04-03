.class public final Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;


# instance fields
.field private cachedSize:I

.field public delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

.field public deviceId:Ljava/lang/String;

.field public insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

.field public select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

.field public update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    .line 17
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .line 20
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .line 23
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->cachedSize:I

    .line 11
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    .line 29
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .line 30
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .line 32
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->cachedSize:I

    .line 34
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    if-ne p1, p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    .line 42
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->getSerializedSize()I

    .line 104
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 109
    const/4 v4, 0x0

    .line 110
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-eqz v5, :cond_0

    .line 111
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 114
    :cond_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    if-eqz v5, :cond_1

    .line 115
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 116
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    const/4 v5, 0x2

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    if-eqz v5, :cond_2

    .line 121
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 122
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    const/4 v5, 0x3

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    if-eqz v5, :cond_3

    .line 127
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 128
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    const/4 v5, 0x4

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 132
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 134
    iput v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->cachedSize:I

    .line 135
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 50
    const/16 v1, 0x11

    .line 51
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 52
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    if-nez v2, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x1f

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    if-nez v2, :cond_8

    mul-int/lit8 v1, v1, 0x1f

    .line 70
    :cond_2
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    if-nez v4, :cond_a

    :goto_1
    add-int v1, v2, v3

    .line 71
    return v1

    .line 51
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;->hashCode()I

    move-result v2

    goto :goto_0

    .line 54
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 55
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 55
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->hashCode()I

    move-result v2

    goto :goto_3

    .line 60
    .end local v0           #i:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 61
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 61
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SyncNano$Update;->hashCode()I

    move-result v2

    goto :goto_5

    .line 66
    .end local v0           #i:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 67
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 67
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;->hashCode()I

    move-result v2

    goto :goto_7

    .line 70
    .end local v0           #i:I
    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 143
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 144
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 148
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 149
    :sswitch_0
    return-object p0

    .line 154
    :sswitch_1
    new-instance v5, Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/SyncNano$Select;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    .line 155
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 159
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 160
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    if-nez v5, :cond_2

    move v1, v4

    .line 161
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .line 162
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    if-eqz v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .line 166
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 167
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;-><init>()V

    aput-object v6, v5, v1

    .line 168
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 169
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 160
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    array-length v1, v5

    goto :goto_1

    .line 172
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;-><init>()V

    aput-object v6, v5, v1

    .line 173
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 177
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 178
    .restart local v0       #arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    if-nez v5, :cond_5

    move v1, v4

    .line 179
    .restart local v1       #i:I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .line 180
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    if-eqz v5, :cond_4

    .line 181
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    :cond_4
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .line 184
    :goto_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 185
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$Update;-><init>()V

    aput-object v6, v5, v1

    .line 186
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 187
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 178
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    array-length v1, v5

    goto :goto_3

    .line 190
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    :cond_6
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$Update;-><init>()V

    aput-object v6, v5, v1

    .line 191
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 195
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    :sswitch_4
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 196
    .restart local v0       #arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    if-nez v5, :cond_8

    move v1, v4

    .line 197
    .restart local v1       #i:I
    :goto_5
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .line 198
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    if-eqz v5, :cond_7

    .line 199
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    :cond_7
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .line 202
    :goto_6
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_9

    .line 203
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;-><init>()V

    aput-object v6, v5, v1

    .line 204
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 205
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 196
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    :cond_8
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    array-length v1, v5

    goto :goto_5

    .line 208
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    :cond_9
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    new-instance v6, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/SyncNano$Delete;-><init>()V

    aput-object v6, v5, v1

    .line 209
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 213
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    if-eqz v4, :cond_0

    .line 77
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->select:Lcom/google/googlex/glass/common/proto/SyncNano$Select;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    if-eqz v4, :cond_1

    .line 80
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->insertReplaceOnConflict:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 81
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    if-eqz v4, :cond_2

    .line 85
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->update:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 86
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$Update;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    if-eqz v4, :cond_3

    .line 90
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->delete:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 91
    .local v1, element:Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    const/4 v4, 0x4

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 94
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/SyncNano$Delete;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$SyncRequest;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 95
    return-void
.end method
