.class public final Lcom/google/h/b/b/b;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private A:I

.field private a:Z

.field private b:F

.field private c:Z

.field private d:F

.field private e:Z

.field private f:F

.field private g:Z

.field private h:F

.field private i:Z

.field private j:F

.field private k:Z

.field private l:F

.field private m:Z

.field private n:F

.field private o:Z

.field private p:F

.field private q:Z

.field private r:F

.field private s:Z

.field private t:F

.field private u:Z

.field private v:F

.field private w:Z

.field private x:F

.field private y:Z

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    iput v0, p0, Lcom/google/h/b/b/b;->b:F

    iput v0, p0, Lcom/google/h/b/b/b;->d:F

    iput v0, p0, Lcom/google/h/b/b/b;->f:F

    iput v0, p0, Lcom/google/h/b/b/b;->h:F

    iput v0, p0, Lcom/google/h/b/b/b;->j:F

    iput v0, p0, Lcom/google/h/b/b/b;->l:F

    iput v0, p0, Lcom/google/h/b/b/b;->n:F

    iput v0, p0, Lcom/google/h/b/b/b;->p:F

    iput v0, p0, Lcom/google/h/b/b/b;->r:F

    iput v0, p0, Lcom/google/h/b/b/b;->t:F

    iput v0, p0, Lcom/google/h/b/b/b;->v:F

    iput v0, p0, Lcom/google/h/b/b/b;->x:F

    iput v0, p0, Lcom/google/h/b/b/b;->z:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/h/b/b/b;->A:I

    return-void
.end method

.method private A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->w:Z

    return v0
.end method

.method private B()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->z:F

    return v0
.end method

.method private C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->y:Z

    return v0
.end method

