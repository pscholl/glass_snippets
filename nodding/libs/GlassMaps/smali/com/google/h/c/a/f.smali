.class public final Lcom/google/h/c/a/f;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:D

.field private e:Z

.field private f:Lcom/google/h/c/a/j;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/c/a/f;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/h/c/a/f;->d:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/c/a/f;->f:Lcom/google/h/c/a/j;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/h/c/a/f;->g:I

    return-void
.end method

.method private a(D)Lcom/google/h/c/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/f;->c:Z

    iput-wide p1, p0, Lcom/google/h/c/a/f;->d:D

    return-object p0
.end method

.method private a(Lcom/google/h/c/a/j;)Lcom/google/h/c/a/f;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/f;->e:Z

    iput-object p1, p0, Lcom/google/h/c/a/f;->f:Lcom/google/h/c/a/j;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/h/c/a/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/c/a/f;->a:Z

    iput-object p1, p0, Lcom/google/h/c/a/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/h/c/a/f;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/h/c/a/f;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/c/a/f;->a(Ljava/lang/String;)Lcom/google/h/c/a/f;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->b()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/h/c/a/f;->a(D)Lcom/google/h/c/a/f;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/h/c/a/j;

    invoke-direct {v0}, Lcom/google/h/c/a/j;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/c/a/f;->a(Lcom/google/h/c/a/j;)Lcom/google/h/c/a/f;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/f;->a:Z

    return v0
.end method

.method private f()D
    .locals 2

    iget-wide v0, p0, Lcom/google/h/c/a/f;->d:D

    return-wide v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/f;->c:Z

    return v0
.end method

.method private h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/c/a/f;->e:Z

    return v0
.end method

.method private i()Lcom/google/h/c/a/j;
    .locals 1

    iget-object v0, p0, Lcom/google/h/c/a/f;->f:Lcom/google/h/c/a/j;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/h/c/a/f;->g:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/h/c/a/f;->b()I

    :cond_0
    iget v0, p0, Lcom/google/h/c/a/f;->g:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/h/c/a/f;->b(Lcom/google/protobuf/micro/b;)Lcom/google/h/c/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/h/c/a/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/h/c/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/h/c/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/google/h/c/a/f;->f()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ID)V

    :cond_1
    invoke-direct {p0}, Lcom/google/h/c/a/f;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/h/c/a/f;->i()Lcom/google/h/c/a/j;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/h/c/a/f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/h/c/a/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/h/c/a/f;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/h/c/a/f;->f()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/h/c/a/f;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/h/c/a/f;->i()Lcom/google/h/c/a/j;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/google/h/c/a/f;->g:I

    return v0
.end method
