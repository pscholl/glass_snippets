.class public final Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "LoggingNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LoggingNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetSessionIdRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;


# instance fields
.field private cachedSize:I

.field public unusedField:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->cachedSize:I

    .line 11
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->cachedSize:I

    .line 18
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    if-ne p1, p0, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v1

    .line 24
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 25
    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    .line 26
    .local v0, other:Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->getSerializedSize()I

    .line 49
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, size:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->cachedSize:I

    .line 60
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 30
    const/16 v0, 0x11

    .line 31
    .local v0, result:I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 32
    return v0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 69
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 73
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :sswitch_0
    return-object p0

    .line 79
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    goto :goto_0

    .line 69
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

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
    .line 37
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;->unusedField:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 40
    :cond_0
    return-void
.end method
