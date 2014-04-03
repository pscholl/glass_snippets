.class public final Lcom/google/a/a/a/h;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Z

.field private e:J

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/h;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/h;->c:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/a/a/a/h;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/h;->g:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/h;->h:I

    return-void
.end method

.method private a(J)Lcom/google/a/a/a/h;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/h;->d:Z

    iput-wide p1, p0, Lcom/google/a/a/a/h;->e:J

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/a/a/a/h;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/h;->a:Z

    iput-object p1, p0, Lcom/google/a/a/a/h;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/a/a/a/h;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/a/a/a/h;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/h;->a(Ljava/lang/String;)Lcom/google/a/a/a/h;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/h;->b(Ljava/lang/String;)Lcom/google/a/a/a/h;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/a/a/a/h;->a(J)Lcom/google/a/a/a/h;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/a/a/h;->c(Ljava/lang/String;)Lcom/google/a/a/a/h;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Lcom/google/a/a/a/h;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/a/a/h;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/h;->c:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/h;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/google/a/a/a/h;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/h;->f:Z

    iput-object p1, p0, Lcom/google/a/a/a/h;->g:Ljava/lang/String;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/h;->a:Z

    return v0
.end method

.method private f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/h;->c:Ljava/util/List;

    return-object v0
.end method

.method private g()J
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/h;->e:J

    return-wide v0
.end method

.method private h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/h;->d:Z

    return v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method private j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/h;->f:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/a/a/a/h;->h:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/a/a/h;->b()I

    :cond_0
    iget v0, p0, Lcom/google/a/a/a/h;->h:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/a/a/a/h;->b(Lcom/google/protobuf/micro/b;)Lcom/google/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/a/a/a/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/a/a/a/h;->f()Ljava/util/List;

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
    invoke-direct {p0}, Lcom/google/a/a/a/h;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/a/a/a/h;->g()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IJ)V

    :cond_2
    invoke-direct {p0}, Lcom/google/a/a/a/h;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/a/a/a/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/a/a/a/h;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/google/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lcom/google/a/a/a/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_0
    add-int v0, v1, v2

    invoke-direct {p0}, Lcom/google/a/a/a/h;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/a/a/a/h;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/a/a/a/h;->g()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/a/a/a/h;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/a/a/a/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/google/a/a/a/h;->h:I

    return v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method
