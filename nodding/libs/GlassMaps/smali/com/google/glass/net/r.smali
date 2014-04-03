.class public final Lcom/google/glass/net/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:Lcom/google/protobuf/nano/b;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Lcom/google/protobuf/nano/b;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p1, p0, Lcom/google/glass/net/r;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/glass/net/r;->b:Lcom/google/protobuf/nano/b;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(I)Lcom/google/glass/net/r;
    .locals 3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/glass/net/r;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/net/r;-><init>(Ljava/lang/Integer;Lcom/google/protobuf/nano/b;)V

    return-object v0
.end method

.method static a(Lcom/google/protobuf/nano/b;)Lcom/google/glass/net/r;
    .locals 2

    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/glass/net/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/glass/net/r;-><init>(Ljava/lang/Integer;Lcom/google/protobuf/nano/b;)V

    return-object v0
.end method

.method static f()Lcom/google/glass/net/r;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/glass/net/r;

    invoke-direct {v0, v1, v1}, Lcom/google/glass/net/r;-><init>(Ljava/lang/Integer;Lcom/google/protobuf/nano/b;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/net/r;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/net/r;->b:Lcom/google/protobuf/nano/b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/net/r;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/glass/net/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/net/r;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/net/r;->b:Lcom/google/protobuf/nano/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/google/protobuf/nano/b;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/net/r;->b:Lcom/google/protobuf/nano/b;

    return-object v0
.end method
