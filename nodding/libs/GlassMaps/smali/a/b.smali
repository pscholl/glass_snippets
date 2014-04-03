.class public final La/b;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, La/b;->b:Ljava/lang/String;

    iput v1, p0, La/b;->d:I

    iput v1, p0, La/b;->f:I

    const/4 v0, -0x1

    iput v0, p0, La/b;->g:I

    return-void
.end method

.method private a(I)La/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/b;->c:Z

    iput p1, p0, La/b;->d:I

    return-object p0
.end method

.method private a(Ljava/lang/String;)La/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/b;->a:Z

    iput-object p1, p0, La/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(I)La/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/b;->e:Z

    iput p1, p0, La/b;->f:I

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)La/b;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, La/b;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/b;->a(Ljava/lang/String;)La/b;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->j()I

    move-result v0

    invoke-direct {p0, v0}, La/b;->a(I)La/b;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->j()I

    move-result v0

    invoke-direct {p0, v0}, La/b;->b(I)La/b;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, La/b;->a:Z

    return v0
.end method

.method private f()I
    .locals 1

    iget v0, p0, La/b;->d:I

    return v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, La/b;->c:Z

    return v0
.end method

.method private h()I
    .locals 1

    iget v0, p0, La/b;->f:I

    return v0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, La/b;->e:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, La/b;->g:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, La/b;->b()I

    :cond_0
    iget v0, p0, La/b;->g:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, La/b;->b(Lcom/google/protobuf/micro/b;)La/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    invoke-direct {p0}, La/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, La/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, La/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, La/b;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(II)V

    :cond_1
    invoke-direct {p0}, La/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, La/b;->h()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(II)V

    :cond_2
    return-void
.end method

.method public final b()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, La/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, La/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, La/b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0}, La/b;->f()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, La/b;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-direct {p0}, La/b;->h()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, La/b;->g:I

    return v0
.end method
