.class public final Lcom/google/h/d/d;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;

.field private h:Z

.field private i:Lcom/google/h/e/a/d;

.field private j:Z

.field private k:Lcom/google/h/e/a/b;

.field private l:Z

.field private m:Lcom/google/h/e/a/h;

.field private n:Z

.field private o:Lcom/google/h/e/a/f;

.field private p:Z

.field private q:Lcom/google/b/a/a/c;

.field private r:Z

.field private s:Lcom/google/h/d/b;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    iput v0, p0, Lcom/google/h/d/d;->b:I

    iput v0, p0, Lcom/google/h/d/d;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/d/d;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/d/d;->g:Ljava/util/List;

    iput-object v1, p0, Lcom/google/h/d/d;->i:Lcom/google/h/e/a/d;

    iput-object v1, p0, Lcom/google/h/d/d;->k:Lcom/google/h/e/a/b;

    iput-object v1, p0, Lcom/google/h/d/d;->m:Lcom/google/h/e/a/h;

    iput-object v1, p0, Lcom/google/h/d/d;->o:Lcom/google/h/e/a/f;

    iput-object v1, p0, Lcom/google/h/d/d;->q:Lcom/google/b/a/a/c;

    iput-object v1, p0, Lcom/google/h/d/d;->s:Lcom/google/h/d/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/h/d/d;->t:I

    return-void
.end method

.method private a(I)Lcom/google/h/d/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/d/d;->a:Z

    iput p1, p0, Lcom/google/h/d/d;->b:I

    return-object p0
.end method

.method private a(Lcom/google/b/a/a/c;)Lcom/google/h/d/d;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/d/d;->p:Z

    iput-object p1, p0, Lcom/google/h/d/d;->q:Lcom/google/b/a/a/c;

    return-object p0
.end method

.method private a(Lcom/google/h/d/b;)Lcom/google/h/d/d;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/d/d;->r:Z

    iput-object p1, p0, Lcom/google/h/d/d;->s:Lcom/google/h/d/b;

    return-object p0
.end method

.method private a(Lcom/google/h/e/a/b;)Lcom/google/h/d/d;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/d/d;->j:Z

    iput-object p1, p0, Lcom/google/h/d/d;->k:Lcom/google/h/e/a/b;

    return-object p0
.end method

.method private a(Lcom/google/h/e/a/d;)Lcom/google/h/d/d;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/d/d;->h:Z

    iput-object p1, p0, Lcom/google/h/d/d;->i:Lcom/google/h/e/a/d;

    return-object p0
.end method

.method private a(Lcom/google/h/e/a/f;)Lcom/google/h/d/d;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/d/d;->n:Z

    iput-object p1, p0, Lcom/google/h/d/d;->o:Lcom/google/h/e/a/f;

    return-object p0
.end method

.method private a(Lcom/google/h/e/a/h;)Lcom/google/h/d/d;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/d/d;->l:Z

    iput-object p1, p0, Lcom/google/h/d/d;->m:Lcom/google/h/e/a/h;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/h/d/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/d/d;->e:Z

    iput-object p1, p0, Lcom/google/h/d/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method private b(I)Lcom/google/h/d/d;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/d/d;->c:Z

    iput p1, p0, Lcom/google/h/d/d;->d:I

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/h/d/d;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/h/d/d;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/d/d;->a(I)Lcom/google/h/d/d;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/d/d;->b(I)Lcom/google/h/d/d;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/d/d;->a(Ljava/lang/String;)Lcom/google/h/d/d;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/d/d;->b(Ljava/lang/String;)Lcom/google/h/d/d;

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/google/h/e/a/d;

    invoke-direct {v0}, Lcom/google/h/e/a/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/d/d;->a(Lcom/google/h/e/a/d;)Lcom/google/h/d/d;

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/h/e/a/b;

    invoke-direct {v0}, Lcom/google/h/e/a/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/d/d;->a(Lcom/google/h/e/a/b;)Lcom/google/h/d/d;

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/h/e/a/h;

    invoke-direct {v0}, Lcom/google/h/e/a/h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/d/d;->a(Lcom/google/h/e/a/h;)Lcom/google/h/d/d;

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/google/h/e/a/f;

    invoke-direct {v0}, Lcom/google/h/e/a/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/d/d;->a(Lcom/google/h/e/a/f;)Lcom/google/h/d/d;

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/google/b/a/a/c;

    invoke-direct {v0}, Lcom/google/b/a/a/c;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/d/d;->a(Lcom/google/b/a/a/c;)Lcom/google/h/d/d;

    goto :goto_0

    :sswitch_a
    new-instance v0, Lcom/google/h/d/b;

    invoke-direct {v0}, Lcom/google/h/d/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/d/d;->a(Lcom/google/h/d/b;)Lcom/google/h/d/d;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x9907ca -> :sswitch_5
        0xcaf0c22 -> :sswitch_6
        0xda33022 -> :sswitch_7
        0x10db6c4a -> :sswitch_8
        0x10e3ba7a -> :sswitch_9
        0x12ceb82a -> :sswitch_a
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Lcom/google/h/d/d;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/h/d/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/h/d/d;->g:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/h/d/d;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/d/d;->a:Z

    return v0
