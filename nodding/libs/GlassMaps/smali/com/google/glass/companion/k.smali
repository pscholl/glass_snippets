.class public final Lcom/google/glass/companion/k;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/glass/companion/k;


# instance fields
.field public b:I

.field public c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public d:Lcom/google/googlex/glass/common/proto/am;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/k;

    sput-object v0, Lcom/google/glass/companion/k;->a:[Lcom/google/glass/companion/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/k;->b:I

    iput-object v1, p0, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v1, p0, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/k;->e:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/k;
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

    iput v0, p0, Lcom/google/glass/companion/k;->b:I

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v0, p0, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/googlex/glass/common/proto/am;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/am;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    iget-object v0, p0, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    instance-of v2, p1, Lcom/google/glass/companion/k;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/companion/k;

    iget v2, p0, Lcom/google/glass/companion/k;->b:I

    iget v3, p1, Lcom/google/glass/companion/k;->b:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p1, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    iget-object v3, p1, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/am;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/glass/companion/k;->e:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/k;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/glass/companion/k;->e:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/glass/companion/k;->b:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/k;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/google/glass/companion/k;->e:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/glass/companion/k;->b:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/am;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/companion/k;->a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/k;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    iget v0, p0, Lcom/google/glass/companion/k;->b:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/k;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/k;->c:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/k;->d:Lcom/google/googlex/glass/common/proto/am;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_2
    return-void
.end method
