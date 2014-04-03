.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuValue"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;


# instance fields
.field private cachedSize:I

.field public displayName:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2936
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2937
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2940
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    .line 2985
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->cachedSize:I

    .line 2937
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3054
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3048
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2947
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    .line 2948
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    .line 2949
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    .line 2950
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->cachedSize:I

    .line 2951
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2956
    if-ne p1, p0, :cond_1

    .line 2959
    :cond_0
    :goto_0
    return v1

    .line 2957
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 2958
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .line 2959
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2988
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->cachedSize:I

    if-gez v0, :cond_0

    .line 2990
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getSerializedSize()I

    .line 2992
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2997
    const/4 v0, 0x0

    .line 2998
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2999
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3002
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3003
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3006
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_2

    .line 3007
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3010
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->cachedSize:I

    .line 3011
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2965
    const/16 v0, 0x11

    .line 2966
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    add-int/lit16 v0, v1, 0x20f

    .line 2967
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 2968
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 2969
    return v0

    .line 2967
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 2968
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3019
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3020
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3024
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3025
    :sswitch_0
    return-object p0

    .line 3030
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 3034
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    goto :goto_0

    .line 3038
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3039
    .local v1, temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    goto :goto_0

    .line 3020
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 2933
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

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
    .line 2974
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2975
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2977
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2978
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2980
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_2

    .line 2981
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->state:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2983
    :cond_2
    return-void
.end method
