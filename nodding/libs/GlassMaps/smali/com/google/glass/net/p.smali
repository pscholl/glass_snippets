.class public Lcom/google/glass/net/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;

.field private c:I

.field private final d:Landroid/content/Context;

.field private e:Lcom/google/glass/net/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/net/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/net/p;->d:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/p;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/net/p;->c:I

    new-instance v0, Lcom/google/glass/net/a;

    invoke-direct {v0, p1}, Lcom/google/glass/net/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/net/p;->e:Lcom/google/glass/net/a;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/glass/net/b;ZLjava/util/concurrent/Executor;)Lcom/google/glass/net/h;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/google/glass/net/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/net/h;-><init>(Landroid/content/Context;Lcom/google/glass/net/b;ZLjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/glass/net/p;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/glass/net/h;
    .locals 5

    const/16 v4, 0x8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/net/p;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/google/glass/net/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/h;

    invoke-virtual {v0}, Lcom/google/glass/net/h;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    monitor-exit p0

    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    :goto_2
    :try_start_1
    iget v0, p0, Lcom/google/glass/net/p;->c:I

    if-ge v0, v4, :cond_3

    iget v0, p0, Lcom/google/glass/net/p;->c:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/net/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/glass/net/p;->c:I

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/glass/net/p;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/net/p;->e:Lcom/google/glass/net/a;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/glass/util/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/net/p;->a(Landroid/content/Context;Lcom/google/glass/net/b;ZLjava/util/concurrent/Executor;)Lcom/google/glass/net/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/net/p;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/google/glass/net/h;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/net/p;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/glass/net/q;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/glass/net/q;-><init>(Lcom/google/glass/net/p;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/glass/net/q;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/net/p;->b:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/net/p;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/h;

    iget v1, p0, Lcom/google/glass/net/p;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/net/p;->c:I

    iget v1, p0, Lcom/google/glass/net/p;->c:I

    if-lt v1, v4, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/glass/net/p;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
