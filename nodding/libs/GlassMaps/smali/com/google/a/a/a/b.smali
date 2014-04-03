.class public final Lcom/google/a/a/a/b;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:F

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:J

.field private g:Z

.field private h:J

.field private i:Z

.field private j:J

.field private k:Z

.field private l:Lcom/google/a/a/a/c;

.field private m:Z

.field private n:Lcom/google/a/a/a/c;

.field private o:Ljava/util/List;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Lcom/google/a/a/a/f;

.field private t:Z

.field private u:Lcom/google/a/a/a/i;

.field private v:Z

.field private w:Lcom/google/a/a/a/e;

.field private x:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/a/b;->b:F

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/b;->d:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/a/a/a/b;->f:J

    iput-wide v2, p0, Lcom/google/a/a/a/b;->h:J

    iput-wide v2, p0, Lcom/google/a/a/a/b;->j:J

    iput-object v1, p0, Lcom/google/a/a/a/b;->l:Lcom/google/a/a/a/c;

    iput-object v1, p0, Lcom/google/a/a/a/b;->n:Lcom/google/a/a/a/c;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/b;->o:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/b;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/a/a/a/b;->s:Lcom/google/a/a/a/f;

    iput-object v1, p0, Lcom/google/a/a/a/b;->u:Lcom/google/a/a/a/i;

    iput-object v1, p0, Lcom/google/a/a/a/b;->w:Lcom/google/a/a/a/e;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/b;->x:I

    return-void
.end method

.method private a(F)Lcom/google/a/a/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/b;->a:Z

    iput p1, p0, Lcom/google/a/a/a/b;->b:F

    return-object p0
.end method

.method private a(J)Lcom/google/a/a/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/b;->e:Z

    iput-wide p1, p0, Lcom/google/a/a/a/b;->f:J

    return-object p0
.end method

.method private a(Lcom/google/a/a/a/c;)Lcom/google/a/a/a/b;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/b;->k:Z

    iput-object p1, p0, Lcom/google/a/a/a/b;->l:Lcom/google/a/a/a/c;

    return-object p0
.end method

.method private a(Lcom/google/a/a/a/e;)Lcom/google/a/a/a/b;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/b;->v:Z

    iput-object p1, p0, Lcom/google/a/a/a/b;->w:Lcom/google/a/a/a/e;

    return-object p0
.end method

.method private a(Lcom/google/a/a/a/f;)Lcom/google/a/a/a/b;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/b;->r:Z

    iput-object p1, p0, Lcom/google/a/a/a/b;->s:Lcom/google/a/a/a/f;

    return-object p0
.end method

.method private a(Lcom/google/a/a/a/i;)Lcom/google/a/a/a/b;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/b;->t:Z

    iput-object p1, p0, Lcom/google/a/a/a/b;->u:Lcom/google/a/a/a/i;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/a/a/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/b;->c:Z

    iput-object p1, p0, Lcom/google/a/a/a/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method private b(J)Lcom/google/a/a/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/b;->g:Z

    iput-wide p1, p0, Lcom/google/a/a/a/b;->h:J

    return-object p0
.end method

.method private b(Lcom/google/a/a/a/c;)Lcom/google/a/a/a/b;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/b;->m:Z

    iput-object p1, p0, Lcom/google/a/a/a/b;->n:Lcom/google/a/a/a/c;

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/a/a/a/b;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/a/a/a/b;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/b;->a(F)Lcom/google/a/a/a/b;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/b;->a(Ljava/lang/String;)Lcom/google/a/a/a/b;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/a/a/a/f;

    invoke-direct {v0}, Lcom/google/a/a/a/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/a/a/a/b;->a(Lcom/google/a/a/a/f;)Lcom/google/a/a/a/b;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/a/a/a/i;

    invoke-direct {v0}, Lcom/google/a/a/a/i;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/a/a/a/b;->a(Lcom/google/a/a/a/i;)Lcom/google/a/a/a/b;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/a/a/a/b;->a(J)Lcom/google/a/a/a/b;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/a/a/a/b;->b(J)Lcom/google/a/a/a/b;

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/a/a/a/c;

    invoke-direct {v0}, Lcom/google/a/a/a/c;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/a/a/a/b;->a(Lcom/google/a/a/a/c;)Lcom/google/a/a/a/b;

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/google/a/a/a/c;

    invoke-direct {v0}, Lcom/google/a/a/a/c;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/a/a/a/b;->b(Lcom/google/a/a/a/c;)Lcom/google/a/a/a/b;

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/google/a/a/a/e;

    invoke-direct {v0}, Lcom/google/a/a/a/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/a/a/a/b;->a(Lcom/google/a/a/a/e;)Lcom/google/a/a/a/b;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/b;->b(Ljava/lang/String;)Lcom/google/a/a/a/b;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/b;->c(Ljava/lang/String;)Lcom/google/a/a/a/b;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/a/a/a/b;->c(J)Lcom/google/a/a/a/b;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Lcom/google/a/a/a/b;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/b;->o:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/b;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private c(J)Lcom/google/a/a/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/b;->i:Z

    iput-wide p1, p0, Lcom/google/a/a/a/b;->j:J

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/google/a/a/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/b;->p:Z

    iput-object p1, p0, Lcom/google/a/a/a/b;->q:Ljava/lang/String;

    return-object p0
