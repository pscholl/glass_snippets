.class public final Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ResourceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResourceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest$ResourceType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;


# instance fields
.field private cachedSize:I

.field public fingerprint:Ljava/lang/Long;

.field public languageCode:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 22
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->cachedSize:I

    .line 11
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type:I

    .line 32
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    .line 34
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->cachedSize:I

    .line 36
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p1, p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    .line 44
    .local v0, other:Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->getSerializedSize()I

    .line 82
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 89
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 97
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 101
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_3
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->cachedSize:I

    .line 105
    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 51
    const/16 v0, 0x11

    .line 52
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type:I

    add-int/lit16 v0, v1, 0x20f

    .line 53
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 54
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 55
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 56
    return v0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_1

    .line 55
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 114
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 118
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    :sswitch_0
    return-object p0

    .line 124
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 125
    .local v1, temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type:I

    goto :goto_0

    .line 129
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    goto :goto_0

    .line 133
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    goto :goto_0

    .line 137
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    goto :goto_0

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

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
    .line 61
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 62
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 68
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 71
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 73
    :cond_3
    return-void
.end method
