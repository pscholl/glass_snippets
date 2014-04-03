.class public final Lcom/google/common/a/c;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/common/a/c;


# instance fields
.field public b:[Lcom/google/common/a/b;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Integer;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/c;

    sput-object v0, Lcom/google/common/a/c;->a:[Lcom/google/common/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    sget-object v0, Lcom/google/common/a/b;->a:[Lcom/google/common/a/b;

    iput-object v0, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/a/c;->k:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/common/a/c;
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

    iget-object v0, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/common/a/b;

    iget-object v3, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    :goto_2
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    new-instance v3, Lcom/google/common/a/b;

    invoke-direct {v3}, Lcom/google/common/a/b;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    array-length v0, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    new-instance v3, Lcom/google/common/a/b;

    invoke-direct {v3}, Lcom/google/common/a/b;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public static a([B)Lcom/google/common/a/c;
    .locals 1

    new-instance v0, Lcom/google/common/a/c;

    invoke-direct {v0}, Lcom/google/common/a/c;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/b;->mergeFrom(Lcom/google/protobuf/nano/b;[B)Lcom/google/protobuf/nano/b;

    move-result-object v0

    check-cast v0, Lcom/google/common/a/c;

    return-object v0
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
    instance-of v2, p1, Lcom/google/common/a/c;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/common/a/c;

    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    iget-object v3, p1, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_4
    iget-object v2, p0, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_5
    iget-object v2, p0, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_6
    iget-object v2, p0, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    if-nez v2, :cond_3

    :goto_7
    iget-object v2, p0, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/common/a/c;->k:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/a/c;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/common/a/c;->k:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

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
    iget-object v1, p0, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iput v0, p0, Lcom/google/common/a/c;->k:I

    return v0
.end method

.method public final hashCode()I
    .locals 8

    const/16 v7, 0x20

    const/4 v1, 0x0

    const/16 v0, 0x11

    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    if-nez v2, :cond_1

    const/16 v2, 0x20f

    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    if-nez v2, :cond_a

    :goto_7
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v2, v0

    move v0, v1

    :goto_8
    iget-object v3, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    move v2, v1

    :goto_9
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2
    iget-object v2, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/common/a/b;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_3
    iget-object v0, p0, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_7
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/common/a/c;->a(Lcom/google/protobuf/nano/a;)Lcom/google/common/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    iget-object v0, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/a/c;->b:[Lcom/google/common/a/b;

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
    iget-object v0, p0, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/common/a/c;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IJ)V

    :cond_1
    iget-object v0, p0, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/a/c;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/common/a/c;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/common/a/c;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_4
    iget-object v0, p0, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/a/c;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_5
    iget-object v0, p0, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/common/a/c;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IJ)V

    :cond_6
    iget-object v0, p0, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/common/a/c;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_7
    iget-object v0, p0, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/common/a/c;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_8
    return-void
.end method