.end method

.method private f()I
    .locals 1

    iget v0, p0, Lcom/google/h/d/d;->d:I

    return v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/d/d;->c:Z

    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/d/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/d/d;->e:Z

    return v0
.end method

.method private j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/h/d/d;->g:Ljava/util/List;

    return-object v0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/d/d;->h:Z

    return v0
.end method

.method private l()Lcom/google/h/e/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/h/d/d;->i:Lcom/google/h/e/a/d;

    return-object v0
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/d/d;->j:Z

    return v0
.end method

.method private n()Lcom/google/h/e/a/b;
    .locals 1

    iget-object v0, p0, Lcom/google/h/d/d;->k:Lcom/google/h/e/a/b;

    return-object v0
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/d/d;->l:Z

    return v0
.end method

.method private p()Lcom/google/h/e/a/h;
    .locals 1

    iget-object v0, p0, Lcom/google/h/d/d;->m:Lcom/google/h/e/a/h;

    return-object v0
.end method

.method private q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/d/d;->n:Z

    return v0
.end method

.method private r()Lcom/google/h/e/a/f;
    .locals 1

    iget-object v0, p0, Lcom/google/h/d/d;->o:Lcom/google/h/e/a/f;

    return-object v0
.end method

.method private s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/d/d;->p:Z

    return v0
.end method

.method private t()Lcom/google/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/h/d/d;->q:Lcom/google/b/a/a/c;

    return-object v0
.end method

.method private u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/d/d;->r:Z

    return v0
.end method

.method private v()Lcom/google/h/d/b;
    .locals 1

    iget-object v0, p0, Lcom/google/h/d/d;->s:Lcom/google/h/d/b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/h/d/d;->t:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/h/d/d;->b()I

    :cond_0
    iget v0, p0, Lcom/google/h/d/d;->t:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/h/d/d;->b(Lcom/google/protobuf/micro/b;)Lcom/google/h/d/d;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/h/d/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/h/d/d;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_0
    invoke-direct {p0}, Lcom/google/h/d/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/google/h/d/d;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_1
    invoke-direct {p0}, Lcom/google/h/d/d;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/h/d/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/h/d/d;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/h/d/d;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x1320f9

    invoke-direct {p0}, Lcom/google/h/d/d;->l()Lcom/google/h/e/a/d;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_4
    invoke-direct {p0}, Lcom/google/h/d/d;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x195e184

    invoke-direct {p0}, Lcom/google/h/d/d;->n()Lcom/google/h/e/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_5
    invoke-direct {p0}, Lcom/google/h/d/d;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x1b46604

    invoke-direct {p0}, Lcom/google/h/d/d;->p()Lcom/google/h/e/a/h;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_6
    invoke-direct {p0}, Lcom/google/h/d/d;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x21b6d89

    invoke-direct {p0}, Lcom/google/h/d/d;->r()Lcom/google/h/e/a/f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_7
    invoke-direct {p0}, Lcom/google/h/d/d;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x21c774f

    invoke-direct {p0}, Lcom/google/h/d/d;->t()Lcom/google/b/a/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_8
    invoke-direct {p0}, Lcom/google/h/d/d;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x259d705

    invoke-direct {p0}, Lcom/google/h/d/d;->v()Lcom/google/h/d/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_9
    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/h/d/d;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/h/d/d;->d()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/google/h/d/d;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/google/h/d/d;->f()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/google/h/d/d;->i()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/h/d/d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    :goto_1
    invoke-direct {p0}, Lcom/google/h/d/d;->j()Ljava/util/List;

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

    add-int/2addr v1, v0

    goto :goto_2

    :cond_1
    add-int v0, v2, v1

    invoke-direct {p0}, Lcom/google/h/d/d;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/h/d/d;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x1320f9

    invoke-direct {p0}, Lcom/google/h/d/d;->l()Lcom/google/h/e/a/d;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/google/h/d/d;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x195e184

    invoke-direct {p0}, Lcom/google/h/d/d;->n()Lcom/google/h/e/a/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-direct {p0}, Lcom/google/h/d/d;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x1b46604

    invoke-direct {p0}, Lcom/google/h/d/d;->p()Lcom/google/h/e/a/h;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-direct {p0}, Lcom/google/h/d/d;->q()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x21b6d89

    invoke-direct {p0}, Lcom/google/h/d/d;->r()Lcom/google/h/e/a/f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-direct {p0}, Lcom/google/h/d/d;->s()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x21c774f

    invoke-direct {p0}, Lcom/google/h/d/d;->t()Lcom/google/b/a/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-direct {p0}, Lcom/google/h/d/d;->u()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x259d705

    invoke-direct {p0}, Lcom/google/h/d/d;->v()Lcom/google/h/d/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iput v0, p0, Lcom/google/h/d/d;->t:I

    return v0

    :cond_8
    move v2, v0

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/h/d/d;->b:I

    return v0
.end method
