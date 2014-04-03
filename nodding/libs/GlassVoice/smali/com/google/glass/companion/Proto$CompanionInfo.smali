.class public final Lcom/google/glass/companion/Proto$CompanionInfo;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompanionInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$CompanionInfo;


# instance fields
.field private cachedSize:I

.field public id:Ljava/lang/Long;

.field public requestLog:Ljava/lang/Boolean;

.field public requestNetwork:Ljava/lang/Boolean;

.field public responseAndroidVersion:Ljava/lang/Integer;

.field public responseIsNetworkOk:Ljava/lang/Boolean;

.field public responseLog:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1952
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$CompanionInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$CompanionInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$CompanionInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1953
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 2022
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->cachedSize:I

    .line 1953
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2112
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2106
    new-instance v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1968
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    .line 1969
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    .line 1970
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    .line 1971
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    .line 1972
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    .line 1973
    iput-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    .line 1974
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->cachedSize:I

    .line 1975
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1980
    if-ne p1, p0, :cond_1

    .line 1983
    :cond_0
    :goto_0
    return v1

    .line 1981
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$CompanionInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1982
    check-cast v0, Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 1983
    .local v0, other:Lcom/google/glass/companion/Proto$CompanionInfo;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2025
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2027
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$CompanionInfo;->getSerializedSize()I

    .line 2029
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2034
    const/4 v0, 0x0

    .line 2035
    .local v0, size:I
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2037
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2038
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2041
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 2042
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2045
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2046
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2049
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 2050
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2053
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2054
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2057
    :cond_4
    iput v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->cachedSize:I

    .line 2058
    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1992
    const/16 v0, 0x11

    .line 1993
    .local v0, result:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 1994
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v5, v1

    .line 1995
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    add-int v0, v5, v1

    .line 1996
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    add-int v0, v5, v1

    .line 1997
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    if-nez v5, :cond_7

    move v3, v2

    :cond_0
    :goto_4
    add-int v0, v1, v3

    .line 1998
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    if-nez v3, :cond_8

    :goto_5
    add-int v0, v1, v2

    .line 1999
    return v0

    .line 1993
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/16 v1, 0x20

    ushr-long/2addr v7, v1

    xor-long/2addr v5, v7

    long-to-int v1, v5

    goto :goto_0

    .line 1994
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_1

    .line 1995
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v4

    goto :goto_2

    .line 1996
    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    .line 1997
    :cond_7
    iget-object v5, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_4

    .line 1998
    :cond_8
    iget-object v2, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2066
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2067
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2071
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2072
    :sswitch_0
    return-object p0

    .line 2077
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    goto :goto_0

    .line 2081
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    goto :goto_0

    .line 2085
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    goto :goto_0

    .line 2089
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    goto :goto_0

    .line 2093
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    goto :goto_0

    .line 2097
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    goto :goto_0

    .line 2067
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
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
    .line 1949
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$CompanionInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$CompanionInfo;

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
    .line 2004
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2005
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2006
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2008
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 2009
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseIsNetworkOk:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2011
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2012
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseAndroidVersion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2014
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 2015
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2017
    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2018
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/companion/Proto$CompanionInfo;->responseLog:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2020
    :cond_4
    return-void
.end method
