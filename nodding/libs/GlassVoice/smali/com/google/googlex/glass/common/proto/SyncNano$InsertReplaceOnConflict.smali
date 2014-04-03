.class public final Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsertReplaceOnConflict"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;


# instance fields
.field private cachedSize:I

.field public timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 793
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 835
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->cachedSize:I

    .line 787
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 906
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 797
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 798
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->cachedSize:I

    .line 799
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 804
    if-ne p1, p0, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v1

    .line 805
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 806
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

    .line 807
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 838
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->cachedSize:I

    if-gez v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->getSerializedSize()I

    .line 842
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 847
    const/4 v4, 0x0

    .line 848
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v5, :cond_0

    .line 849
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 852
    :cond_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v5, :cond_1

    .line 853
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 854
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    const/4 v5, 0x2

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 853
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 858
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iput v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->cachedSize:I

    .line 859
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 812
    const/16 v1, 0x11

    .line 813
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 814
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 820
    :cond_0
    return v1

    .line 813
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_0

    .line 816
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 817
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 817
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 867
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 868
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 872
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 873
    :sswitch_0
    return-object p0

    .line 878
    :sswitch_1
    new-instance v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 879
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 883
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 884
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v5, :cond_2

    move v1, v4

    .line 885
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 886
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v5, :cond_1

    .line 887
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 890
    :goto_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 891
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v6, v5, v1

    .line 892
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 893
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 884
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    array-length v1, v5

    goto :goto_1

    .line 896
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    aput-object v6, v5, v1

    .line 897
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 868
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 783
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;

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
    .line 825
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v4, :cond_0

    .line 826
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 828
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v4, :cond_1

    .line 829
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$InsertReplaceOnConflict;->userAction:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 830
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 829
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 833
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method
