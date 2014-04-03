.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressStatus"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;


# instance fields
.field private cachedSize:I

.field public label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->cachedSize:I

    .line 58
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->cachedSize:I

    .line 65
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p1, p0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 72
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    .line 73
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->cachedSize:I

    if-gez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->getSerializedSize()I

    .line 96
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->cachedSize:I

    .line 107
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 77
    const/16 v0, 0x11

    .line 78
    .local v0, result:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 79
    return v0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 116
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 120
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    :sswitch_0
    return-object p0

    .line 126
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    goto :goto_0

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;

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
    .line 84
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ProgressStatus;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
