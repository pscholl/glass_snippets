.class public final Lcom/google/glass/companion/n;
.super Lcom/google/protobuf/nano/b;


# static fields
.field public static final a:[Lcom/google/glass/companion/n;


# instance fields
.field public A:Lcom/google/glass/companion/s;

.field private B:I

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field public g:[Lcom/google/glass/companion/ad;

.field public h:Lcom/google/glass/companion/x;

.field public i:Lcom/google/glass/companion/w;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Lcom/google/glass/companion/ab;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Lcom/google/glass/companion/m;

.field public p:Lcom/google/glass/companion/o;

.field public q:Lcom/google/glass/companion/ac;

.field public r:Lcom/google/glass/companion/l;

.field public s:Lcom/google/glass/companion/j;

.field public t:Lcom/google/glass/companion/k;

.field public u:Lcom/google/glass/companion/y;

.field public v:Lcom/google/glass/companion/p;

.field public w:Lcom/google/glass/companion/q;

.field public x:Lcom/google/glass/companion/t;

.field public y:Lcom/google/glass/companion/u;

.field public z:Lcom/google/glass/companion/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/n;

    sput-object v0, Lcom/google/glass/companion/n;->a:[Lcom/google/glass/companion/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iput-object v0, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    sget-object v0, Lcom/google/glass/companion/ad;->a:[Lcom/google/glass/companion/ad;

    iput-object v0, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    iput-object v1, p0, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    iput-object v1, p0, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    iput-object v1, p0, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    iput-object v1, p0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    iput-object v1, p0, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    iput-object v1, p0, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    iput-object v1, p0, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    iput-object v1, p0, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    iput-object v1, p0, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    iput-object v1, p0, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    iput-object v1, p0, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    iput-object v1, p0, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    iput-object v1, p0, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    iput-object v1, p0, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    iput-object v1, p0, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    iput-object v1, p0, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/n;->B:I

    return-void
.end method

.method private a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/n;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/n;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/n;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v0, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/glass/companion/x;

    invoke-direct {v0}, Lcom/google/glass/companion/x;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    iget-object v0, p0, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/glass/companion/w;

    invoke-direct {v0}, Lcom/google/glass/companion/w;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    iget-object v0, p0, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/n;->j:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/n;->k:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    new-instance v0, Lcom/google/glass/companion/ab;

    invoke-direct {v0}, Lcom/google/glass/companion/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    iget-object v0, p0, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/n;->m:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/n;->n:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    new-instance v0, Lcom/google/glass/companion/m;

    invoke-direct {v0}, Lcom/google/glass/companion/m;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    iget-object v0, p0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_e
    new-instance v0, Lcom/google/glass/companion/o;

    invoke-direct {v0}, Lcom/google/glass/companion/o;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    iget-object v0, p0, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Lcom/google/glass/companion/ac;

    invoke-direct {v0}, Lcom/google/glass/companion/ac;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    iget-object v0, p0, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_10
    new-instance v0, Lcom/google/glass/companion/l;

    invoke-direct {v0}, Lcom/google/glass/companion/l;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    iget-object v0, p0, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x8a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/d;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/glass/companion/ad;

    iget-object v3, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iput-object v2, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    :goto_4
    iget-object v2, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    new-instance v3, Lcom/google/glass/companion/ad;

    invoke-direct {v3}, Lcom/google/glass/companion/ad;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    array-length v0, v0

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    new-instance v3, Lcom/google/glass/companion/ad;

    invoke-direct {v3}, Lcom/google/glass/companion/ad;-><init>()V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_12
    new-instance v0, Lcom/google/glass/companion/j;

    invoke-direct {v0}, Lcom/google/glass/companion/j;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    iget-object v0, p0, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_13
    new-instance v0, Lcom/google/glass/companion/k;

    invoke-direct {v0}, Lcom/google/glass/companion/k;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    iget-object v0, p0, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_14
    new-instance v0, Lcom/google/glass/companion/y;

    invoke-direct {v0}, Lcom/google/glass/companion/y;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    iget-object v0, p0, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_15
    new-instance v0, Lcom/google/glass/companion/p;

    invoke-direct {v0}, Lcom/google/glass/companion/p;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    iget-object v0, p0, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_16
    new-instance v0, Lcom/google/glass/companion/q;

    invoke-direct {v0}, Lcom/google/glass/companion/q;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    iget-object v0, p0, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_17
    new-instance v0, Lcom/google/glass/companion/t;

    invoke-direct {v0}, Lcom/google/glass/companion/t;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    iget-object v0, p0, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_18
    new-instance v0, Lcom/google/glass/companion/u;

    invoke-direct {v0}, Lcom/google/glass/companion/u;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    iget-object v0, p0, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_19
    new-instance v0, Lcom/google/glass/companion/r;

    invoke-direct {v0}, Lcom/google/glass/companion/r;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    iget-object v0, p0, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

    goto/16 :goto_0

    :sswitch_1a
    new-instance v0, Lcom/google/glass/companion/s;

    invoke-direct {v0}, Lcom/google/glass/companion/s;-><init>()V

    iput-object v0, p0, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    iget-object v0, p0, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/b;)V

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
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
    .end sparse-switch
.end method

.method public static a([B)Lcom/google/glass/companion/n;
    .locals 1

    new-instance v0, Lcom/google/glass/companion/n;

    invoke-direct {v0}, Lcom/google/glass/companion/n;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/b;->mergeFrom(Lcom/google/protobuf/nano/b;[B)Lcom/google/protobuf/nano/b;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/n;

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
    instance-of v2, p1, Lcom/google/glass/companion/n;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/glass/companion/n;

    iget-object v2, p0, Lcom/google/glass/companion/n;->b:Ljava/lang/Integer;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/n;->b:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/companion/n;->c:Ljava/lang/Integer;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/companion/n;->c:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    if-nez v2, :cond_3

    :goto_4
    iget-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, p1, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    iget-object v3, p1, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    if-nez v2, :cond_3

    :goto_5
    iget-object v2, p0, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    if-nez v2, :cond_3

    :goto_6
    iget-object v2, p0, Lcom/google/glass/companion/n;->j:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/glass/companion/n;->j:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_7
    iget-object v2, p0, Lcom/google/glass/companion/n;->k:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/glass/companion/n;->k:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_8
    iget-object v2, p0, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    if-nez v2, :cond_3

    :goto_9
    iget-object v2, p0, Lcom/google/glass/companion/n;->m:Ljava/lang/String;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/glass/companion/n;->m:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_a
    iget-object v2, p0, Lcom/google/glass/companion/n;->n:Ljava/lang/String;

    if-nez v2, :cond_e

    iget-object v2, p1, Lcom/google/glass/companion/n;->n:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_b
    iget-object v2, p0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    if-nez v2, :cond_3

    :goto_c
    iget-object v2, p0, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    if-nez v2, :cond_10

    iget-object v2, p1, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    if-nez v2, :cond_3

    :goto_d
    iget-object v2, p0, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    if-nez v2, :cond_11

    iget-object v2, p1, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    if-nez v2, :cond_3

    :goto_e
    iget-object v2, p0, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    if-nez v2, :cond_12

    iget-object v2, p1, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    if-nez v2, :cond_3

    :goto_f
    iget-object v2, p0, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    if-nez v2, :cond_13

    iget-object v2, p1, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    if-nez v2, :cond_3

    :goto_10
    iget-object v2, p0, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    if-nez v2, :cond_14

    iget-object v2, p1, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    if-nez v2, :cond_3

    :goto_11
    iget-object v2, p0, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    if-nez v2, :cond_15

    iget-object v2, p1, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    if-nez v2, :cond_3

    :goto_12
    iget-object v2, p0, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    if-nez v2, :cond_16

    iget-object v2, p1, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    if-nez v2, :cond_3

    :goto_13
    iget-object v2, p0, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    if-nez v2, :cond_3

    :goto_14
    iget-object v2, p0, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    if-nez v2, :cond_18

    iget-object v2, p1, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    if-nez v2, :cond_3

    :goto_15
    iget-object v2, p0, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    if-nez v2, :cond_19

    iget-object v2, p1, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    if-nez v2, :cond_3

    :goto_16
    iget-object v2, p0, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    if-nez v2, :cond_1a

    iget-object v2, p1, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    if-nez v2, :cond_3

    :goto_17
    iget-object v2, p0, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    if-nez v2, :cond_1b

    iget-object v2, p1, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/n;->b:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/companion/n;->b:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/n;->c:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/glass/companion/n;->c:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_7
    iget-object v2, p0, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_8
    iget-object v2, p0, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    iget-object v3, p1, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/x;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_5

    :cond_9
    iget-object v2, p0, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    iget-object v3, p1, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v2, p0, Lcom/google/glass/companion/n;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/n;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/n;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/n;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_8

    :cond_c
    iget-object v2, p0, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    iget-object v3, p1, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v2, p0, Lcom/google/glass/companion/n;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/n;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/n;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/n;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v2, p0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    iget-object v3, p1, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_c

    :cond_10
    iget-object v2, p0, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    iget-object v3, p1, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_d

    :cond_11
    iget-object v2, p0, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    iget-object v3, p1, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/ac;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_e

    :cond_12
    iget-object v2, p0, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    iget-object v3, p1, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_f

    :cond_13
    iget-object v2, p0, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    iget-object v3, p1, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_10

    :cond_14
    iget-object v2, p0, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    iget-object v3, p1, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_11

    :cond_15
    iget-object v2, p0, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    iget-object v3, p1, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/y;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_12

    :cond_16
    iget-object v2, p0, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    iget-object v3, p1, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_13

    :cond_17
    iget-object v2, p0, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    iget-object v3, p1, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_14

    :cond_18
    iget-object v2, p0, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    iget-object v3, p1, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/t;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_15

    :cond_19
    iget-object v2, p0, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    iget-object v3, p1, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/u;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_16

    :cond_1a
    iget-object v2, p0, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    iget-object v3, p1, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_17

    :cond_1b
    iget-object v2, p0, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    iget-object v3, p1, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0
.end method

.method public final getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/glass/companion/n;->B:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/companion/n;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/glass/companion/n;->B:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/n;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(II)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/glass/companion/n;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/glass/companion/n;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v3, v4, v2

    const/4 v6, 0x5

    invoke-static {v6, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/n;->j:Ljava/lang/String;

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/glass/companion/n;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/glass/companion/n;->k:Ljava/lang/String;

    if-eqz v2, :cond_7

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/glass/companion/n;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    if-eqz v2, :cond_8

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-object v2, p0, Lcom/google/glass/companion/n;->m:Ljava/lang/String;

    if-eqz v2, :cond_9

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/glass/companion/n;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget-object v2, p0, Lcom/google/glass/companion/n;->n:Ljava/lang/String;

    if-eqz v2, :cond_a

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/glass/companion/n;->n:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget-object v2, p0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    if-eqz v2, :cond_b

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget-object v2, p0, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    if-eqz v2, :cond_c

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    if-eqz v2, :cond_d

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-object v2, p0, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    if-eqz v2, :cond_e

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e
    iget-object v2, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_f

    aget-object v2, v3, v1

    const/16 v5, 0x11

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_f
    iget-object v1, p0, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    if-eqz v1, :cond_10

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    if-eqz v1, :cond_11

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    if-eqz v1, :cond_12

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    if-eqz v1, :cond_13

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-object v1, p0, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    if-eqz v1, :cond_14

    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    if-eqz v1, :cond_15

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    if-eqz v1, :cond_16

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget-object v1, p0, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    if-eqz v1, :cond_17

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    if-eqz v1, :cond_18

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/b;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iput v0, p0, Lcom/google/glass/companion/n;->B:I

    return v0
.end method

.method public final hashCode()I
    .locals 8

    const/16 v7, 0x20

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/glass/companion/n;->b:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->c:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-nez v2, :cond_6

    mul-int/lit8 v2, v0, 0x1f

    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    if-nez v0, :cond_8

    mul-int/lit8 v2, v2, 0x1f

    :cond_1
    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    if-nez v0, :cond_a

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    if-nez v0, :cond_b

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->j:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->k:Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    if-nez v0, :cond_e

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->m:Ljava/lang/String;

    if-nez v0, :cond_f

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->n:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    if-nez v0, :cond_11

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    if-nez v0, :cond_12

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    if-nez v0, :cond_13

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    if-nez v0, :cond_14

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    if-nez v0, :cond_15

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    if-nez v0, :cond_16

    move v0, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    if-nez v0, :cond_17

    move v0, v1

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    if-nez v0, :cond_18

    move v0, v1

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    if-nez v0, :cond_19

    move v0, v1

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    if-nez v0, :cond_1a

    move v0, v1

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    if-nez v0, :cond_1c

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    if-nez v2, :cond_1d

    :goto_17
    add-int/2addr v0, v1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/n;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/glass/companion/n;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v0, v3

    goto/16 :goto_3

    :cond_6
    move v2, v0

    move v0, v1

    :goto_18
    iget-object v3, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    if-nez v2, :cond_7

    move v2, v1

    :goto_19
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_7
    iget-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hashCode()I

    move-result v2

    goto :goto_19

    :cond_8
    move v0, v1

    :goto_1a
    iget-object v3, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    mul-int/lit8 v3, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    move v2, v1

    :goto_1b
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_9
    iget-object v2, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/glass/companion/ad;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_a
    iget-object v0, p0, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    invoke-virtual {v0}, Lcom/google/glass/companion/x;->hashCode()I

    move-result v0

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    invoke-virtual {v0}, Lcom/google/glass/companion/w;->hashCode()I

    move-result v0

    goto/16 :goto_5

    :cond_c
    iget-object v0, p0, Lcom/google/glass/companion/n;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_6

    :cond_d
    iget-object v0, p0, Lcom/google/glass/companion/n;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_7

    :cond_e
    iget-object v0, p0, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    invoke-virtual {v0}, Lcom/google/glass/companion/ab;->hashCode()I

    move-result v0

    goto/16 :goto_8

    :cond_f
    iget-object v0, p0, Lcom/google/glass/companion/n;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_9

    :cond_10
    iget-object v0, p0, Lcom/google/glass/companion/n;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_a

    :cond_11
    iget-object v0, p0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    invoke-virtual {v0}, Lcom/google/glass/companion/m;->hashCode()I

    move-result v0

    goto/16 :goto_b

    :cond_12
    iget-object v0, p0, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    invoke-virtual {v0}, Lcom/google/glass/companion/o;->hashCode()I

    move-result v0

    goto/16 :goto_c

    :cond_13
    iget-object v0, p0, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    invoke-virtual {v0}, Lcom/google/glass/companion/ac;->hashCode()I

    move-result v0

    goto/16 :goto_d

    :cond_14
    iget-object v0, p0, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    invoke-virtual {v0}, Lcom/google/glass/companion/l;->hashCode()I

    move-result v0

    goto/16 :goto_e

    :cond_15
    iget-object v0, p0, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    invoke-virtual {v0}, Lcom/google/glass/companion/j;->hashCode()I

    move-result v0

    goto/16 :goto_f

    :cond_16
    iget-object v0, p0, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    invoke-virtual {v0}, Lcom/google/glass/companion/k;->hashCode()I

    move-result v0

    goto/16 :goto_10

    :cond_17
    iget-object v0, p0, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    invoke-virtual {v0}, Lcom/google/glass/companion/y;->hashCode()I

    move-result v0

    goto/16 :goto_11

    :cond_18
    iget-object v0, p0, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    invoke-virtual {v0}, Lcom/google/glass/companion/p;->hashCode()I

    move-result v0

    goto/16 :goto_12

    :cond_19
    iget-object v0, p0, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    invoke-virtual {v0}, Lcom/google/glass/companion/q;->hashCode()I

    move-result v0

    goto/16 :goto_13

    :cond_1a
    iget-object v0, p0, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    invoke-virtual {v0}, Lcom/google/glass/companion/t;->hashCode()I

    move-result v0

    goto/16 :goto_14

    :cond_1b
    iget-object v0, p0, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    invoke-virtual {v0}, Lcom/google/glass/companion/u;->hashCode()I

    move-result v0

    goto/16 :goto_15

    :cond_1c
    iget-object v0, p0, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    invoke-virtual {v0}, Lcom/google/glass/companion/r;->hashCode()I

    move-result v0

    goto/16 :goto_16

    :cond_1d
    iget-object v1, p0, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    invoke-virtual {v1}, Lcom/google/glass/companion/s;->hashCode()I

    move-result v1

    goto/16 :goto_17
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/glass/companion/n;->a(Lcom/google/protobuf/nano/a;)Lcom/google/glass/companion/n;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/n;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    iget-object v1, p0, Lcom/google/glass/companion/n;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/n;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/companion/n;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/glass/companion/n;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/n;->f:[Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/glass/companion/n;->h:Lcom/google/glass/companion/x;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/glass/companion/n;->i:Lcom/google/glass/companion/w;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_5
    iget-object v1, p0, Lcom/google/glass/companion/n;->j:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/glass/companion/n;->j:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/google/glass/companion/n;->k:Ljava/lang/String;

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/glass/companion/n;->k:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    if-eqz v1, :cond_8

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/glass/companion/n;->l:Lcom/google/glass/companion/ab;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_8
    iget-object v1, p0, Lcom/google/glass/companion/n;->m:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/glass/companion/n;->m:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/google/glass/companion/n;->n:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/glass/companion/n;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    if-eqz v1, :cond_b

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/glass/companion/n;->o:Lcom/google/glass/companion/m;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_b
    iget-object v1, p0, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    if-eqz v1, :cond_c

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/glass/companion/n;->p:Lcom/google/glass/companion/o;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_c
    iget-object v1, p0, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    if-eqz v1, :cond_d

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/glass/companion/n;->q:Lcom/google/glass/companion/ac;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_d
    iget-object v1, p0, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    if-eqz v1, :cond_e

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/glass/companion/n;->r:Lcom/google/glass/companion/l;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_e
    iget-object v1, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/glass/companion/n;->g:[Lcom/google/glass/companion/ad;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_f

    aget-object v3, v1, v0

    const/16 v4, 0x11

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    iget-object v0, p0, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    if-eqz v0, :cond_10

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/glass/companion/n;->s:Lcom/google/glass/companion/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_10
    iget-object v0, p0, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/glass/companion/n;->t:Lcom/google/glass/companion/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_11
    iget-object v0, p0, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    if-eqz v0, :cond_12

    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/glass/companion/n;->u:Lcom/google/glass/companion/y;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_12
    iget-object v0, p0, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    if-eqz v0, :cond_13

    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/glass/companion/n;->v:Lcom/google/glass/companion/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_13
    iget-object v0, p0, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    if-eqz v0, :cond_14

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/glass/companion/n;->w:Lcom/google/glass/companion/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_14
    iget-object v0, p0, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    if-eqz v0, :cond_15

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/glass/companion/n;->x:Lcom/google/glass/companion/t;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_15
    iget-object v0, p0, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    if-eqz v0, :cond_16

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/glass/companion/n;->y:Lcom/google/glass/companion/u;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_16
    iget-object v0, p0, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    if-eqz v0, :cond_17

    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/glass/companion/n;->z:Lcom/google/glass/companion/r;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_17
    iget-object v0, p0, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    if-eqz v0, :cond_18

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/glass/companion/n;->A:Lcom/google/glass/companion/s;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/b;)V

    :cond_18
    return-void
.end method
