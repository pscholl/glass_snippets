.class public final Lcom/google/glass/companion/j;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/glass/companion/j;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public f:[[B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/j;

    sput-object v0, Lcom/google/glass/companion/j;->a:[Lcom/google/glass/companion/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/j;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    sget-object v0, Lcom/google/protobuf/nano/d;->k:[[B

    iput-object v0, p0, Lcom/google/glass/companion/j;->f:[[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/j;->g:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/j;
    .locals 4

    const/4 v3, 0x0

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

    iput-object v0, p0, Lcom/google/glass/companion/j;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/j;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/j;->d:I

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v0, p0, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v1

    iget-object v0, p0, Lcom/google/glass/companion/j;->f:[[B

    array-length v0, v0

    add-int/2addr v1, v0

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/google/glass/companion/j;->f:[[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/google/glass/companion/j;->f:[[B

    :goto_1
    iget-object v1, p0, Lcom/google/glass/companion/j;->f:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/companion/j;->f:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->k()[B

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/j;->f:[[B

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->k()[B

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    instance-of v2, p1, Lcom/google/glass/companion/j;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/companion/j;

    iget-object v2, p0, Lcom/google/glass/companion/j;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/j;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/j;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/j;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget v2, p0, Lcom/google/glass/companion/j;->d:I

    iget v3, p1, Lcom/google/glass/companion/j;->d:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/google/glass/companion/j;->f:[[B

    iget-object v3, p1, Lcom/google/glass/companion/j;->f:[[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/j;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/j;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p1, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/glass/companion/j;->g:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/j;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/glass/companion/j;->g:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/companion/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/j;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/glass/companion/j;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/companion/j;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget v2, p0, Lcom/google/glass/companion/j;->d:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_1

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/glass/companion/j;->d:I

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/j;->f:[[B

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/glass/companion/j;->f:[[B

    array-length v2, v2

    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/google/glass/companion/j;->f:[[B

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a([B)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/glass/companion/j;->f:[[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lcom/google/glass/companion/j;->g:I

    return v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/companion/j;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/j;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/j;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/glass/companion/j;->f:[[B

    if-nez v2, :cond_4

    mul-int/lit8 v2, v0, 0x1f

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/j;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    move v2, v0

    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/google/glass/companion/j;->f:[[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    move v3, v1

    :goto_4
    iget-object v4, p0, Lcom/google/glass/companion/j;->f:[[B

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_5

    mul-int/lit8 v2, v2, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/j;->f:[[B

    aget-object v4, v4, v0

    aget-byte v4, v4, v3

    add-int/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/companion/j;->a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/j;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5

    iget-object v0, p0, Lcom/google/glass/companion/j;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/j;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/j;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/google/glass/companion/j;->d:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/j;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/companion/j;->e:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/j;->f:[[B

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/glass/companion/j;->f:[[B

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
