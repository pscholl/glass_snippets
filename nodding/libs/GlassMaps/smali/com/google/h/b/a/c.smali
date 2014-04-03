.class public final Lcom/google/h/b/a/c;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:J

.field private c:Z

.field private d:J

.field private e:Z

.field private f:F

.field private g:Z

.field private h:F

.field private i:Z

.field private j:F

.field private k:Z

.field private l:J

.field private m:Z

.field private n:J

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/util/List;

.field private t:Z

.field private u:F

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    iput-wide v2, p0, Lcom/google/h/b/a/c;->b:J

    iput-wide v2, p0, Lcom/google/h/b/a/c;->d:J

    iput v1, p0, Lcom/google/h/b/a/c;->f:F

    iput v1, p0, Lcom/google/h/b/a/c;->h:F

    iput v1, p0, Lcom/google/h/b/a/c;->j:F

    iput-wide v2, p0, Lcom/google/h/b/a/c;->l:J

    iput-wide v2, p0, Lcom/google/h/b/a/c;->n:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/b/a/c;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/b/a/c;->r:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/b/a/c;->s:Ljava/util/List;

    iput v1, p0, Lcom/google/h/b/a/c;->u:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/h/b/a/c;->v:I

    return-void
.end method

.method private a(F)Lcom/google/h/b/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/c;->e:Z

    iput p1, p0, Lcom/google/h/b/a/c;->f:F

    return-object p0
.end method

.method private a(J)Lcom/google/h/b/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/c;->a:Z

    iput-wide p1, p0, Lcom/google/h/b/a/c;->b:J

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/h/b/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/c;->o:Z

    iput-object p1, p0, Lcom/google/h/b/a/c;->p:Ljava/lang/String;

    return-object p0
.end method

.method private b(F)Lcom/google/h/b/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/c;->g:Z

    iput p1, p0, Lcom/google/h/b/a/c;->h:F

    return-object p0
.end method

.method private b(J)Lcom/google/h/b/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/c;->c:Z

    iput-wide p1, p0, Lcom/google/h/b/a/c;->d:J

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/h/b/a/c;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/h/b/a/c;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/h/b/a/c;->a(J)Lcom/google/h/b/a/c;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/h/b/a/c;->b(J)Lcom/google/h/b/a/c;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/c;->a(F)Lcom/google/h/b/a/c;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/c;->b(F)Lcom/google/h/b/a/c;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/c;->c(F)Lcom/google/h/b/a/c;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/h/b/a/c;->c(J)Lcom/google/h/b/a/c;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/h/b/a/c;->d(J)Lcom/google/h/b/a/c;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/c;->a(Ljava/lang/String;)Lcom/google/h/b/a/c;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/c;->b(Ljava/lang/String;)Lcom/google/h/b/a/c;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/h/b/a/c;->e(J)Lcom/google/h/b/a/c;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/c;->d(F)Lcom/google/h/b/a/c;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x30 -> :sswitch_1
        0x38 -> :sswitch_2
        0x45 -> :sswitch_3
        0x4d -> :sswitch_4
        0x55 -> :sswitch_5
        0x58 -> :sswitch_6
        0x60 -> :sswitch_7
        0x6a -> :sswitch_8
        0x72 -> :sswitch_9
        0x78 -> :sswitch_a
        0x85 -> :sswitch_b
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Lcom/google/h/b/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/c;->q:Z

    iput-object p1, p0, Lcom/google/h/b/a/c;->r:Ljava/lang/String;

    return-object p0
.end method

.method private c(F)Lcom/google/h/b/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/c;->i:Z

    iput p1, p0, Lcom/google/h/b/a/c;->j:F

    return-object p0
.end method

.method private c(J)Lcom/google/h/b/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/c;->k:Z

    iput-wide p1, p0, Lcom/google/h/b/a/c;->l:J

    return-object p0
.end method

.method private d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/h/b/a/c;->b:J

    return-wide v0
.end method

.method private d(F)Lcom/google/h/b/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/c;->t:Z

    iput p1, p0, Lcom/google/h/b/a/c;->u:F

    return-object p0
.end method

.method private d(J)Lcom/google/h/b/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/c;->m:Z

    iput-wide p1, p0, Lcom/google/h/b/a/c;->n:J

    return-object p0
.end method

