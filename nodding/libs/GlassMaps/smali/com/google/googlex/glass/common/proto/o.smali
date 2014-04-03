.class public final Lcom/google/googlex/glass/common/proto/o;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/googlex/glass/common/proto/o;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Lcom/google/googlex/glass/common/proto/p;

.field public d:I

.field public e:Ljava/lang/Boolean;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/o;

    sput-object v0, Lcom/google/googlex/glass/common/proto/o;->a:[Lcom/google/googlex/glass/common/proto/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/o;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/o;->f:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/googlex/glass/common/proto/o;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/googlex/glass/common/proto/p;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/p;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/o;->d:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->e:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/o;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/o;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    if-nez v2, :cond_3

    :goto_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/o;->d:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/o;->d:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/o;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/o;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/o;->e:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/o;->e:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/googlex/glass/common/proto/o;->f:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/o;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/o;->f:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/o;->d:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/o;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/o;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/o;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lcom/google/googlex/glass/common/proto/o;->f:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/o;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/o;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/p;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/o;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    goto :goto_2
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/o;->a(Lcom/google/protobuf/nano/a;)Lcom/google/googlex/glass/common/proto/o;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/o;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/o;->c:Lcom/google/googlex/glass/common/proto/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/o;->d:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/o;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/o;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/o;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    :cond_3
    return-void
.end method
