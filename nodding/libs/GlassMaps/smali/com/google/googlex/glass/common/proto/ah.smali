.class public final Lcom/google/googlex/glass/common/proto/ah;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/googlex/glass/common/proto/ah;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:[Lcom/google/googlex/glass/common/proto/ai;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Boolean;

.field public g:I

.field public h:Lcom/google/googlex/glass/common/proto/ac;

.field public i:Ljava/lang/String;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ah;

    sput-object v0, Lcom/google/googlex/glass/common/proto/ah;->a:[Lcom/google/googlex/glass/common/proto/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v1, -0x8000

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    iput v1, p0, Lcom/google/googlex/glass/common/proto/ah;->c:I

    sget-object v0, Lcom/google/googlex/glass/common/proto/ai;->a:[Lcom/google/googlex/glass/common/proto/ai;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    iput v1, p0, Lcom/google/googlex/glass/common/proto/ah;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ah;->j:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/googlex/glass/common/proto/ah;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ah;->c:I

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/ai;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    new-instance v3, Lcom/google/googlex/glass/common/proto/ai;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/ai;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    array-length v0, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    new-instance v3, Lcom/google/googlex/glass/common/proto/ai;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/ai;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->f:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ah;->g:I

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/googlex/glass/common/proto/ac;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ac;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->i:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x38 -> :sswitch_5
        0x40 -> :sswitch_6
        0x4a -> :sswitch_7
        0x52 -> :sswitch_8
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
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/ah;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/ah;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ah;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ah;->c:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/ah;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ah;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ah;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    :goto_3
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ah;->g:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/ah;->g:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    if-nez v2, :cond_3

    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->i:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ah;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ah;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ah;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->f:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ah;->f:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/ac;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ah;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/googlex/glass/common/proto/ah;->j:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ah;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ah;->j:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 7

    const/4 v1, 0x0

    const/high16 v6, -0x8000

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ah;->c:I

    if-eq v2, v6, :cond_0

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/googlex/glass/common/proto/ah;->c:I

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ah;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ah;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ah;->g:I

    if-eq v1, v6, :cond_4

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ah;->g:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    if-eqz v1, :cond_5

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ah;->i:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ah;->j:I

    return v0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ah;->c:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ah;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->i:Ljava/lang/String;

    if-nez v2, :cond_8

    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v0

    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    move v2, v1

    :goto_6
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/ai;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x2

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ac;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ah;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ah;->a(Lcom/google/protobuf/nano/a;)Lcom/google/googlex/glass/common/proto/ah;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    const/high16 v5, -0x8000

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ah;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ah;->c:I

    if-eq v0, v5, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ah;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ah;->d:[Lcom/google/googlex/glass/common/proto/ai;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ah;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ah;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ah;->g:I

    if-eq v0, v5, :cond_5

    const/16 v0, 0x8

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ah;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_5
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    if-eqz v0, :cond_6

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ah;->h:Lcom/google/googlex/glass/common/proto/ac;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ah;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ah;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_7
    return-void
.end method
