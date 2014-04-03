.class public final Lcom/google/h/a/b;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:F

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/h/a/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/h/a/b;->d:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/h/a/b;->e:I

    return-void
.end method

.method private a(F)Lcom/google/h/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/a/b;->c:Z

    iput p1, p0, Lcom/google/h/a/b;->d:F

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/h/a/b;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/a/b;->a:Z

    iput-object p1, p0, Lcom/google/h/a/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/h/a/b;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/h/a/b;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/h/a/b;->a(Ljava/lang/String;)Lcom/google/h/a/b;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/a/b;->a(F)Lcom/google/h/a/b;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/h/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/a/b;->a:Z

    return v0
.end method

.method private f()F
    .locals 1

    iget v0, p0, Lcom/google/h/a/b;->d:F

    return v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/a/b;->c:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/h/a/b;->e:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/h/a/b;->b()I

    :cond_0
    iget v0, p0, Lcom/google/h/a/b;->e:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/h/a/b;->b(Lcom/google/protobuf/micro/b;)Lcom/google/h/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/h/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/h/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/h/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/google/h/a/b;->f()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/h/a/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/h/a/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/h/a/b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/h/a/b;->f()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/google/h/a/b;->e:I

    return v0
.end method
