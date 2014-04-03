.class public final Lcom/google/googlex/glass/common/proto/d;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/googlex/glass/common/proto/d;


# instance fields
.field public b:Lcom/google/googlex/glass/common/proto/c;

.field public c:[Lcom/google/googlex/glass/common/proto/f;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/d;

    sput-object v0, Lcom/google/googlex/glass/common/proto/d;->a:[Lcom/google/googlex/glass/common/proto/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    sget-object v0, Lcom/google/googlex/glass/common/proto/f;->a:[Lcom/google/googlex/glass/common/proto/f;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/d;->d:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/googlex/glass/common/proto/d;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    new-instance v0, Lcom/google/googlex/glass/common/proto/c;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/c;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/f;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    new-instance v3, Lcom/google/googlex/glass/common/proto/f;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/f;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    array-length v0, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    new-instance v3, Lcom/google/googlex/glass/common/proto/f;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/f;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/d;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/d;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/googlex/glass/common/proto/d;->d:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/d;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/d;->d:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/d;->d:I

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/c;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v1

    :goto_2
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/f;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/d;->a(Lcom/google/protobuf/nano/a;)Lcom/google/googlex/glass/common/proto/d;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/d;->b:Lcom/google/googlex/glass/common/proto/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/d;->c:[Lcom/google/googlex/glass/common/proto/f;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
