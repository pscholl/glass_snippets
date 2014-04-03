.class public final Lcom/google/glass/companion/Proto$ApiRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ApiRequest;


# instance fields
.field public attachmentContent:[[B

.field private cachedSize:I

.field public projectId:Ljava/lang/String;

.field public timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public token:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2815
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$ApiRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$ApiRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ApiRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2816
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2828
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type:I

    .line 2831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 2834
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .line 2896
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->cachedSize:I

    .line 2816
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2997
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ApiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2991
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2837
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    .line 2838
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    .line 2839
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type:I

    .line 2840
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 2841
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .line 2842
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->cachedSize:I

    .line 2843
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2848
    if-ne p1, p0, :cond_1

    .line 2851
    :cond_0
    :goto_0
    return v1

    .line 2849
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$ApiRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2850
    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    .line 2851
    .local v0, other:Lcom/google/glass/companion/Proto$ApiRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type:I

    iget v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2899
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 2901
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest;->getSerializedSize()I

    .line 2903
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 2908
    const/4 v5, 0x0

    .line 2909
    .local v5, size:I
    iget-object v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 2910
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2913
    :cond_0
    iget-object v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 2914
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2917
    :cond_1
    iget v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type:I

    const/high16 v7, -0x8000

    if-eq v6, v7, :cond_2

    .line 2918
    const/4 v6, 0x3

    iget v7, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type:I

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v6

    add-int/2addr v5, v6

    .line 2921
    :cond_2
    iget-object v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v6, :cond_3

    .line 2922
    const/4 v6, 0x4

    iget-object v7, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v5, v6

    .line 2925
    :cond_3
    iget-object v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v6, v6

    if-lez v6, :cond_5

    .line 2926
    const/4 v1, 0x0

    .line 2927
    .local v1, dataSize:I
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .local v0, arr$:[[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    .line 2928
    .local v2, element:[B
    invoke-static {v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v6

    add-int/2addr v1, v6

    .line 2927
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2931
    .end local v2           #element:[B
    :cond_4
    add-int/2addr v5, v1

    .line 2932
    iget-object v6, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 2934
    .end local v0           #arr$:[[B
    .end local v1           #dataSize:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_5
    iput v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->cachedSize:I

    .line 2935
    return v5
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2859
    const/16 v2, 0x11

    .line 2860
    .local v2, result:I
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    add-int/lit16 v2, v3, 0x20f

    .line 2861
    mul-int/lit8 v5, v2, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    add-int v2, v5, v3

    .line 2862
    mul-int/lit8 v3, v2, 0x1f

    iget v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type:I

    add-int v2, v3, v5

    .line 2863
    mul-int/lit8 v3, v2, 0x1f

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v5, :cond_3

    :goto_2
    add-int v2, v3, v4

    .line 2864
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    if-nez v3, :cond_4

    mul-int/lit8 v2, v2, 0x1f

    .line 2872
    :cond_0
    return v2

    .line 2860
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    .line 2861
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    .line 2863
    :cond_3
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v4

    goto :goto_2

    .line 2866
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 2867
    const/4 v1, 0x0

    .local v1, j:I
    :goto_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 2868
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    aget-object v4, v4, v0

    aget-byte v4, v4, v1

    add-int v2, v3, v4

    .line 2867
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2866
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2943
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2944
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 2948
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2949
    :sswitch_0
    return-object p0

    .line 2954
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    goto :goto_0

    .line 2958
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    goto :goto_0

    .line 2962
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 2963
    .local v4, temp:I
    iput v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type:I

    goto :goto_0

    .line 2967
    .end local v4           #temp:I
    :sswitch_4
    new-instance v5, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 2968
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2972
    :sswitch_5
    const/16 v5, 0x2a

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2973
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v1, v5

    .line 2974
    .local v1, i:I
    add-int v5, v1, v0

    new-array v2, v5, [[B

    .line 2975
    .local v2, newArray:[[B
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    invoke-static {v5, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2976
    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .line 2977
    :goto_1
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_1

    .line 2978
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v6

    aput-object v6, v5, v1

    .line 2979
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2977
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2982
    :cond_1
    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v6

    aput-object v6, v5, v1

    goto :goto_0

    .line 2944
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 2812
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ApiRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiRequest;

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
    .line 2877
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2878
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->projectId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2880
    :cond_0
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2881
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->token:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2883
    :cond_1
    iget v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type:I

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_2

    .line 2884
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->type:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2886
    :cond_2
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v4, :cond_3

    .line 2887
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2889
    :cond_3
    iget-object v4, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    if-eqz v4, :cond_4

    .line 2890
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent:[[B

    .local v0, arr$:[[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 2891
    .local v1, element:[B
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 2890
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2894
    .end local v0           #arr$:[[B
    .end local v1           #element:[B
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    return-void
.end method
