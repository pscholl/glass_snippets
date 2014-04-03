.class public final Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapRenderResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;


# instance fields
.field private cachedSize:I

.field public id:Ljava/lang/String;

.field public image:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 735
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->cachedSize:I

    .line 693
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 787
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    .line 701
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    .line 702
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->cachedSize:I

    .line 703
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 708
    if-ne p1, p0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v1

    .line 709
    :cond_1
    instance-of v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 710
    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    .line 711
    .local v0, other:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->getSerializedSize()I

    .line 742
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, size:I
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    if-eqz v1, :cond_0

    .line 751
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_0
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->cachedSize:I

    .line 755
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 716
    const/16 v1, 0x11

    .line 717
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 718
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    if-nez v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 724
    :cond_0
    return v1

    .line 717
    :cond_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 720
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 721
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 764
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 768
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    :sswitch_0
    return-object p0

    .line 774
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    goto :goto_0

    .line 778
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    goto :goto_0

    .line 764
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 689
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

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
    .line 729
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    if-eqz v0, :cond_0

    .line 731
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 733
    :cond_0
    return-void
.end method
