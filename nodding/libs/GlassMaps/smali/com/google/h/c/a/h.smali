.class public final Lcom/google/h/c/a/h;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Lcom/google/h/c/a/i;

.field private g:Z

.field private h:Lcom/google/h/c/a/g;

.field private i:Z

.field private j:Lcom/google/h/c/a/i;

.field private k:Z

.field private l:J

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    iput v1, p0, Lcom/google/h/c/a/h;->b:I

    iput v1, p0, Lcom/google/h/c/a/h;->d:I

    iput-object v0, p0, Lcom/google/h/c/a/h;->f:Lcom/google/h/c/a/i;

    iput-object v0, p0, Lcom/google/h/c/a/h;->h:Lcom/google/h/c/a/g;

    iput-object v0, p0, Lcom/google/h/c/a/h;->j:Lcom/google/h/c/a/i;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/h/c/a/h;->l:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/h/c/a/h;->m:I

    return-void
.end method

.method private a(I)Lcom/google/h/c/a/h;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/h;->a:Z

    iput p1, p0, Lcom/google/h/c/a/h;->b:I

    return-object p0
.end method

.method private a(J)Lcom/google/h/c/a/h;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/h;->k:Z

    iput-wide p1, p0, Lcom/google/h/c/a/h;->l:J

    return-object p0
.end method

.method private a(Lcom/google/h/c/a/g;)Lcom/google/h/c/a/h;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/h;->g:Z

    iput-object p1, p0, Lcom/google/h/c/a/h;->h:Lcom/google/h/c/a/g;

    return-object p0
.end method

.method private a(Lcom/google/h/c/a/i;)Lcom/google/h/c/a/h;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/h;->e:Z

    iput-object p1, p0, Lcom/google/h/c/a/h;->f:Lcom/google/h/c/a/i;

    return-object p0
.end method

.method private b(I)Lcom/google/h/c/a/h;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/h;->c:Z

    iput p1, p0, Lcom/google/h/c/a/h;->d:I

    return-object p0
.end method

.method private b(Lcom/google/h/c/a/i;)Lcom/google/h/c/a/h;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/h;->i:Z

    iput-object p1, p0, Lcom/google/h/c/a/h;->j:Lcom/google/h/c/a/i;

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/h/c/a/h;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/h/c/a/h;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/c/a/h;->a(I)Lcom/google/h/c/a/h;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/c/a/h;->b(I)Lcom/google/h/c/a/h;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/h/c/a/i;

    invoke-direct {v0}, Lcom/google/h/c/a/i;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/c/a/h;->a(Lcom/google/h/c/a/i;)Lcom/google/h/c/a/h;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/h/c/a/g;

    invoke-direct {v0}, Lcom/google/h/c/a/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/c/a/h;->a(Lcom/google/h/c/a/g;)Lcom/google/h/c/a/h;

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/google/h/c/a/i;

    invoke-direct {v0}, Lcom/google/h/c/a/i;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/c/a/h;->b(Lcom/google/h/c/a/i;)Lcom/google/h/c/a/h;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/h/c/a/h;->a(J)Lcom/google/h/c/a/h;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method private d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/h;->a:Z

    return v0
.end method

.method private e()I
    .locals 1

    iget v0, p0, Lcom/google/h/c/a/h;->b:I

    return v0
.end method

.method private f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/h;->c:Z

    return v0
.end method

.method private g()I
    .locals 1

    iget v0, p0, Lcom/google/h/c/a/h;->d:I

    return v0
.end method

.method private h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/h;->e:Z

    return v0
.end method

.method private i()Lcom/google/h/c/a/i;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/h;->f:Lcom/google/h/c/a/i;

    return-object v0
.end method

.method private j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/h;->g:Z

    return v0
.end method

.method private k()Lcom/google/h/c/a/g;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/h;->h:Lcom/google/h/c/a/g;

    return-object v0
.end method

.method private l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/h;->i:Z

    return v0
.end method

.method private m()Lcom/google/h/c/a/i;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/h;->j:Lcom/google/h/c/a/i;

    return-object v0
.end method

.method private n()J
    .locals 2

    iget-wide v0, p0, Lcom/google/h/c/a/h;->l:J

    return-wide v0
.end method

.method private o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/h;->k:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/h/c/a/h;->m:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/h/c/a/h;->b()I

    :cond_0
    iget v0, p0, Lcom/google/h/c/a/h;->m:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/h/c/a/h;->b(Lcom/google/protobuf/micro/b;)Lcom/google/h/c/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/h/c/a/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/h/c/a/h;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_0
    invoke-direct {p0}, Lcom/google/h/c/a/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/google/h/c/a/h;->g()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_1
    invoke-direct {p0}, Lcom/google/h/c/a/h;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/h/c/a/h;->i()Lcom/google/h/c/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/h/c/a/h;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/h/c/a/h;->k()Lcom/google/h/c/a/g;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_3
    invoke-direct {p0}, Lcom/google/h/c/a/h;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/h/c/a/h;->m()Lcom/google/h/c/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_4
    invoke-direct {p0}, Lcom/google/h/c/a/h;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/h/c/a/h;->n()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IJ)V

    :cond_5
    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/h/c/a/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/h/c/a/h;->e()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/h/c/a/h;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/h/c/a/h;->g()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/h/c/a/h;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/h/c/a/h;->i()Lcom/google/h/c/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/google/h/c/a/h;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/h/c/a/h;->k()Lcom/google/h/c/a/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-direct {p0}, Lcom/google/h/c/a/h;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/h/c/a/h;->m()Lcom/google/h/c/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-direct {p0}, Lcom/google/h/c/a/h;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/google/h/c/a/h;->n()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/google/h/c/a/h;->m:I

    return v0
.end method