.method private a(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->a:Z

    iput p1, p0, Lcom/google/h/b/b/b;->b:F

    return-object p0
.end method

.method private b(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->c:Z

    iput p1, p0, Lcom/google/h/b/b/b;->d:F

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/h/b/b/b;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/h/b/b/b;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->a(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->b(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->c(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->d(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->e(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->f(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->g(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->h(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->i(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->j(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->k(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->l(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/b/b;->m(F)Lcom/google/h/b/b/b;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
        0x55 -> :sswitch_a
        0x5d -> :sswitch_b
        0x65 -> :sswitch_c
        0x6d -> :sswitch_d
    .end sparse-switch
.end method

.method private c(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->e:Z

    iput p1, p0, Lcom/google/h/b/b/b;->f:F

    return-object p0
.end method

.method private d()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->b:F

    return v0
.end method

.method private d(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->g:Z

    iput p1, p0, Lcom/google/h/b/b/b;->h:F

    return-object p0
.end method

.method private e(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->i:Z

    iput p1, p0, Lcom/google/h/b/b/b;->j:F

    return-object p0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->a:Z

    return v0
.end method

.method private f()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->d:F

    return v0
.end method

.method private f(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->k:Z

    iput p1, p0, Lcom/google/h/b/b/b;->l:F

    return-object p0
.end method

.method private g(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->m:Z

    iput p1, p0, Lcom/google/h/b/b/b;->n:F

    return-object p0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->c:Z

    return v0
.end method

.method private h()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->f:F

    return v0
.end method

.method private h(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->o:Z

    iput p1, p0, Lcom/google/h/b/b/b;->p:F

    return-object p0
.end method

.method private i(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->q:Z

    iput p1, p0, Lcom/google/h/b/b/b;->r:F

    return-object p0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->e:Z

    return v0
.end method

.method private j()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->h:F

    return v0
.end method

.method private j(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->s:Z

    iput p1, p0, Lcom/google/h/b/b/b;->t:F

    return-object p0
.end method

.method private k(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->u:Z

    iput p1, p0, Lcom/google/h/b/b/b;->v:F

    return-object p0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->g:Z

    return v0
.end method

.method private l()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->j:F

    return v0
.end method

.method private l(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->w:Z

    iput p1, p0, Lcom/google/h/b/b/b;->x:F

    return-object p0
.end method

.method private m(F)Lcom/google/h/b/b/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/b/b;->y:Z

    iput p1, p0, Lcom/google/h/b/b/b;->z:F

    return-object p0
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->i:Z

    return v0
.end method

.method private n()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->l:F

    return v0
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->k:Z

    return v0
.end method

.method private p()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->n:F

    return v0
.end method

.method private q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->m:Z

    return v0
.end method

.method private r()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->p:F

    return v0
.end method

.method private s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->o:Z

    return v0
.end method

.method private t()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->r:F

    return v0
.end method

.method private u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->q:Z

    return v0
.end method

.method private v()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->t:F

    return v0
.end method

.method private w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->s:Z

    return v0
.end method

.method private x()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->v:F

    return v0
.end method

.method private y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/b/b;->u:Z

    return v0
.end method

.method private z()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->x:F

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/h/b/b/b;->A:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/h/b/b/b;->b()I

    :cond_0
    iget v0, p0, Lcom/google/h/b/b/b;->A:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/h/b/b/b;->b(Lcom/google/protobuf/micro/b;)Lcom/google/h/b/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/h/b/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/h/b/b/b;->d()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_0
    invoke-direct {p0}, Lcom/google/h/b/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/google/h/b/b/b;->f()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_1
    invoke-direct {p0}, Lcom/google/h/b/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/h/b/b/b;->h()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_2
    invoke-direct {p0}, Lcom/google/h/b/b/b;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/h/b/b/b;->j()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_3
    invoke-direct {p0}, Lcom/google/h/b/b/b;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/h/b/b/b;->l()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_4
    invoke-direct {p0}, Lcom/google/h/b/b/b;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/h/b/b/b;->n()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_5
    invoke-direct {p0}, Lcom/google/h/b/b/b;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/h/b/b/b;->p()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_6
    invoke-direct {p0}, Lcom/google/h/b/b/b;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-direct {p0}, Lcom/google/h/b/b/b;->r()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_7
    invoke-direct {p0}, Lcom/google/h/b/b/b;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/h/b/b/b;->t()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_8
    invoke-direct {p0}, Lcom/google/h/b/b/b;->w()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/h/b/b/b;->v()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_9
    invoke-direct {p0}, Lcom/google/h/b/b/b;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/h/b/b/b;->x()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_a
    invoke-direct {p0}, Lcom/google/h/b/b/b;->A()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/h/b/b/b;->z()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_b
    invoke-direct {p0}, Lcom/google/h/b/b/b;->C()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/google/h/b/b/b;->B()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_c
    return-void
.end method

.method public final b()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/h/b/b/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/h/b/b/b;->d()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/h/b/b/b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/h/b/b/b;->f()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/h/b/b/b;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/h/b/b/b;->h()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/google/h/b/b/b;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/h/b/b/b;->j()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-direct {p0}, Lcom/google/h/b/b/b;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/h/b/b/b;->l()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-direct {p0}, Lcom/google/h/b/b/b;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/h/b/b/b;->n()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-direct {p0}, Lcom/google/h/b/b/b;->q()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/h/b/b/b;->p()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-direct {p0}, Lcom/google/h/b/b/b;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/google/h/b/b/b;->r()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-direct {p0}, Lcom/google/h/b/b/b;->u()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/h/b/b/b;->t()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-direct {p0}, Lcom/google/h/b/b/b;->w()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/google/h/b/b/b;->v()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    invoke-direct {p0}, Lcom/google/h/b/b/b;->y()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/google/h/b/b/b;->x()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    invoke-direct {p0}, Lcom/google/h/b/b/b;->A()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/google/h/b/b/b;->z()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    invoke-direct {p0}, Lcom/google/h/b/b/b;->C()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/google/h/b/b/b;->B()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iput v0, p0, Lcom/google/h/b/b/b;->A:I

    return v0
.end method
