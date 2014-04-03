.class public final Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano$Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mutations"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;


# instance fields
.field public attachmentDeletions:[Ljava/lang/String;

.field private cachedSize:I

.field public item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public itemFieldDeletions:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 926
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 933
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_REF_ARRAY:[Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    .line 936
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .line 991
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->cachedSize:I

    .line 927
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
    .locals 1

    .prologue
    .line 939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 940
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_REF_ARRAY:[Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    .line 941
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .line 942
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->cachedSize:I

    .line 943
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 948
    if-ne p1, p0, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v1

    .line 949
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 950
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    .line 951
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->cachedSize:I

    if-gez v0, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->getSerializedSize()I

    .line 998
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 1003
    const/4 v5, 0x0

    .line 1004
    .local v5, size:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v6, :cond_0

    .line 1005
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 1008
    :cond_0
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    array-length v6, v6

    if-lez v6, :cond_2

    .line 1009
    const/4 v1, 0x0

    .line 1010
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 1011
    .local v2, element:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 1010
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1014
    .end local v2           #element:Ljava/lang/Integer;
    :cond_1
    add-int/2addr v5, v1

    .line 1015
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 1017
    .end local v0           #arr$:[Ljava/lang/Integer;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 1018
    const/4 v1, 0x0

    .line 1019
    .restart local v1       #dataSize:I
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .line 1020
    .local v2, element:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 1019
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1023
    .end local v2           #element:Ljava/lang/String;
    :cond_3
    add-int/2addr v5, v1

    .line 1024
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 1026
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    iput v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->cachedSize:I

    .line 1027
    return v5
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 957
    const/16 v1, 0x11

    .line 958
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 959
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    if-nez v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    .line 965
    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    if-nez v2, :cond_5

    mul-int/lit8 v1, v1, 0x1f

    .line 971
    :cond_1
    return v1

    .line 958
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_0

    .line 961
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 962
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 961
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 962
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 967
    .end local v0           #i:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 968
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 967
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 968
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1035
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1036
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 1040
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1041
    :sswitch_0
    return-object p0

    .line 1046
    :sswitch_1
    new-instance v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 1047
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 1051
    :sswitch_2
    const/16 v4, 0x10

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1052
    .local v0, arrayLength:I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    array-length v1, v4

    .line 1053
    .local v1, i:I
    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/Integer;

    .line 1054
    .local v2, newArray:[Ljava/lang/Integer;
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1055
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    .line 1056
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 1057
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1058
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1056
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1061
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_0

    .line 1065
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Ljava/lang/Integer;
    :sswitch_3
    const/16 v4, 0x1a

    invoke-static {p1, v4}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1066
    .restart local v0       #arrayLength:I
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v1, v4

    .line 1067
    .restart local v1       #i:I
    add-int v4, v1, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 1068
    .local v2, newArray:[Ljava/lang/String;
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    invoke-static {v4, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1069
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .line 1070
    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 1071
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1072
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1070
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1075
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto/16 :goto_0

    .line 1036
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 923
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1090
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1084
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;

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
    .line 976
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v4, :cond_0

    .line 977
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 979
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 980
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->itemFieldDeletions:[Ljava/lang/Integer;

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 981
    .local v1, element:Ljava/lang/Integer;
    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 980
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 984
    .end local v0           #arr$:[Ljava/lang/Integer;
    .end local v1           #element:Ljava/lang/Integer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 985
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$Update$Mutations;->attachmentDeletions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 986
    .local v1, element:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 985
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 989
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-void
.end method
