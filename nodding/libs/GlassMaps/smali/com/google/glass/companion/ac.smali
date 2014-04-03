.class public final Lcom/google/glass/companion/ac;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/glass/companion/ac;


# instance fields
.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:[B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/ac;

    sput-object v0, Lcom/google/glass/companion/ac;->a:[Lcom/google/glass/companion/ac;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/ac;->e:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/ac;
    .locals 1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/ac;->b:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/ac;->c:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->k()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/ac;->d:[B

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    instance-of v2, p1, Lcom/google/glass/companion/ac;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/companion/ac;

    iget-object v2, p0, Lcom/google/glass/companion/ac;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/ac;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/ac;->c:Ljava/lang/Boolean;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/ac;->c:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/ac;->d:[B

    iget-object v3, p1, Lcom/google/glass/companion/ac;->d:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/ac;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/glass/companion/ac;->b:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/ac;->c:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/glass/companion/ac;->c:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/glass/companion/ac;->e:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/ac;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/glass/companion/ac;->e:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/companion/ac;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/ac;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/ac;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/ac;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/ac;->d:[B

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/ac;->d:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/google/glass/companion/ac;->e:I

    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/companion/ac;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/glass/companion/ac;->c:Ljava/lang/Boolean;

    if-nez v4, :cond_4

    move v2, v1

    :cond_0
    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/glass/companion/ac;->d:[B

    if-nez v2, :cond_5

    mul-int/lit8 v0, v0, 0x1f

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/ac;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/google/glass/companion/ac;->c:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/ac;->d:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/ac;->d:[B

    aget-byte v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/companion/ac;->a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/ac;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/companion/ac;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/ac;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/ac;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/ac;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/ac;->d:[B

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/ac;->d:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    :cond_2
    return-void
.end method
