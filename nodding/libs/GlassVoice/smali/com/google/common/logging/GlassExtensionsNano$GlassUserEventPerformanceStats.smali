.class public final Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GlassExtensionsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassExtensionsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassUserEventPerformanceStats"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;


# instance fields
.field public batteryChargeWhenFullUah:Ljava/lang/Integer;

.field public batteryStateOfChargeUah:Ljava/lang/Integer;

.field public batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

.field public boardTemperatureMilliCentigrade:Ljava/lang/Integer;

.field private cachedSize:I

.field public frequencyScalingGovernor:Ljava/lang/Integer;

.field public frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

.field public reportedSoc:Ljava/lang/Integer;

.field public totalBytesSent:Ljava/lang/Long;

.field public totalKernelMs:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    sput-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 114
    sget-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->cachedSize:I

    .line 111
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    sget-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 134
    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    .line 135
    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    .line 136
    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    .line 137
    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    .line 138
    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    .line 139
    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    .line 140
    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    .line 141
    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->cachedSize:I

    .line 143
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    if-ne p1, p0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 150
    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 151
    .local v0, other:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->cachedSize:I

    if-gez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->getSerializedSize()I

    .line 221
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 226
    const/4 v4, 0x0

    .line 227
    .local v4, size:I
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-eqz v5, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .local v0, arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 229
    .local v1, element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    const/4 v5, 0x1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v0           #arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .end local v1           #element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 234
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 237
    :cond_1
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 238
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 241
    :cond_2
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 242
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 245
    :cond_3
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 246
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 249
    :cond_4
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 250
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 253
    :cond_5
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    if-eqz v5, :cond_6

    .line 254
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 257
    :cond_6
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    if-eqz v5, :cond_7

    .line 258
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 261
    :cond_7
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    if-eqz v5, :cond_8

    .line 262
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 265
    :cond_8
    iput v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->cachedSize:I

    .line 266
    return v4
.end method

.method public hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v3, 0x0

    .line 163
    const/16 v1, 0x11

    .line 164
    .local v1, result:I
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-nez v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 170
    :cond_0
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 171
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 172
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    if-nez v2, :cond_5

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 173
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    if-nez v2, :cond_6

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 174
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    if-nez v2, :cond_7

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 175
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    if-nez v2, :cond_8

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 176
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    if-nez v2, :cond_9

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 177
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    if-nez v4, :cond_a

    :goto_7
    add-int v1, v2, v3

    .line 178
    return v1

    .line 166
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 167
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->hashCode()I

    move-result v2

    goto :goto_9

    .line 170
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto :goto_0

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 172
    :cond_5
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 173
    :cond_6
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    .line 174
    :cond_7
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    .line 175
    :cond_8
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    .line 176
    :cond_9
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v2, v5

    goto :goto_6

    .line 177
    :cond_a
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 7
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 275
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 279
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 280
    :sswitch_0
    return-object p0

    .line 285
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 286
    .local v0, arrayLength:I
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-nez v5, :cond_2

    move v1, v4

    .line 287
    .local v1, i:I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 288
    .local v2, newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-eqz v5, :cond_1

    .line 289
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    :cond_1
    iput-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 292
    :goto_2
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 293
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    new-instance v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v6}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    aput-object v6, v5, v1

    .line 294
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 295
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 286
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :cond_2
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    array-length v1, v5

    goto :goto_1

    .line 298
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :cond_3
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    new-instance v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v6}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    aput-object v6, v5, v1

    .line 299
    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 303
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    goto :goto_0

    .line 307
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    goto :goto_0

    .line 311
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    goto :goto_0

    .line 315
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 319
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 323
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    goto/16 :goto_0

    .line 327
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 331
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 275
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
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
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

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
    .line 183
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-eqz v4, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .local v0, arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 185
    .local v1, element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v0           #arr$:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .end local v1           #element:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 189
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 192
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 194
    :cond_2
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 195
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 197
    :cond_3
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 198
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 200
    :cond_4
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 201
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 203
    :cond_5
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    if-eqz v4, :cond_6

    .line 204
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 206
    :cond_6
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 207
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 209
    :cond_7
    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 210
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 212
    :cond_8
    return-void
.end method
