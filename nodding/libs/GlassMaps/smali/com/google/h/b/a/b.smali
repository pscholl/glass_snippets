.class public final Lcom/google/h/b/a/b;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:F

.field private c:Z

.field private d:F

.field private e:Z

.field private f:F

.field private g:Z

.field private h:F

.field private i:Ljava/util/List;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    iput v0, p0, Lcom/google/h/b/a/b;->b:F

    iput v0, p0, Lcom/google/h/b/a/b;->d:F

    iput v0, p0, Lcom/google/h/b/a/b;->f:F

    iput v0, p0, Lcom/google/h/b/a/b;->h:F

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/b/a/b;->i:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/b/a/b;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/b/a/b;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/b/a/b;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/b/a/b;->q:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/h/b/a/b;->s:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/h/b/a/b;->t:I

    return-void
.end method

.method private a(F)Lcom/google/h/b/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/b;->a:Z

    iput p1, p0, Lcom/google/h/b/a/b;->b:F

    return-object p0
.end method

.method private a(I)Lcom/google/h/b/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/b;->r:Z

    iput p1, p0, Lcom/google/h/b/a/b;->s:I

    return-object p0
.end method

.method private a(Lcom/google/h/b/a/c;)Lcom/google/h/b/a/b;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/h/b/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/h/b/a/b;->i:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/h/b/a/b;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/h/b/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/b;->j:Z

    iput-object p1, p0, Lcom/google/h/b/a/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method private b(F)Lcom/google/h/b/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/b;->c:Z

    iput p1, p0, Lcom/google/h/b/a/b;->d:F

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/h/b/a/b;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/h/b/a/b;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/b;->a(F)Lcom/google/h/b/a/b;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/b;->b(F)Lcom/google/h/b/a/b;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/b;->c(F)Lcom/google/h/b/a/b;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/b;->d(F)Lcom/google/h/b/a/b;

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/google/h/b/a/c;

    invoke-direct {v0}, Lcom/google/h/b/a/c;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;I)V

    invoke-direct {p0, v0}, Lcom/google/h/b/a/b;->a(Lcom/google/h/b/a/c;)Lcom/google/h/b/a/b;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/b;->a(Ljava/lang/String;)Lcom/google/h/b/a/b;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/b;->b(Ljava/lang/String;)Lcom/google/h/b/a/b;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/b;->c(Ljava/lang/String;)Lcom/google/h/b/a/b;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/b;->d(Ljava/lang/String;)Lcom/google/h/b/a/b;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/b/a/b;->a(I)Lcom/google/h/b/a/b;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2b -> :sswitch_5
        0x8a -> :sswitch_6
        0x92 -> :sswitch_7
        0x9a -> :sswitch_8
        0xa2 -> :sswitch_9
        0xa8 -> :sswitch_a
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Lcom/google/h/b/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/b;->l:Z

    iput-object p1, p0, Lcom/google/h/b/a/b;->m:Ljava/lang/String;

    return-object p0
.end method

.method private c(F)Lcom/google/h/b/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/b;->e:Z

    iput p1, p0, Lcom/google/h/b/a/b;->f:F

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/google/h/b/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/b;->n:Z

    iput-object p1, p0, Lcom/google/h/b/a/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method private d()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/a/b;->b:F

    return v0
.end method

.method private d(F)Lcom/google/h/b/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/b;->g:Z

    iput p1, p0, Lcom/google/h/b/a/b;->h:F

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/google/h/b/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/b/a/b;->p:Z

    iput-object p1, p0, Lcom/google/h/b/a/b;->q:Ljava/lang/String;

    return-object p0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/b;->a:Z

    return v0
.end method

.method private f()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/a/b;->d:F

    return v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/b;->c:Z

    return v0
.end method

.method private h()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/a/b;->f:F

    return v0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/b;->e:Z

    return v0
.end method

.method private j()F
    .locals 1

    iget v0, p0, Lcom/google/h/b/a/b;->h:F

    return v0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/b;->g:Z

    return v0
.end method

.method private l()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/h/b/a/b;->i:Ljava/util/List;

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/b/a/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method private n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/b;->j:Z

    return v0
.end method

.method private o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/b/a/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method private p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/b;->l:Z

    return v0
.end method

.method private q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/b/a/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method private r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/b;->n:Z

    return v0
.end method

.method private s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/b/a/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method private t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/b;->p:Z

    return v0
.end method

.method private u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/b/a/b;->r:Z

    return v0
.end method

.method private v()I
    .locals 1

    iget v0, p0, Lcom/google/h/b/a/b;->s:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/h/b/a/b;->t:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/h/b/a/b;->b()I

    :cond_0
    iget v0, p0, Lcom/google/h/b/a/b;->t:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/h/b/a/b;->b(Lcom/google/protobuf/micro/b;)Lcom/google/h/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/h/b/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/h/b/a/b;->d()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_0
    invoke-direct {p0}, Lcom/google/h/b/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/google/h/b/a/b;->f()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_1
    invoke-direct {p0}, Lcom/google/h/b/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/h/b/a/b;->h()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_2
    invoke-direct {p0}, Lcom/google/h/b/a/b;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/h/b/a/b;->j()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_3
    invoke-direct {p0}, Lcom/google/h/b/a/b;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/b/a/c;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/c;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/h/b/a/b;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x11

    invoke-direct {p0}, Lcom/google/h/b/a/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/google/h/b/a/b;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x12

    invoke-direct {p0}, Lcom/google/h/b/a/b;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_6
    invoke-direct {p0}, Lcom/google/h/b/a/b;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x13

    invoke-direct {p0}, Lcom/google/h/b/a/b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/google/h/b/a/b;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x14

    invoke-direct {p0}, Lcom/google/h/b/a/b;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/google/h/b/a/b;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x15

    invoke-direct {p0}, Lcom/google/h/b/a/b;->v()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_9
    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/h/b/a/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/h/b/a/b;->d()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/h/b/a/b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/h/b/a/b;->f()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/h/b/a/b;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/h/b/a/b;->h()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/google/h/b/a/b;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/h/b/a/b;->j()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-direct {p0}, Lcom/google/h/b/a/b;->l()Ljava/util/List;

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

    check-cast v0, Lcom/google/h/b/a/c;

    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(ILcom/google/protobuf/micro/c;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/h/b/a/b;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x11

    invoke-direct {p0}, Lcom/google/h/b/a/b;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-direct {p0}, Lcom/google/h/b/a/b;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x12

    invoke-direct {p0}, Lcom/google/h/b/a/b;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-direct {p0}, Lcom/google/h/b/a/b;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x13

    invoke-direct {p0}, Lcom/google/h/b/a/b;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-direct {p0}, Lcom/google/h/b/a/b;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x14

    invoke-direct {p0}, Lcom/google/h/b/a/b;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-direct {p0}, Lcom/google/h/b/a/b;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x15

    invoke-direct {p0}, Lcom/google/h/b/a/b;->v()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    iput v1, p0, Lcom/google/h/b/a/b;->t:I

    return v1
.end method
