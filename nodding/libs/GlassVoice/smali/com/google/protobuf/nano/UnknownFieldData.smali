.class public final Lcom/google/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0
    .parameter "tag"
    .parameter "bytes"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    .line 47
    iput-object p2, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    if-ne p1, p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    instance-of v3, p1, Lcom/google/protobuf/nano/UnknownFieldData;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 56
    .local v0, other:Lcom/google/protobuf/nano/UnknownFieldData;
    iget v3, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    iget v4, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v4, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 61
    const/16 v1, 0x11

    .line 62
    .local v1, result:I
    iget v2, p0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    add-int/lit16 v1, v2, 0x20f

    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 64
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return v1
.end method
