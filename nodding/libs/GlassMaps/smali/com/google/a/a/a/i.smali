.class public final Lcom/google/a/a/a/i;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:J

.field private s:Z

.field private t:J

.field private u:Z

.field private v:Lcom/google/protobuf/micro/a;

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/i;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/i;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/i;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/i;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/i;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/i;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/i;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/i;->p:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/a/a/a/i;->r:J

    iput-wide v1, p0, Lcom/google/a/a/a/i;->t:J

    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/google/a/a/a/i;->v:Lcom/google/protobuf/micro/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/i;->w:I

    return-void
.end method

.method private a(J)Lcom/google/a/a/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/i;->q:Z

    iput-wide p1, p0, Lcom/google/a/a/a/i;->r:J

    return-object p0
.end method

.method private a(Lcom/google/protobuf/micro/a;)Lcom/google/a/a/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/i;->u:Z

    iput-object p1, p0, Lcom/google/a/a/a/i;->v:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/a/a/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/i;->a:Z

    iput-object p1, p0, Lcom/google/a/a/a/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(J)Lcom/google/a/a/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/i;->s:Z

    iput-wide p1, p0, Lcom/google/a/a/a/i;->t:J

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/a/a/a/i;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/a/a/a/i;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/i;->a(Ljava/lang/String;)Lcom/google/a/a/a/i;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/i;->b(Ljava/lang/String;)Lcom/google/a/a/a/i;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/i;->c(Ljava/lang/String;)Lcom/google/a/a/a/i;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/i;->e(Ljava/lang/String;)Lcom/google/a/a/a/i;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/i;->g(Ljava/lang/String;)Lcom/google/a/a/a/i;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/i;->h(Ljava/lang/String;)Lcom/google/a/a/a/i;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/a/a/a/i;->a(J)Lcom/google/a/a/a/i;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/a/a/a/i;->b(J)Lcom/google/a/a/a/i;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->i()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/i;->a(Lcom/google/protobuf/micro/a;)Lcom/google/a/a/a/i;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/i;->f(Ljava/lang/String;)Lcom/google/a/a/a/i;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/i;->d(Ljava/lang/String;)Lcom/google/a/a/a/i;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Lcom/google/a/a/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/i;->c:Z

    iput-object p1, p0, Lcom/google/a/a/a/i;->d:Ljava/lang/String;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/google/a/a/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/i;->e:Z

    iput-object p1, p0, Lcom/google/a/a/a/i;->f:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/google/a/a/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/i;->g:Z

    iput-object p1, p0, Lcom/google/a/a/a/i;->h:Ljava/lang/String;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Lcom/google/a/a/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/i;->i:Z

    iput-object p1, p0, Lcom/google/a/a/a/i;->j:Ljava/lang/String;

    return-object p0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/i;->a:Z

    return v0
.end method

.method private f(Ljava/lang/String;)Lcom/google/a/a/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/i;->k:Z

    iput-object p1, p0, Lcom/google/a/a/a/i;->l:Ljava/lang/String;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g(Ljava/lang/String;)Lcom/google/a/a/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/i;->m:Z

    iput-object p1, p0, Lcom/google/a/a/a/i;->n:Ljava/lang/String;

    return-object p0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/i;->c:Z

    return v0
.end method

.method private h(Ljava/lang/String;)Lcom/google/a/a/a/i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/i;->o:Z

    iput-object p1, p0, Lcom/google/a/a/a/i;->p:Ljava/lang/String;

    return-object p0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/i;->e:Z

    return v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/i;->g:Z

    return v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/i;->i:Z

    return v0
.end method

.method private n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->l:Ljava/lang/String;

    return-object v0
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/i;->k:Z

    return v0
.end method

.method private p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->n:Ljava/lang/String;

    return-object v0
.end method

.method private q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/i;->m:Z

    return v0
.end method

.method private r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->p:Ljava/lang/String;

    return-object v0
.end method

.method private s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/i;->o:Z

    return v0
.end method

.method private t()J
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/i;->r:J

    return-wide v0
.end method

.method private u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/i;->q:Z

    return v0
.end method

.method private v()J
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/i;->t:J

    return-wide v0
.end method

.method private w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/i;->s:Z

    return v0
.end method

.method private x()Lcom/google/protobuf/micro/a;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/i;->v:Lcom/google/protobuf/micro/a;

    return-object v0
.end method

.method private y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/i;->u:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/a/a/a/i;->w:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/a/a/i;->b()I

    :cond_0
    iget v0, p0, Lcom/google/a/a/a/i;->w:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/a/a/a/i;->b(Lcom/google/protobuf/micro/b;)Lcom/google/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/a/a/a/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/a/a/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/a/a/a/i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/google/a/a/a/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/a/a/a/i;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/a/a/a/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/a/a/a/i;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/a/a/a/i;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/google/a/a/a/i;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/a/a/a/i;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/google/a/a/a/i;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/a/a/a/i;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/google/a/a/a/i;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/a/a/a/i;->t()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IJ)V

    :cond_6
    invoke-direct {p0}, Lcom/google/a/a/a/i;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-direct {p0}, Lcom/google/a/a/a/i;->v()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IJ)V

    :cond_7
    invoke-direct {p0}, Lcom/google/a/a/a/i;->y()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/a/a/a/i;->x()Lcom/google/protobuf/micro/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILcom/google/protobuf/micro/a;)V

    :cond_8
    invoke-direct {p0}, Lcom/google/a/a/a/i;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/a/a/a/i;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lcom/google/a/a/a/i;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/a/a/a/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/a/a/a/i;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/a/a/a/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/a/a/a/i;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/a/a/a/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/a/a/a/i;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/a/a/a/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/google/a/a/a/i;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/a/a/a/i;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-direct {p0}, Lcom/google/a/a/a/i;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/a/a/a/i;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-direct {p0}, Lcom/google/a/a/a/i;->s()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/a/a/a/i;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-direct {p0}, Lcom/google/a/a/a/i;->u()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/a/a/a/i;->t()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-direct {p0}, Lcom/google/a/a/a/i;->w()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/google/a/a/a/i;->v()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-direct {p0}, Lcom/google/a/a/a/i;->y()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/a/a/a/i;->x()Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/a;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-direct {p0}, Lcom/google/a/a/a/i;->o()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/google/a/a/a/i;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    invoke-direct {p0}, Lcom/google/a/a/a/i;->k()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/google/a/a/a/i;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iput v0, p0, Lcom/google/a/a/a/i;->w:I

    return v0
.end method
