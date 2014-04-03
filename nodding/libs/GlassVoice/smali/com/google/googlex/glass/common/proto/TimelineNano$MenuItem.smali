.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$TravelMode;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$State;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$Action;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;


# instance fields
.field public action:I

.field public broadcastAction:Ljava/lang/String;

.field private cachedSize:I

.field public id:Ljava/lang/String;

.field public payload:Ljava/lang/String;

.field public recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field public removeWhenSelected:Ljava/lang/Boolean;

.field public travelMode:I

.field public value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2663
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x8000

    .line 2664
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2708
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    .line 2711
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 2718
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    .line 2721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 2801
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->cachedSize:I

    .line 2664
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2928
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2922
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 3

    .prologue
    const/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 2726
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    .line 2727
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    .line 2728
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 2729
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    .line 2730
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    .line 2731
    iput v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    .line 2732
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 2733
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    .line 2734
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->cachedSize:I

    .line 2735
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2740
    if-ne p1, p0, :cond_1

    .line 2743
    :cond_0
    :goto_0
    return v1

    .line 2741
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2742
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 2743
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2804
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->cachedSize:I

    if-gez v0, :cond_0

    .line 2806
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getSerializedSize()I

    .line 2808
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/high16 v7, -0x8000

    .line 2813
    const/4 v4, 0x0

    .line 2814
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2815
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2818
    :cond_0
    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    if-eq v5, v7, :cond_1

    .line 2819
    const/4 v5, 0x2

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 2822
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-eqz v5, :cond_2

    .line 2823
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 2824
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    const/4 v5, 0x3

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2823
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2828
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 2829
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2832
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    .line 2833
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v5

    add-int/2addr v4, v5

    .line 2836
    :cond_4
    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    if-eq v5, v7, :cond_5

    .line 2837
    const/16 v5, 0x8

    iget v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 2840
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v5, :cond_6

    .line 2841
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2844
    :cond_6
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 2845
    const/16 v5, 0xa

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 2848
    :cond_7
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->cachedSize:I

    .line 2849
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2754
    const/16 v1, 0x11

    .line 2755
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 2756
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    add-int v1, v2, v4

    .line 2757
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 2763
    :cond_0
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 2764
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 2765
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    add-int v1, v2, v4

    .line 2766
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v2, :cond_7

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 2767
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    if-nez v4, :cond_8

    :goto_4
    add-int v1, v2, v3

    .line 2768
    return v1

    .line 2755
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 2759
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2760
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 2759
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2760
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->hashCode()I

    move-result v2

    goto :goto_6

    .line 2763
    .end local v0           #i:I
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 2764
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x2

    goto :goto_2

    .line 2766
    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->hashCode()I

    move-result v2

    goto :goto_3

    .line 2767
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2857
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2858
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 2862
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2863
    :sswitch_0
    return-object p0

    .line 2868
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    goto :goto_0

    .line 2872
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 2873
    .local v4, temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    goto :goto_0

    .line 2877
    .end local v4           #temp:I
    :sswitch_3
    const/16 v6, 0x1a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 2878
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-nez v6, :cond_2

    move v1, v5

    .line 2879
    .local v1, i:I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 2880
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-eqz v6, :cond_1

    .line 2881
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2883
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 2884
    :goto_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 2885
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    aput-object v7, v6, v1

    .line 2886
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 2887
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 2884
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2878
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v1, v6

    goto :goto_1

    .line 2890
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :cond_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    new-instance v7, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    aput-object v7, v6, v1

    .line 2891
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2895
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    goto :goto_0

    .line 2899
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    goto :goto_0

    .line 2903
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 2904
    .restart local v4       #temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    goto :goto_0

    .line 2908
    .end local v4           #temp:I
    :sswitch_7
    new-instance v6, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v6}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 2909
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 2913
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    goto/16 :goto_0

    .line 2858
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x38 -> :sswitch_5
        0x40 -> :sswitch_6
        0x4a -> :sswitch_7
        0x52 -> :sswitch_8
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
    .line 2660
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

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
    const/high16 v6, -0x8000

    .line 2773
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2774
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2776
    :cond_0
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    if-eq v4, v6, :cond_1

    .line 2777
    const/4 v4, 0x2

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2779
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-eqz v4, :cond_2

    .line 2780
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 2781
    .local v1, element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2780
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2784
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2785
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->broadcastAction:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2787
    :cond_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    if-eqz v4, :cond_4

    .line 2788
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->removeWhenSelected:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2790
    :cond_4
    iget v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    if-eq v4, v6, :cond_5

    .line 2791
    const/16 v4, 0x8

    iget v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->travelMode:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2793
    :cond_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-eqz v4, :cond_6

    .line 2794
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->recipient:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 2796
    :cond_6
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 2797
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->payload:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2799
    :cond_7
    return-void
.end method
