.class public final Lcom/google/glass/companion/Proto$ApiResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ApiResponse;


# instance fields
.field private cachedSize:I

.field public timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public type:I

.field public userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3005
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$ApiResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$ApiResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3006
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 3013
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type:I

    .line 3016
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 3019
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 3060
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->cachedSize:I

    .line 3006
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3131
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ApiResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3125
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3022
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type:I

    .line 3023
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 3024
    iput-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 3025
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->cachedSize:I

    .line 3026
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3031
    if-ne p1, p0, :cond_1

    .line 3034
    :cond_0
    :goto_0
    return v1

    .line 3032
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$ApiResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3033
    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    .line 3034
    .local v0, other:Lcom/google/glass/companion/Proto$ApiResponse;
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type:I

    iget v4, v0, Lcom/google/glass/companion/Proto$ApiResponse;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3063
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 3065
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->getSerializedSize()I

    .line 3067
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3072
    const/4 v0, 0x0

    .line 3073
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 3074
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3077
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_1

    .line 3078
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3081
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v1, :cond_2

    .line 3082
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3085
    :cond_2
    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->cachedSize:I

    .line 3086
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3040
    const/16 v0, 0x11

    .line 3041
    .local v0, result:I
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type:I

    add-int/lit16 v0, v1, 0x20f

    .line 3042
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 3043
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 3044
    return v0

    .line 3042
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v1

    goto :goto_0

    .line 3043
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3094
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3095
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3099
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3100
    :sswitch_0
    return-object p0

    .line 3105
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3106
    .local v1, temp:I
    iput v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type:I

    goto :goto_0

    .line 3110
    .end local v1           #temp:I
    :sswitch_2
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 3111
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3115
    :sswitch_3
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    .line 3116
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3095
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 3002
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ApiResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$ApiResponse;

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
    .line 3049
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 3050
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3052
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_1

    .line 3053
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3055
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    if-eqz v0, :cond_2

    .line 3056
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction:Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 3058
    :cond_2
    return-void
.end method
