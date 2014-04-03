.class public final Lcom/google/a/a/a/f;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private A:I

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/util/List;

.field private p:Ljava/util/List;

.field private q:Z

.field private r:Lcom/google/protobuf/micro/a;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:D

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/f;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/f;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/f;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/f;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/a/a/a/f;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/f;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/f;->n:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/f;->o:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/f;->p:Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/google/a/a/a/f;->r:Lcom/google/protobuf/micro/a;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/f;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/f;->v:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/a/a/a/f;->x:D

    iput-boolean v2, p0, Lcom/google/a/a/a/f;->z:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/f;->A:I

    return-void
.end method

.method private A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->w:Z

    return v0
.end method

.method private B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->z:Z

    return v0
.end method

.method private C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->y:Z

    return v0
.end method

.method private a(D)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->w:Z

    iput-wide p1, p0, Lcom/google/a/a/a/f;->x:D

    return-object p0
.end method

.method private a(Lcom/google/a/a/a/g;)Lcom/google/a/a/a/f;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/f;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/f;->p:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/f;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/f;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/f;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/f;->o:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/f;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a(Lcom/google/protobuf/micro/a;)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->q:Z

    iput-object p1, p0, Lcom/google/a/a/a/f;->r:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->a:Z

    iput-object p1, p0, Lcom/google/a/a/a/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Z)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->i:Z

    iput-boolean p1, p0, Lcom/google/a/a/a/f;->j:Z

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/a/a/a/f;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/a/a/a/f;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->a(Ljava/lang/String;)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->c(Ljava/lang/String;)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->d(Ljava/lang/String;)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->e(Ljava/lang/String;)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/google/a/a/a/j;

    invoke-direct {v0}, Lcom/google/a/a/a/j;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->a(Lcom/google/a/a/a/j;)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/a/a/a/g;

    invoke-direct {v0}, Lcom/google/a/a/a/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->a(Lcom/google/a/a/a/g;)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->i()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->a(Lcom/google/protobuf/micro/a;)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->f(Ljava/lang/String;)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->g(Ljava/lang/String;)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->b()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/a/a/a/f;->a(D)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->h(Ljava/lang/String;)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->b(Ljava/lang/String;)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->b(Z)Lcom/google/a/a/a/f;

    goto :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/f;->a(Z)Lcom/google/a/a/a/f;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x51 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->c:Z

    iput-object p1, p0, Lcom/google/a/a/a/f;->d:Ljava/lang/String;

    return-object p0
.end method

.method private b(Z)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->y:Z

    iput-boolean p1, p0, Lcom/google/a/a/a/f;->z:Z

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->e:Z

    iput-object p1, p0, Lcom/google/a/a/a/f;->f:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->g:Z

    iput-object p1, p0, Lcom/google/a/a/a/f;->h:Ljava/lang/String;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->k:Z

    iput-object p1, p0, Lcom/google/a/a/a/f;->l:Ljava/lang/String;

    return-object p0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->a:Z

    return v0
.end method

.method private f(Ljava/lang/String;)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->m:Z

    iput-object p1, p0, Lcom/google/a/a/a/f;->n:Ljava/lang/String;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g(Ljava/lang/String;)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->s:Z

    iput-object p1, p0, Lcom/google/a/a/a/f;->t:Ljava/lang/String;

    return-object p0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->c:Z

    return v0
.end method

.method private h(Ljava/lang/String;)Lcom/google/a/a/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/f;->u:Z

    iput-object p1, p0, Lcom/google/a/a/a/f;->v:Ljava/lang/String;

    return-object p0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->e:Z

    return v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->g:Z

    return v0
.end method

.method private l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->j:Z

    return v0
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->i:Z

    return v0
.end method

.method private n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->k:Z

    return v0
.end method

.method private p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method private q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->m:Z

    return v0
.end method

.method private r()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/f;->o:Ljava/util/List;

    return-object v0
.end method

.method private s()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/f;->p:Ljava/util/List;

    return-object v0
.end method

.method private t()Lcom/google/protobuf/micro/a;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/f;->r:Lcom/google/protobuf/micro/a;

    return-object v0
.end method

.method private u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->q:Z

    return v0
.end method

.method private v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/f;->t:Ljava/lang/String;

    return-object v0
.end method

.method private w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->s:Z

    return v0
.end method

.method private x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/f;->v:Ljava/lang/String;

    return-object v0
.end method

.method private y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/f;->u:Z

    return v0
.end method

.method private z()D
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/f;->x:D

    return-wide v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/a/a/a/f;->A:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/a/a/f;->b()I

    :cond_0
    iget v0, p0, Lcom/google/a/a/a/f;->A:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/a/a/a/f;->b(Lcom/google/protobuf/micro/b;)Lcom/google/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/a/a/a/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/a/a/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/a/a/a/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/google/a/a/a/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/a/a/a/f;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/a/a/a/f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/a/a/a/f;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/a/a/a/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/google/a/a/a/f;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/j;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/a/a/a/f;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/g;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/google/a/a/a/f;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/a/a/a/f;->t()Lcom/google/protobuf/micro/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/a;)V

    :cond_6
    invoke-direct {p0}, Lcom/google/a/a/a/f;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-direct {p0}, Lcom/google/a/a/a/f;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/google/a/a/a/f;->w()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/a/a/a/f;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/google/a/a/a/f;->A()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/a/a/a/f;->z()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ID)V

    :cond_9
    invoke-direct {p0}, Lcom/google/a/a/a/f;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/a/a/a/f;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Lcom/google/a/a/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/a/a/a/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_b
    invoke-direct {p0}, Lcom/google/a/a/a/f;->C()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/google/a/a/a/f;->B()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IZ)V

    :cond_c
    invoke-direct {p0}, Lcom/google/a/a/a/f;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/google/a/a/a/f;->l()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IZ)V

    :cond_d
    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/a/a/a/f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/a/a/a/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/a/a/a/f;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/a/a/a/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/a/a/a/f;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/a/a/a/f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/google/a/a/a/f;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/a/a/a/f;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-direct {p0}, Lcom/google/a/a/a/f;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/j;

    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/a/a/a/f;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a/g;

    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/google/a/a/a/f;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/a/a/a/f;->t()Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/a;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-direct {p0}, Lcom/google/a/a/a/f;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-direct {p0}, Lcom/google/a/a/a/f;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-direct {p0}, Lcom/google/a/a/a/f;->w()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/a/a/a/f;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-direct {p0}, Lcom/google/a/a/a/f;->A()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/a/a/a/f;->z()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ID)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    invoke-direct {p0}, Lcom/google/a/a/a/f;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/a/a/a/f;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    invoke-direct {p0}, Lcom/google/a/a/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/a/a/a/f;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b
    invoke-direct {p0}, Lcom/google/a/a/a/f;->C()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/google/a/a/a/f;->B()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_c
    invoke-direct {p0}, Lcom/google/a/a/a/f;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    invoke-direct {p0}, Lcom/google/a/a/a/f;->l()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_d
    iput v1, p0, Lcom/google/a/a/a/f;->A:I

    return v1
.end method
