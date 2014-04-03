.class public final Lcom/google/googlex/glass/common/proto/BuildNano$Build;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BuildNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BuildNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Build"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BuildNano$Build;


# instance fields
.field public buildDisplayId:Ljava/lang/String;

.field public buildType:I

.field public buildVersion:Ljava/lang/String;

.field private cachedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    sput-object v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 20
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->cachedSize:I

    .line 17
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType:I

    .line 28
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->cachedSize:I

    .line 31
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p1, p0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    .line 37
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 39
    .local v0, other:Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->cachedSize:I

    if-gez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->getSerializedSize()I

    .line 72
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 79
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 83
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 87
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_2
    iput v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->cachedSize:I

    .line 91
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 45
    const/16 v0, 0x11

    .line 46
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType:I

    add-int/lit16 v0, v1, 0x20f

    .line 47
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 48
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 49
    return v0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 100
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 104
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    :sswitch_0
    return-object p0

    .line 110
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 111
    .local v1, temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType:I

    goto :goto_0

    .line 115
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    goto :goto_0

    .line 119
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    goto :goto_0

    .line 100
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
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;

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
    .line 54
    iget v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 55
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 63
    :cond_2
    return-void
.end method
