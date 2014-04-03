.class public final Lcom/google/i/d/a/b;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/i/d/a/b;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i/d/a/b;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i/d/a/b;->d:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/i/d/a/b;->f:Ljava/lang/String;

    iput v1, p0, Lcom/google/i/d/a/b;->h:I

    iput v1, p0, Lcom/google/i/d/a/b;->j:I

    iput v1, p0, Lcom/google/i/d/a/b;->l:I

    iput-boolean v1, p0, Lcom/google/i/d/a/b;->n:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/i/d/a/b;->o:I

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/google/i/d/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i/d/a/b;->a:Z

    iput-object p1, p0, Lcom/google/i/d/a/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Z)Lcom/google/i/d/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i/d/a/b;->m:Z

    iput-boolean p1, p0, Lcom/google/i/d/a/b;->n:Z

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/i/d/a/b;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/i/d/a/b;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i/d/a/b;->a(Ljava/lang/String;)Lcom/google/i/d/a/b;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i/d/a/b;->b(Ljava/lang/String;)Lcom/google/i/d/a/b;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i/d/a/b;->c(Ljava/lang/String;)Lcom/google/i/d/a/b;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i/d/a/b;->d(Ljava/lang/String;)Lcom/google/i/d/a/b;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i/d/a/b;->c(I)Lcom/google/i/d/a/b;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i/d/a/b;->d(I)Lcom/google/i/d/a/b;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i/d/a/b;->e(I)Lcom/google/i/d/a/b;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i/d/a/b;->a(Z)Lcom/google/i/d/a/b;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Lcom/google/i/d/a/b;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/i/d/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i/d/a/b;->c:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/i/d/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private c(I)Lcom/google/i/d/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i/d/a/b;->g:Z

    iput p1, p0, Lcom/google/i/d/a/b;->h:I

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/google/i/d/a/b;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/i/d/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i/d/a/b;->d:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/i/d/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private d(I)Lcom/google/i/d/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i/d/a/b;->i:Z

    iput p1, p0, Lcom/google/i/d/a/b;->j:I

    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/google/i/d/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i/d/a/b;->e:Z

    iput-object p1, p0, Lcom/google/i/d/a/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method private e(I)Lcom/google/i/d/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i/d/a/b;->k:Z

    iput p1, p0, Lcom/google/i/d/a/b;->l:I

    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i/d/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i/d/a/b;->a:Z

    return v0
.end method

.method private h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/i/d/a/b;->c:Ljava/util/List;

    return-object v0
.end method

.method private i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/i/d/a/b;->d:Ljava/util/List;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i/d/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i/d/a/b;->e:Z

    return v0
.end method

.method private l()I
    .locals 1

    iget v0, p0, Lcom/google/i/d/a/b;->h:I

    return v0
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i/d/a/b;->g:Z

    return v0
.end method

.method private n()I
    .locals 1

    iget v0, p0, Lcom/google/i/d/a/b;->j:I

    return v0
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i/d/a/b;->i:Z

    return v0
.end method

.method private p()I
    .locals 1

    iget v0, p0, Lcom/google/i/d/a/b;->l:I

    return v0
.end method

.method private q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i/d/a/b;->k:Z

    return v0
.end method

.method private r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i/d/a/b;->m:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/i/d/a/b;->o:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/i/d/a/b;->b()I

    :cond_0
    iget v0, p0, Lcom/google/i/d/a/b;->o:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/i/d/a/b;->b(Lcom/google/protobuf/micro/b;)Lcom/google/i/d/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i/d/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/i/d/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/i/d/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/i/d/a/b;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/i/d/a/b;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/google/i/d/a/b;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/i/d/a/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/google/i/d/a/b;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/i/d/a/b;->l()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_4
    invoke-direct {p0}, Lcom/google/i/d/a/b;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/i/d/a/b;->n()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_5
    invoke-direct {p0}, Lcom/google/i/d/a/b;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/i/d/a/b;->p()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_6
    invoke-direct {p0}, Lcom/google/i/d/a/b;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/i/d/a/b;->e()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IZ)V

    :cond_7
    return-void
.end method

.method public final b()I
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/i/d/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/i/d/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lcom/google/i/d/a/b;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_1

    :cond_0
    add-int v0, v1, v3

    invoke-direct {p0}, Lcom/google/i/d/a/b;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/google/i/d/a/b;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    :cond_1
    add-int v0, v1, v2

    invoke-direct {p0}, Lcom/google/i/d/a/b;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/i/d/a/b;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/i/d/a/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/google/i/d/a/b;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/i/d/a/b;->l()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-direct {p0}, Lcom/google/i/d/a/b;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/i/d/a/b;->n()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-direct {p0}, Lcom/google/i/d/a/b;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/google/i/d/a/b;->p()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-direct {p0}, Lcom/google/i/d/a/b;->r()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/i/d/a/b;->e()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iput v0, p0, Lcom/google/i/d/a/b;->o:I

    return v0

    :cond_7
    move v1, v2

    goto/16 :goto_0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i/d/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/google/i/d/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i/d/a/b;->n:Z

    return v0
.end method
