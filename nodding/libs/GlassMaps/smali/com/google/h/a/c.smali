.class public final Lcom/google/h/a/c;
.super Lcom/google/protobuf/micro/c;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:I

.field private e:Ljava/util/List;

.field private f:Z

.field private g:F

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/c;-><init>()V

    iput v0, p0, Lcom/google/h/a/c;->b:I

    iput v0, p0, Lcom/google/h/a/c;->d:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/h/a/c;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/h/a/c;->g:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/h/a/c;->h:I

    return-void
.end method

.method private a(F)Lcom/google/h/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/a/c;->f:Z

    iput p1, p0, Lcom/google/h/a/c;->g:F

    return-object p0
.end method

.method private a(I)Lcom/google/h/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/a/c;->a:Z

    iput p1, p0, Lcom/google/h/a/c;->b:I

    return-object p0
.end method

.method private a(Lcom/google/h/a/b;)Lcom/google/h/a/c;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/h/a/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/h/a/c;->e:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/h/a/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static a([B)Lcom/google/h/a/c;
    .locals 1

    new-instance v0, Lcom/google/h/a/c;

    invoke-direct {v0}, Lcom/google/h/a/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/h/a/c;->b([B)Lcom/google/protobuf/micro/c;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/c;

    check-cast v0, Lcom/google/h/a/c;

    return-object v0
.end method

.method private b(I)Lcom/google/h/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/h/a/c;->c:Z

    iput p1, p0, Lcom/google/h/a/c;->d:I

    return-object p0
.end method

.method private b(Lcom/google/protobuf/micro/b;)Lcom/google/h/a/c;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/h/a/c;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/a/c;->a(I)Lcom/google/h/a/c;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/a/c;->b(I)Lcom/google/h/a/c;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/h/a/b;

    invoke-direct {v0}, Lcom/google/h/a/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/c;)V

    invoke-direct {p0, v0}, Lcom/google/h/a/c;->a(Lcom/google/h/a/b;)Lcom/google/h/a/c;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->c()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/h/a/c;->a(F)Lcom/google/h/a/c;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method private f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/a/c;->a:Z

    return v0
.end method

.method private g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/a/c;->c:Z

    return v0
.end method

.method private h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/h/a/c;->e:Ljava/util/List;

    return-object v0
.end method

.method private i()F
    .locals 1

    iget v0, p0, Lcom/google/h/a/c;->g:F

    return v0
.end method

.method private j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/h/a/c;->f:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/h/a/c;->h:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/h/a/c;->b()I

    :cond_0
    iget v0, p0, Lcom/google/h/a/c;->h:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/h/a/c;->b(Lcom/google/protobuf/micro/b;)Lcom/google/h/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/h/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/h/a/c;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_0
    invoke-direct {p0}, Lcom/google/h/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/h/a/c;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(II)V

    :cond_1
    invoke-direct {p0}, Lcom/google/h/a/c;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(ILcom/google/protobuf/micro/c;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/h/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/h/a/c;->i()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->a(IF)V

    :cond_3
    return-void
.end method

.method public final b()I
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/h/a/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/h/a/c;->d()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/google/h/a/c;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/h/a/c;->e()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-direct {p0}, Lcom/google/h/a/c;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/h/a/b;

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->d(ILcom/google/protobuf/micro/c;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/h/a/c;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/h/a/c;->i()F

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->b(IF)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    iput v1, p0, Lcom/google/h/a/c;->h:I

    return v1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/h/a/c;->b:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/h/a/c;->d:I

    return v0
.end method
