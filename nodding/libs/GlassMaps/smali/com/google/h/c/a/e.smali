.class public final Lcom/google/h/c/a/e;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/google/h/c/a/j;

.field private i:Z

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/google/h/b/a/b;

.field private o:Z

.field private p:Lcom/google/h/b/a/b;

.field private q:Z

.field private r:Lcom/google/h/b/a/b;

.field private s:Ljava/util/List;

.field private t:Z

.field private u:Lcom/google/h/a/d;

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/c/a/e;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/c/a/e;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/c/a/e;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/h/c/a/e;->h:Lcom/google/h/c/a/j;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/h/c/a/e;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/e;->l:Z

    iput-object v1, p0, Lcom/google/h/c/a/e;->n:Lcom/google/h/b/a/b;

    iput-object v1, p0, Lcom/google/h/c/a/e;->p:Lcom/google/h/b/a/b;

    iput-object v1, p0, Lcom/google/h/c/a/e;->r:Lcom/google/h/b/a/b;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/c/a/e;->s:Ljava/util/List;

    iput-object v1, p0, Lcom/google/h/c/a/e;->u:Lcom/google/h/a/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/h/c/a/e;->v:I

    return-void
.end method

.method private a(F)Lcom/google/h/c/a/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/e;->i:Z

    iput p1, p0, Lcom/google/h/c/a/e;->j:F

    return-object p0
.end method

.method private a(Lcom/google/h/a/d;)Lcom/google/h/c/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/e;->t:Z

    iput-object p1, p0, Lcom/google/h/c/a/e;->u:Lcom/google/h/a/d;

    return-object p0
.end method

.method private a(Lcom/google/h/b/a/b;)Lcom/google/h/c/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/e;->m:Z

    iput-object p1, p0, Lcom/google/h/c/a/e;->n:Lcom/google/h/b/a/b;

    return-object p0
.end method

.method private a(Lcom/google/h/b/b/b;)Lcom/google/h/c/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/h/c/a/e;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/h/c/a/e;->s:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/h/c/a/e;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a(Lcom/google/h/c/a/j;)Lcom/google/h/c/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/e;->g:Z

    iput-object p1, p0, Lcom/google/h/c/a/e;->h:Lcom/google/h/c/a/j;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/h/c/a/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/e;->a:Z

    iput-object p1, p0, Lcom/google/h/c/a/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Z)Lcom/google/h/c/a/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/e;->k:Z

    iput-boolean p1, p0, Lcom/google/h/c/a/e;->l:Z

    return-object p0
.end method

.method private b(Lcom/google/h/b/a/b;)Lcom/google/h/c/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/e;->o:Z

    iput-object p1, p0, Lcom/google/h/c/a/e;->p:Lcom/google/h/b/a/b;

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/h/c/a/e;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/h/c/a/e;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/c/a/e;->a(Ljava/lang/String;)Lcom/google/h/c/a/e;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/c/a/e;->a(F)Lcom/google/h/c/a/e;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/h/b/a/b;

    invoke-direct {v0}, Lcom/google/h/b/a/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/c/a/e;->b(Lcom/google/h/b/a/b;)Lcom/google/h/c/a/e;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/h/b/a/b;

    invoke-direct {v0}, Lcom/google/h/b/a/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/c/a/e;->c(Lcom/google/h/b/a/b;)Lcom/google/h/c/a/e;

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/google/h/b/b/b;

    invoke-direct {v0}, Lcom/google/h/b/b/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/c/a/e;->a(Lcom/google/h/b/b/b;)Lcom/google/h/c/a/e;

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/h/a/d;

    invoke-direct {v0}, Lcom/google/h/a/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/c/a/e;->a(Lcom/google/h/a/d;)Lcom/google/h/c/a/e;

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/h/c/a/j;

    invoke-direct {v0}, Lcom/google/h/c/a/j;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/c/a/e;->a(Lcom/google/h/c/a/j;)Lcom/google/h/c/a/e;

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/google/h/b/a/b;

    invoke-direct {v0}, Lcom/google/h/b/a/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/c/a/e;->a(Lcom/google/h/b/a/b;)Lcom/google/h/c/a/e;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/c/a/e;->a(Z)Lcom/google/h/c/a/e;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/c/a/e;->b(Ljava/lang/String;)Lcom/google/h/c/a/e;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/c/a/e;->c(Ljava/lang/String;)Lcom/google/h/c/a/e;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x52 -> :sswitch_8
        0x58 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Lcom/google/h/c/a/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/e;->c:Z

    iput-object p1, p0, Lcom/google/h/c/a/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/google/h/b/a/b;)Lcom/google/h/c/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/e;->q:Z

    iput-object p1, p0, Lcom/google/h/c/a/e;->r:Lcom/google/h/b/a/b;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/google/h/c/a/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/e;->e:Z

    iput-object p1, p0, Lcom/google/h/c/a/e;->f:Ljava/lang/String;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/e;->a:Z

    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/e;->c:Z

    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/e;->e:Z

    return v0
