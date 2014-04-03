.class public final Lcom/google/b/a/a/d;
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

.field private n:Lcom/google/b/a/a/b;

.field private o:Z

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/d;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/d;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/d;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/d;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/d;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/a/d;->n:Lcom/google/b/a/a/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/a/d;->p:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/d;->q:I

    return-void
.end method

.method private a(I)Lcom/google/b/a/a/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/d;->o:Z

    iput p1, p0, Lcom/google/b/a/a/d;->p:I

    return-object p0
.end method

.method private a(Lcom/google/b/a/a/b;)Lcom/google/b/a/a/d;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/d;->m:Z

    iput-object p1, p0, Lcom/google/b/a/a/d;->n:Lcom/google/b/a/a/b;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/b/a/a/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/d;->a:Z

    iput-object p1, p0, Lcom/google/b/a/a/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/b/a/a/d;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/b/a/a/d;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/b/a/a/d;->a(Ljava/lang/String;)Lcom/google/b/a/a/d;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/b/a/a/d;->b(Ljava/lang/String;)Lcom/google/b/a/a/d;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/b/a/a/d;->c(Ljava/lang/String;)Lcom/google/b/a/a/d;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/b/a/a/d;->d(Ljava/lang/String;)Lcom/google/b/a/a/d;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/b/a/a/d;->e(Ljava/lang/String;)Lcom/google/b/a/a/d;

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/b/a/a/b;

    invoke-direct {v0}, Lcom/google/b/a/a/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/b/a/a/d;->a(Lcom/google/b/a/a/b;)Lcom/google/b/a/a/d;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/b/a/a/d;->a(I)Lcom/google/b/a/a/d;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/b/a/a/d;->f(Ljava/lang/String;)Lcom/google/b/a/a/d;

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
        0x5a -> :sswitch_8
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Lcom/google/b/a/a/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/d;->c:Z

    iput-object p1, p0, Lcom/google/b/a/a/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/google/b/a/a/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/d;->e:Z

    iput-object p1, p0, Lcom/google/b/a/a/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/google/b/a/a/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/d;->g:Z

    iput-object p1, p0, Lcom/google/b/a/a/d;->h:Ljava/lang/String;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/String;)Lcom/google/b/a/a/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/d;->i:Z

    iput-object p1, p0, Lcom/google/b/a/a/d;->j:Ljava/lang/String;

    return-object p0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/b/a/a/d;->a:Z

    return v0
.end method

.method private f(Ljava/lang/String;)Lcom/google/b/a/a/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/d;->k:Z

    iput-object p1, p0, Lcom/google/b/a/a/d;->l:Ljava/lang/String;

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/b/a/a/d;->c:Z

    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/a/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/b/a/a/d;->e:Z

    return v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/a/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/b/a/a/d;->g:Z

    return v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/a/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/b/a/a/d;->i:Z

    return v0
.end method

.method private n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/a/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/b/a/a/d;->k:Z

    return v0
.end method

.method private p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/b/a/a/d;->m:Z

    return v0
.end method

.method private q()Lcom/google/b/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/google/b/a/a/d;->n:Lcom/google/b/a/a/b;

    return-object v0
.end method

.method private r()I
    .locals 1

    iget v0, p0, Lcom/google/b/a/a/d;->p:I

    return v0
.end method

.method private s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/b/a/a/d;->o:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/b/a/a/d;->q:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/b/a/a/d;->b()I

    :cond_0
    iget v0, p0, Lcom/google/b/a/a/d;->q:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/b/a/a/d;->b(Lcom/google/protobuf/micro/b;)Lcom/google/b/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/b/a/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/b/a/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/b/a/a/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/google/b/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/b/a/a/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/b/a/a/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/b/a/a/d;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/b/a/a/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/google/b/a/a/d;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/b/a/a/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/google/b/a/a/d;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/b/a/a/d;->q()Lcom/google/b/a/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_5
    invoke-direct {p0}, Lcom/google/b/a/a/d;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/b/a/a/d;->r()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_6
    invoke-direct {p0}, Lcom/google/b/a/a/d;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/b/a/a/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final b()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/b/a/a/d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/b/a/a/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/b/a/a/d;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/b/a/a/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/b/a/a/d;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/b/a/a/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/google/b/a/a/d;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/b/a/a/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-direct {p0}, Lcom/google/b/a/a/d;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/b/a/a/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-direct {p0}, Lcom/google/b/a/a/d;->p()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/b/a/a/d;->q()Lcom/google/b/a/a/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-direct {p0}, Lcom/google/b/a/a/d;->s()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/b/a/a/d;->r()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-direct {p0}, Lcom/google/b/a/a/d;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/google/b/a/a/d;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iput v0, p0, Lcom/google/b/a/a/d;->q:I

    return v0
.end method
