.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Priority"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;


# instance fields
.field private cachedSize:I

.field public glasswareAffinity:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1756
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1757
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1788
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->cachedSize:I

    .line 1757
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1

    .prologue
    .line 1762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    .line 1763
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->cachedSize:I

    .line 1764
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1769
    if-ne p1, p0, :cond_1

    .line 1772
    :cond_0
    :goto_0
    return v1

    .line 1770
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1771
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    .line 1772
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1791
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->cachedSize:I

    if-gez v0, :cond_0

    .line 1793
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->getSerializedSize()I

    .line 1795
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1800
    const/4 v0, 0x0

    .line 1801
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1802
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1805
    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->cachedSize:I

    .line 1806
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1776
    const/16 v0, 0x11

    .line 1777
    .local v0, result:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 1778
    return v0

    .line 1777
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1814
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1815
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1819
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1820
    :sswitch_0
    return-object p0

    .line 1825
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    goto :goto_0

    .line 1815
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 1753
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1840
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1834
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;

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
    .line 1783
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1784
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Priority;->glasswareAffinity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1786
    :cond_0
    return-void
.end method
