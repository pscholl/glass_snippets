.class public final Lcom/google/glass/companion/l;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/glass/companion/l;


# instance fields
.field public b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/l;

    sput-object v0, Lcom/google/glass/companion/l;->a:[Lcom/google/glass/companion/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/l;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/l;->c:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/l;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/l;->b:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    instance-of v2, p1, Lcom/google/glass/companion/l;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/companion/l;

    iget v2, p0, Lcom/google/glass/companion/l;->b:I

    iget v3, p1, Lcom/google/glass/companion/l;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/glass/companion/l;->c:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/l;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/glass/companion/l;->c:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/l;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/companion/l;->c:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/glass/companion/l;->b:I

    add-int/lit16 v0, v0, 0x20f

    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/companion/l;->a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/l;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/l;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    return-void
.end method