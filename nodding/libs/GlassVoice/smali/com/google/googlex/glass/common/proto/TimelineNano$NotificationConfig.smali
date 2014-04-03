.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig$Level;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;


# instance fields
.field private cachedSize:I

.field public deliveryTime:Ljava/lang/Long;

.field public level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3062
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3063
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 3070
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level:I

    .line 3107
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->cachedSize:I

    .line 3063
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3168
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3162
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 1

    .prologue
    .line 3075
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level:I

    .line 3076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    .line 3077
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->cachedSize:I

    .line 3078
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3083
    if-ne p1, p0, :cond_1

    .line 3086
    :cond_0
    :goto_0
    return v1

    .line 3084
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3085
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    .line 3086
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3110
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->cachedSize:I

    if-gez v0, :cond_0

    .line 3112
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->getSerializedSize()I

    .line 3114
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 3119
    const/4 v0, 0x0

    .line 3120
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 3121
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3124
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 3125
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3128
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->cachedSize:I

    .line 3129
    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 3091
    const/16 v0, 0x11

    .line 3092
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level:I

    add-int/lit16 v0, v1, 0x20f

    .line 3093
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 3094
    return v0

    .line 3093
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3137
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3138
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3142
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3143
    :sswitch_0
    return-object p0

    .line 3148
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3149
    .local v1, temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level:I

    goto :goto_0

    .line 3153
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    goto :goto_0

    .line 3138
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 3059
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3099
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 3100
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->level:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3102
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 3103
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$NotificationConfig;->deliveryTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 3105
    :cond_1
    return-void
.end method
