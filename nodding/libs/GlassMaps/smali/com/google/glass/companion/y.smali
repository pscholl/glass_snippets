.class public final Lcom/google/glass/companion/y;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/glass/companion/y;


# instance fields
.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:[Lcom/google/glass/companion/aa;

.field public g:[Lcom/google/glass/companion/z;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Float;

.field public k:Ljava/lang/Float;

.field public l:Ljava/lang/Integer;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Integer;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/y;

    sput-object v0, Lcom/google/glass/companion/y;->a:[Lcom/google/glass/companion/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    sget-object v0, Lcom/google/glass/companion/aa;->a:[Lcom/google/glass/companion/aa;

    iput-object v0, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    sget-object v0, Lcom/google/glass/companion/z;->a:[Lcom/google/glass/companion/z;

    iput-object v0, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/y;->p:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/y;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->e:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/glass/companion/aa;

    iget-object v3, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    new-instance v3, Lcom/google/glass/companion/aa;

    invoke-direct {v3}, Lcom/google/glass/companion/aa;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    array-length v0, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    new-instance v3, Lcom/google/glass/companion/aa;

    invoke-direct {v3}, Lcom/google/glass/companion/aa;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/glass/companion/z;

    iget-object v3, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iput-object v2, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    :goto_4
    iget-object v2, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    new-instance v3, Lcom/google/glass/companion/z;

    invoke-direct {v3}, Lcom/google/glass/companion/z;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    array-length v0, v0

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    new-instance v3, Lcom/google/glass/companion/z;

    invoke-direct {v3}, Lcom/google/glass/companion/z;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->h:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->j:Ljava/lang/Float;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->k:Ljava/lang/Float;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->m:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->n:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/y;->o:Ljava/lang/Integer;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4d -> :sswitch_9
        0x55 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
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
    instance-of v2, p1, Lcom/google/glass/companion/y;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/companion/y;

    iget-object v2, p0, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/y;->d:Ljava/lang/Integer;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/glass/companion/y;->d:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/google/glass/companion/y;->e:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/glass/companion/y;->e:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_4
    iget-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    iget-object v3, p1, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    iget-object v3, p1, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/y;->h:Ljava/lang/Integer;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/glass/companion/y;->h:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_5
    iget-object v2, p0, Lcom/google/glass/companion/y;->i:Ljava/lang/Integer;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/glass/companion/y;->i:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_6
    iget-object v2, p0, Lcom/google/glass/companion/y;->j:Ljava/lang/Float;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/glass/companion/y;->j:Ljava/lang/Float;

    if-nez v2, :cond_3

    :goto_7
    iget-object v2, p0, Lcom/google/glass/companion/y;->k:Ljava/lang/Float;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/glass/companion/y;->k:Ljava/lang/Float;

    if-nez v2, :cond_3

    :goto_8
    iget-object v2, p0, Lcom/google/glass/companion/y;->l:Ljava/lang/Integer;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/glass/companion/y;->l:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_9
    iget-object v2, p0, Lcom/google/glass/companion/y;->m:Ljava/lang/Integer;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/glass/companion/y;->m:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_a
    iget-object v2, p0, Lcom/google/glass/companion/y;->n:Ljava/lang/Integer;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/google/glass/companion/y;->n:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_b
    iget-object v2, p0, Lcom/google/glass/companion/y;->o:Ljava/lang/Integer;

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/google/glass/companion/y;->o:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/y;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/companion/y;->d:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/glass/companion/y;->e:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/companion/y;->e:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/glass/companion/y;->h:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/companion/y;->h:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/glass/companion/y;->i:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/companion/y;->i:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/glass/companion/y;->j:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/glass/companion/y;->j:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/y;->k:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/glass/companion/y;->k:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_8

    :cond_c
    iget-object v2, p0, Lcom/google/glass/companion/y;->l:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/companion/y;->l:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_9

    :cond_d
    iget-object v2, p0, Lcom/google/glass/companion/y;->m:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/companion/y;->m:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_a

    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/y;->n:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/companion/y;->n:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/y;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/companion/y;->o:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/glass/companion/y;->p:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/y;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/glass/companion/y;->p:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/y;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/companion/y;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/y;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/glass/companion/y;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v3, v4, v2

    const/4 v6, 0x5

    invoke-static {v6, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    const/4 v5, 0x6

    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/y;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/glass/companion/y;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/y;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/glass/companion/y;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/y;->j:Ljava/lang/Float;

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/glass/companion/y;->j:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/glass/companion/y;->k:Ljava/lang/Float;

    if-eqz v1, :cond_8

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/glass/companion/y;->k:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-object v1, p0, Lcom/google/glass/companion/y;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/glass/companion/y;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/glass/companion/y;->m:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/glass/companion/y;->m:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/google/glass/companion/y;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/glass/companion/y;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/glass/companion/y;->o:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/glass/companion/y;->o:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iput v0, p0, Lcom/google/glass/companion/y;->p:I

    return v0

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 8

    const/16 v7, 0x20

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/y;->d:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/y;->e:Ljava/lang/Integer;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    if-nez v2, :cond_6

    mul-int/lit8 v2, v0, 0x1f

    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    if-nez v0, :cond_8

    mul-int/lit8 v2, v2, 0x1f

    :cond_1
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/y;->h:Ljava/lang/Integer;

    if-nez v0, :cond_a

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/y;->i:Ljava/lang/Integer;

    if-nez v0, :cond_b

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/y;->j:Ljava/lang/Float;

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/y;->k:Ljava/lang/Float;

    if-nez v0, :cond_d

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/y;->l:Ljava/lang/Integer;

    if-nez v0, :cond_e

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/y;->m:Ljava/lang/Integer;

    if-nez v0, :cond_f

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/y;->n:Ljava/lang/Integer;

    if-nez v0, :cond_10

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/y;->o:Ljava/lang/Integer;

    if-nez v2, :cond_11

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/y;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/y;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_6
    move v2, v0

    move v0, v1

    :goto_c
    iget-object v3, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v1

    :goto_d
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_7
    iget-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/aa;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_8
    move v0, v1

    :goto_e
    iget-object v3, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v1

    :goto_f
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_9
    iget-object v2, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/z;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/google/glass/companion/y;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/google/glass/companion/y;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_5

    :cond_c
    iget-object v0, p0, Lcom/google/glass/companion/y;->j:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto/16 :goto_6

    :cond_d
    iget-object v0, p0, Lcom/google/glass/companion/y;->k:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto/16 :goto_7

    :cond_e
    iget-object v0, p0, Lcom/google/glass/companion/y;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_8

    :cond_f
    iget-object v0, p0, Lcom/google/glass/companion/y;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_9

    :cond_10
    iget-object v0, p0, Lcom/google/glass/companion/y;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_a

    :cond_11
    iget-object v1, p0, Lcom/google/glass/companion/y;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_b
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/companion/y;->a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/y;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/y;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/y;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/y;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/y;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/y;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/y;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/glass/companion/y;->f:[Lcom/google/glass/companion/aa;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/glass/companion/y;->g:[Lcom/google/glass/companion/z;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/y;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/glass/companion/y;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_6
    iget-object v0, p0, Lcom/google/glass/companion/y;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/glass/companion/y;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_7
    iget-object v0, p0, Lcom/google/glass/companion/y;->j:Ljava/lang/Float;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/glass/companion/y;->j:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IF)V

    :cond_8
    iget-object v0, p0, Lcom/google/glass/companion/y;->k:Ljava/lang/Float;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/glass/companion/y;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IF)V

    :cond_9
    iget-object v0, p0, Lcom/google/glass/companion/y;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/glass/companion/y;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/glass/companion/y;->m:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/glass/companion/y;->m:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_b
    iget-object v0, p0, Lcom/google/glass/companion/y;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/glass/companion/y;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/glass/companion/y;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/glass/companion/y;->o:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_d
    return-void
.end method
