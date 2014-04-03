.class public final Lcom/google/googlex/glass/common/proto/e;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/googlex/glass/common/proto/e;


# instance fields
.field public b:[Lcom/google/googlex/glass/common/proto/g;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/e;

    sput-object v0, Lcom/google/googlex/glass/common/proto/e;->a:[Lcom/google/googlex/glass/common/proto/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    sget-object v0, Lcom/google/googlex/glass/common/proto/g;->a:[Lcom/google/googlex/glass/common/proto/g;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/e;->c:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/googlex/glass/common/proto/e;
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
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/g;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    new-instance v3, Lcom/google/googlex/glass/common/proto/g;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/g;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    array-length v0, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    new-instance v3, Lcom/google/googlex/glass/common/proto/g;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/g;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static a([B)Lcom/google/googlex/glass/common/proto/e;
    .locals 1

    new-instance v0, Lcom/google/googlex/glass/common/proto/e;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/e;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/b;->mergeFrom(Lcom/google/protobuf/nano/b;[B)Lcom/google/protobuf/nano/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/e;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/e;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/googlex/glass/common/proto/e;

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/googlex/glass/common/proto/e;->c:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/e;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/e;->c:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v3, v1

    const/4 v5, 0x1

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/googlex/glass/common/proto/e;->c:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    if-nez v2, :cond_1

    const/16 v2, 0x20f

    :cond_0
    return v2

    :cond_1
    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/g;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/e;->a(Lcom/google/protobuf/nano/a;)Lcom/google/googlex/glass/common/proto/e;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/e;->b:[Lcom/google/googlex/glass/common/proto/g;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