.end method

.method private d()F
    .locals 1

    iget v0, p0, Lcom/google/a/a/a/b;->b:F

    return v0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/b;->a:Z

    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/b;->c:Z

    return v0
.end method

.method private h()J
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/b;->f:J

    return-wide v0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/b;->e:Z

    return v0
.end method

.method private j()J
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/b;->h:J

    return-wide v0
.end method

.method private k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/b;->g:Z

    return v0
.end method

.method private l()J
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/b;->j:J

    return-wide v0
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/b;->i:Z

    return v0
.end method

.method private n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/b;->k:Z

    return v0
.end method

.method private o()Lcom/google/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/b;->l:Lcom/google/a/a/a/c;

    return-object v0
.end method

.method private p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/b;->m:Z

    return v0
.end method

.method private q()Lcom/google/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/b;->n:Lcom/google/a/a/a/c;

    return-object v0
.end method

.method private r()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/b;->o:Ljava/util/List;

    return-object v0
.end method

.method private s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method private t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/b;->p:Z

    return v0
.end method

.method private u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/b;->r:Z

    return v0
.end method

.method private v()Lcom/google/a/a/a/f;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/b;->s:Lcom/google/a/a/a/f;

    return-object v0
.end method

.method private w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/b;->t:Z

    return v0
.end method

.method private x()Lcom/google/a/a/a/i;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/b;->u:Lcom/google/a/a/a/i;

    return-object v0
.end method

.method private y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/b;->v:Z

    return v0
.end method

.method private z()Lcom/google/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/b;->w:Lcom/google/a/a/a/e;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/a/a/a/b;->x:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/a/a/b;->b()I

    :cond_0
    iget v0, p0, Lcom/google/a/a/a/b;->x:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/a/a/a/b;->b(Lcom/google/protobuf/micro/b;)Lcom/google/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/a/a/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/a/a/a/b;->d()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_0
    invoke-direct {p0}, Lcom/google/a/a/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/google/a/a/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/a/a/a/b;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/a/a/a/b;->v()Lcom/google/a/a/a/f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/a/a/a/b;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/a/a/a/b;->x()Lcom/google/a/a/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_3
    invoke-direct {p0}, Lcom/google/a/a/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/a/a/a/b;->h()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IJ)V

    :cond_4
    invoke-direct {p0}, Lcom/google/a/a/a/b;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/a/a/a/b;->j()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IJ)V

    :cond_5
    invoke-direct {p0}, Lcom/google/a/a/a/b;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/a/a/a/b;->o()Lcom/google/a/a/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_6
    invoke-direct {p0}, Lcom/google/a/a/a/b;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-direct {p0}, Lcom/google/a/a/a/b;->q()Lcom/google/a/a/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_7
    invoke-direct {p0}, Lcom/google/a/a/a/b;->y()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/a/a/a/b;->z()Lcom/google/a/a/a/e;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_8
    invoke-direct {p0}, Lcom/google/a/a/a/b;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/google/a/a/a/b;->t()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/a/a/a/b;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_a
    invoke-direct {p0}, Lcom/google/a/a/a/b;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/a/a/a/b;->l()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IJ)V

    :cond_b
    return-void
.end method

.method public final b()I
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/a/a/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/a/a/a/b;->d()F

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/google/a/a/a/b;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/google/a/a/a/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/google/a/a/a/b;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/a/a/a/b;->v()Lcom/google/a/a/a/f;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-direct {p0}, Lcom/google/a/a/a/b;->w()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-direct {p0}, Lcom/google/a/a/a/b;->x()Lcom/google/a/a/a/i;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    invoke-direct {p0}, Lcom/google/a/a/a/b;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/a/a/a/b;->h()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    invoke-direct {p0}, Lcom/google/a/a/a/b;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/a/a/a/b;->j()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    invoke-direct {p0}, Lcom/google/a/a/a/b;->n()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/a/a/a/b;->o()Lcom/google/a/a/a/c;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    invoke-direct {p0}, Lcom/google/a/a/a/b;->p()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    invoke-direct {p0}, Lcom/google/a/a/a/b;->q()Lcom/google/a/a/a/c;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    invoke-direct {p0}, Lcom/google/a/a/a/b;->y()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/google/a/a/a/b;->z()Lcom/google/a/a/a/e;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    :goto_1
    invoke-direct {p0}, Lcom/google/a/a/a/b;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_7
    add-int v0, v2, v1

    invoke-direct {p0}, Lcom/google/a/a/a/b;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/a/a/a/b;->t()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/google/a/a/a/b;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-direct {p0}, Lcom/google/a/a/a/b;->m()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/google/a/a/a/b;->l()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iput v0, p0, Lcom/google/a/a/a/b;->x:I

    return v0

    :cond_a
    move v2, v0

    goto :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method
