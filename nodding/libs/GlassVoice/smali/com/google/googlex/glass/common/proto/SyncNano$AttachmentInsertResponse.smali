.class public final Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "SyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentInsertResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;


# instance fields
.field public attachmentId:Ljava/lang/String;

.field private cachedSize:I

.field public responseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1921
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1922
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1930
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    .line 1967
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->cachedSize:I

    .line 1922
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2028
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2022
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    .locals 1

    .prologue
    .line 1935
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    .line 1936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    .line 1937
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->cachedSize:I

    .line 1938
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1943
    if-ne p1, p0, :cond_1

    .line 1946
    :cond_0
    :goto_0
    return v1

    .line 1944
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1945
    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

    .line 1946
    .local v0, other:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1970
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 1972
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->getSerializedSize()I

    .line 1974
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1979
    const/4 v0, 0x0

    .line 1980
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 1981
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1984
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1985
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1988
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->cachedSize:I

    .line 1989
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1951
    const/16 v0, 0x11

    .line 1952
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    add-int/lit16 v0, v1, 0x20f

    .line 1953
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 1954
    return v0

    .line 1953
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1997
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1998
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2002
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2003
    :sswitch_0
    return-object p0

    .line 2008
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 2009
    .local v1, temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    goto :goto_0

    .line 2013
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    goto :goto_0

    .line 1998
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 1918
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;

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
    .line 1959
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 1960
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->responseCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1962
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1963
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentInsertResponse;->attachmentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1965
    :cond_1
    return-void
.end method