.end method

.method private j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/e;->g:Z

    return v0
.end method

.method private k()Lcom/google/h/c/a/j;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/e;->h:Lcom/google/h/c/a/j;

    return-object v0
.end method

.method private l()F
    .locals 1

    iget v0, p0, Lcom/google/h/c/a/e;->j:F

    return v0
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/e;->i:Z

    return v0
.end method

.method private n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/e;->l:Z

    return v0
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/e;->k:Z

    return v0
.end method

.method private p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/e;->m:Z

    return v0
.end method

.method private q()Lcom/google/h/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/e;->n:Lcom/google/h/b/a/b;

    return-object v0
.end method

.method private r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/e;->o:Z

    return v0
.end method

.method private s()Lcom/google/h/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/e;->p:Lcom/google/h/b/a/b;

    return-object v0
.end method

.method private t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/e;->q:Z

    return v0
.end method

.method private u()Lcom/google/h/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/e;->r:Lcom/google/h/b/a/b;

    return-object v0
.end method

.method private v()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/e;->s:Ljava/util/List;

    return-object v0
.end method

.method private w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/e;->t:Z

    return v0
.end method

.method private x()Lcom/google/h/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/e;->u:Lcom/google/h/a/d;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/h/c/a/e;->v:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/h/c/a/e;->b()I

    :cond_0
    iget v0, p0, Lcom/google/h/c/a/e;->v:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/h/c/a/e;->b(Lcom/google/protobuf/micro/b;)Lcom/google/h/c/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/h/c/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/h/c/a/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/h/c/a/e;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/google/h/c/a/e;->l()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_1
    invoke-direct {p0}, Lcom/google/h/c/a/e;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/h/c/a/e;->s()Lcom/google/h/b/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/h/c/a/e;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/h/c/a/e;->u()Lcom/google/h/b/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_3
    invoke-direct {p0}, Lcom/google/h/c/a/e;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/b/b/b;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/h/c/a/e;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/h/c/a/e;->x()Lcom/google/h/a/d;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_5
    invoke-direct {p0}, Lcom/google/h/c/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/h/c/a/e;->k()Lcom/google/h/c/a/j;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_6
    invoke-direct {p0}, Lcom/google/h/c/a/e;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/h/c/a/e;->q()Lcom/google/h/b/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_7
    invoke-direct {p0}, Lcom/google/h/c/a/e;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/h/c/a/e;->n()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IZ)V

    :cond_8
    invoke-direct {p0}, Lcom/google/h/c/a/e;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/h/c/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lcom/google/h/c/a/e;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/google/h/c/a/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/h/c/a/e;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/h/c/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/h/c/a/e;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/h/c/a/e;->l()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/h/c/a/e;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/h/c/a/e;->s()Lcom/google/h/b/a/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/google/h/c/a/e;->t()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/h/c/a/e;->u()Lcom/google/h/b/a/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-direct {p0}, Lcom/google/h/c/a/e;->v()Ljava/util/List;

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

    check-cast v0, Lcom/google/h/b/b/b;

    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/google/h/c/a/e;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/h/c/a/e;->x()Lcom/google/h/a/d;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-direct {p0}, Lcom/google/h/c/a/e;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/h/c/a/e;->k()Lcom/google/h/c/a/j;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-direct {p0}, Lcom/google/h/c/a/e;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/h/c/a/e;->q()Lcom/google/h/b/a/b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-direct {p0}, Lcom/google/h/c/a/e;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/h/c/a/e;->n()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-direct {p0}, Lcom/google/h/c/a/e;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/h/c/a/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    invoke-direct {p0}, Lcom/google/h/c/a/e;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/google/h/c/a/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a
    iput v1, p0, Lcom/google/h/c/a/e;->v:I

    return v1
.end method
