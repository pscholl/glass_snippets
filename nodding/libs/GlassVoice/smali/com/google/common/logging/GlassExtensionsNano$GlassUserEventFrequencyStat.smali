.class public final Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GlassExtensionsNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/GlassExtensionsNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassUserEventFrequencyStat"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;


# instance fields
.field private cachedSize:I

.field public durationMs:Ljava/lang/Long;

.field public frequencyHz:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    sput-object v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->cachedSize:I

    .line 11
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    .line 19
    iput-object v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->cachedSize:I

    .line 21
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    if-ne p1, p0, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v1

    .line 27
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 29
    .local v0, other:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->cachedSize:I

    if-gez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->getSerializedSize()I

    .line 53
    :cond_0
    iget v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, size:I
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    iput v0, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->cachedSize:I

    .line 64
    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 34
    const/16 v0, 0x11

    .line 35
    .local v0, result:I
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 36
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 37
    return v0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v1, v3

    goto :goto_0

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 73
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 77
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    :sswitch_0
    return-object p0

    .line 83
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    goto :goto_0

    .line 87
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    goto :goto_0

    .line 73
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

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
    .line 42
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 43
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 44
    return-void
.end method