.method private e(J)Lcom/google/h/b/a/c;
    .locals 2

    iget-object v0, p0, Lcom/google/h/b/a/c;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/h/b/a/c;->s:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/h/b/a/c;->s:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/c;->a:Z

    return v0
.end method

.method private f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/h/b/a/c;->d:J

    return-wide v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/c;->c:Z

    return v0
.end method

.method private h()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/a/c;->f:F

    return v0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/c;->e:Z

    return v0
.end method

.method private j()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/a/c;->h:F

    return v0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/c;->g:Z

    return v0
.end method

.method private l()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/a/c;->j:F

    return v0
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/c;->i:Z

    return v0
.end method

.method private n()J
    .locals 2

    iget-wide v0, p0, Lcom/google/h/b/a/c;->l:J

    return-wide v0
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/c;->k:Z

    return v0
.end method

.method private p()J
    .locals 2

    iget-wide v0, p0, Lcom/google/h/b/a/c;->n:J

    return-wide v0
.end method

.method private q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/c;->m:Z

    return v0
.end method

.method private r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/b/a/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method private s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/c;->o:Z

    return v0
.end method

.method private t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/b/a/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method private u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/c;->q:Z

    return v0
.end method

.method private v()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/h/b/a/c;->s:Ljava/util/List;

    return-object v0
.end method

.method private w()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/a/c;->u:F

    return v0
.end method

.method private x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/c;->t:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/h/b/a/c;->v:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/h/b/a/c;->b()I

    :cond_0
    iget v0, p0, Lcom/google/h/b/a/c;->v:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/h/b/a/c;->b(Lcom/google/protobuf/micro/b;)Lcom/google/h/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/h/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/h/b/a/c;->d()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IJ)V

    :cond_0
    invoke-direct {p0}, Lcom/google/h/b/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/h/b/a/c;->f()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IJ)V

    :cond_1
    invoke-direct {p0}, Lcom/google/h/b/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-direct {p0}, Lcom/google/h/b/a/c;->h()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_2
    invoke-direct {p0}, Lcom/google/h/b/a/c;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/h/b/a/c;->j()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_3
    invoke-direct {p0}, Lcom/google/h/b/a/c;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/h/b/a/c;->l()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_4
    invoke-direct {p0}, Lcom/google/h/b/a/c;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/h/b/a/c;->n()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IJ)V

    :cond_5
    invoke-direct {p0}, Lcom/google/h/b/a/c;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/h/b/a/c;->p()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IJ)V

    :cond_6
    invoke-direct {p0}, Lcom/google/h/b/a/c;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/google/h/b/a/c;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/google/h/b/a/c;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/google/h/b/a/c;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/google/h/b/a/c;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IJ)V

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/google/h/b/a/c;->x()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x10

    invoke-direct {p0}, Lcom/google/h/b/a/c;->w()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_a
    return-void
.end method

.method public final b()I
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/h/b/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/h/b/a/c;->d()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(IJ)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/google/h/b/a/c;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/h/b/a/c;->f()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/google/h/b/a/c;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-direct {p0}, Lcom/google/h/b/a/c;->h()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-direct {p0}, Lcom/google/h/b/a/c;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/google/h/b/a/c;->j()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    invoke-direct {p0}, Lcom/google/h/b/a/c;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/google/h/b/a/c;->l()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    invoke-direct {p0}, Lcom/google/h/b/a/c;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/google/h/b/a/c;->n()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    invoke-direct {p0}, Lcom/google/h/b/a/c;->q()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xc

    invoke-direct {p0}, Lcom/google/h/b/a/c;->p()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    invoke-direct {p0}, Lcom/google/h/b/a/c;->s()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xd

    invoke-direct {p0}, Lcom/google/h/b/a/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    invoke-direct {p0}, Lcom/google/h/b/a/c;->u()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0xe

    invoke-direct {p0}, Lcom/google/h/b/a/c;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    :goto_1
    invoke-direct {p0}, Lcom/google/h/b/a/c;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(J)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_7
    add-int v0, v2, v1

    invoke-direct {p0}, Lcom/google/h/b/a/c;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/h/b/a/c;->x()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x10

    invoke-direct {p0}, Lcom/google/h/b/a/c;->w()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iput v0, p0, Lcom/google/h/b/a/c;->v:I

    return v0

    :cond_9
    move v2, v0

    goto :goto_1

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method
