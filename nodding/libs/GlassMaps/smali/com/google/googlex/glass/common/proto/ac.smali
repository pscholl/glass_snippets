.class public final Lcom/google/googlex/glass/common/proto/ac;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/googlex/glass/common/proto/ac;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[Lcom/google/googlex/glass/common/proto/aj;

.field public e:I

.field public f:[I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:[Ljava/lang/String;

.field public k:Ljava/lang/Boolean;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:[Ljava/lang/String;

.field public q:[Ljava/lang/String;

.field public r:Ljava/lang/Boolean;

.field public s:Lcom/google/googlex/glass/common/proto/ae;

.field public t:[Lcom/google/googlex/glass/common/proto/ad;

.field public u:Ljava/lang/String;

.field public v:[I

.field public w:Ljava/lang/Long;

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ac;

    sput-object v0, Lcom/google/googlex/glass/common/proto/ac;->a:[Lcom/google/googlex/glass/common/proto/ac;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v1, -0x8000

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    sget-object v0, Lcom/google/googlex/glass/common/proto/aj;->a:[Lcom/google/googlex/glass/common/proto/aj;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    iput v1, p0, Lcom/google/googlex/glass/common/proto/ac;->e:I

    sget-object v0, Lcom/google/protobuf/nano/d;->e:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    sget-object v0, Lcom/google/protobuf/nano/d;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    iput v1, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    sget-object v0, Lcom/google/protobuf/nano/d;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/d;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/d;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    sget-object v0, Lcom/google/googlex/glass/common/proto/ad;->a:[Lcom/google/googlex/glass/common/proto/ad;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    sget-object v0, Lcom/google/protobuf/nano/d;->e:[I

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ac;->x:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/googlex/glass/common/proto/ac;
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

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x62

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x6a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    :sswitch_c
    new-instance v0, Lcom/google/googlex/glass/common/proto/ae;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ae;-><init>()V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x7a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x82

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/ad;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    :goto_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    new-instance v3, Lcom/google/googlex/glass/common/proto/ad;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/ad;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    array-length v0, v0

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    new-instance v3, Lcom/google/googlex/glass/common/proto/ad;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/ad;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->u:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    :goto_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0xb2

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    if-nez v0, :cond_a

    move v0, v1

    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/aj;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    :goto_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_b

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    new-instance v3, Lcom/google/googlex/glass/common/proto/aj;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/aj;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_a
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    array-length v0, v0

    goto :goto_8

    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    new-instance v3, Lcom/google/googlex/glass/common/proto/aj;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/aj;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->h:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ac;->e:I

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->i:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0xd8

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    :goto_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_c

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v3

    aput v3, v2, v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x50 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7a -> :sswitch_d
        0x82 -> :sswitch_e
        0x8a -> :sswitch_f
        0xa0 -> :sswitch_10
        0xa8 -> :sswitch_11
        0xb2 -> :sswitch_12
        0xba -> :sswitch_13
        0xc8 -> :sswitch_14
        0xd2 -> :sswitch_15
        0xd8 -> :sswitch_16
    .end sparse-switch
.end method

.method public static a([B)Lcom/google/googlex/glass/common/proto/ac;
    .locals 1

    new-instance v0, Lcom/google/googlex/glass/common/proto/ac;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ac;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/b;->mergeFrom(Lcom/google/protobuf/nano/b;[B)Lcom/google/protobuf/nano/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ac;

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
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/ac;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/ac;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ac;->e:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/ac;->e:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->h:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->i:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->i:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    :goto_6
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/ac;->l:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    :goto_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    if-nez v2, :cond_3

    :goto_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->u:Ljava/lang/String;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->u:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_8

    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/ae;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/googlex/glass/common/proto/ac;->x:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ac;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ac;->x:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 8

    const/high16 v7, -0x8000

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    if-eq v2, v7, :cond_3

    const/4 v2, 0x6

    iget v3, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_1
    if-ge v2, v5, :cond_6

    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_a

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_2
    if-ge v2, v5, :cond_9

    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_c

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_3
    if-ge v2, v5, :cond_b

    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    if-eqz v2, :cond_d

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_4
    if-ge v2, v5, :cond_e

    aget-object v6, v4, v2

    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_f
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    if-eqz v2, :cond_10

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    array-length v5, v4

    move v2, v1

    :goto_5
    if-ge v2, v5, :cond_10

    aget-object v3, v4, v2

    const/16 v6, 0x10

    invoke-static {v6, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_5

    :cond_10
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->u:Ljava/lang/String;

    if-eqz v2, :cond_11

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->u:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    array-length v2, v2

    if-lez v2, :cond_13

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    array-length v5, v4

    move v2, v1

    move v3, v1

    :goto_6
    if-ge v2, v5, :cond_12

    aget v6, v4, v2

    invoke-static {v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    :cond_13
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    if-eqz v2, :cond_14

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_14
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    if-eqz v2, :cond_15

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    array-length v5, v4

    move v2, v1

    :goto_7
    if-ge v2, v5, :cond_15

    aget-object v3, v4, v2

    const/16 v6, 0x16

    invoke-static {v6, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_7

    :cond_15
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->h:Ljava/lang/String;

    if-eqz v2, :cond_16

    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_16
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ac;->e:I

    if-eq v2, v7, :cond_17

    const/16 v2, 0x19

    iget v3, p0, Lcom/google/googlex/glass/common/proto/ac;->e:I

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_17
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->i:Ljava/lang/String;

    if-eqz v2, :cond_18

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_18
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    array-length v2, v2

    if-lez v2, :cond_1a

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    array-length v4, v3

    move v2, v1

    :goto_8
    if-ge v1, v4, :cond_19

    aget v5, v3, v1

    invoke-static {v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1a
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ac;->x:I

    return v0

    :cond_1b
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    if-nez v0, :cond_a

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    if-nez v2, :cond_b

    mul-int/lit8 v2, v0, 0x1f

    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ac;->e:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    if-nez v2, :cond_d

    mul-int/lit8 v2, v0, 0x1f

    :cond_1
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    if-nez v0, :cond_e

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->h:Ljava/lang/String;

    if-nez v0, :cond_f

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->i:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    if-nez v2, :cond_11

    mul-int/lit8 v2, v0, 0x1f

    :cond_2
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_13

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    if-nez v0, :cond_15

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    if-nez v2, :cond_16

    mul-int/lit8 v2, v0, 0x1f

    :cond_3
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    if-nez v0, :cond_18

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    if-nez v2, :cond_19

    mul-int/lit8 v2, v0, 0x1f

    :cond_4
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    if-nez v0, :cond_1b

    mul-int/lit8 v2, v2, 0x1f

    :cond_5
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    if-nez v2, :cond_1d

    move v3, v1

    :cond_6
    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    if-nez v0, :cond_1e

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    if-nez v2, :cond_1f

    mul-int/lit8 v2, v0, 0x1f

    :cond_7
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->u:Ljava/lang/String;

    if-nez v0, :cond_21

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    if-nez v2, :cond_22

    mul-int/lit8 v2, v0, 0x1f

    :cond_8
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    if-nez v2, :cond_23

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_b
    move v2, v0

    move v0, v1

    :goto_c
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    aget-object v2, v2, v0

    if-nez v2, :cond_c

    move v2, v1

    :goto_d
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/aj;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    move v2, v0

    move v0, v1

    :goto_e
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    array-length v5, v5

    if-ge v0, v5, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    aget v5, v5, v0

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_e
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_11
    move v2, v0

    move v0, v1

    :goto_f
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_12

    move v2, v1

    :goto_10
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_12
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_13
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v3

    goto/16 :goto_5

    :cond_14
    move v0, v4

    goto/16 :goto_5

    :cond_15
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_16
    move v2, v0

    move v0, v1

    :goto_11
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_17

    move v2, v1

    :goto_12
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_17
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_18
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_7

    :cond_19
    move v2, v0

    move v0, v1

    :goto_13
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1a

    move v2, v1

    :goto_14
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_1b
    move v0, v1

    :goto_15
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_5

    mul-int/lit8 v5, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1c

    move v2, v1

    :goto_16
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_1c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_16

    :cond_1d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    move v3, v4

    goto/16 :goto_8

    :cond_1e
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ae;->hashCode()I

    move-result v0

    goto/16 :goto_9

    :cond_1f
    move v2, v0

    move v0, v1

    :goto_17
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    aget-object v2, v2, v0

    if-nez v2, :cond_20

    move v2, v1

    :goto_18
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_20
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/ad;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_21
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ac;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_22
    move v2, v0

    move v0, v1

    :goto_19
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    array-length v3, v3

    if-ge v0, v3, :cond_8

    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_23
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    goto/16 :goto_b
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ac;->a(Lcom/google/protobuf/nano/a;)Lcom/google/googlex/glass/common/proto/ac;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7

    const/high16 v6, -0x8000

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->k:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    if-eq v1, v6, :cond_4

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ac;->l:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->m:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->o:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->q:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    const/16 v5, 0x9

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->r:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    :cond_8
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_9

    aget-object v4, v2, v1

    const/16 v5, 0xc

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->n:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    const/16 v5, 0xd

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    if-eqz v1, :cond_b

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->s:Lcom/google/googlex/glass/common/proto/ae;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_b
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->p:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_c

    aget-object v4, v2, v1

    const/16 v5, 0xf

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->t:[Lcom/google/googlex/glass/common/proto/ad;

    array-length v3, v2

    move v1, v0

    :goto_4
    if-ge v1, v3, :cond_d

    aget-object v4, v2, v1

    const/16 v5, 0x10

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->u:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->u:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_e
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    array-length v1, v1

    if-lez v1, :cond_f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->v:[I

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_f

    aget v4, v2, v1

    const/16 v5, 0x14

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    if-eqz v1, :cond_10

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->w:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    :cond_10
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->d:[Lcom/google/googlex/glass/common/proto/aj;

    array-length v3, v2

    move v1, v0

    :goto_6
    if-ge v1, v3, :cond_11

    aget-object v4, v2, v1

    const/16 v5, 0x16

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->h:Ljava/lang/String;

    if-eqz v1, :cond_12

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->h:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_12
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ac;->e:I

    if-eq v1, v6, :cond_13

    const/16 v1, 0x19

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ac;->e:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    :cond_13
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->i:Ljava/lang/String;

    if-eqz v1, :cond_14

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ac;->i:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_14
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    array-length v1, v1

    if-lez v1, :cond_15

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ac;->f:[I

    array-length v2, v1

    :goto_7
    if-ge v0, v2, :cond_15

    aget v3, v1, v0

    const/16 v4, 0x1b

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method
