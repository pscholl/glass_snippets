.class public final Lcom/google/googlenav/a/c;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final b:Lcom/google/glass/logging/i;

.field private static volatile c:Z

.field private static volatile d:Lcom/google/googlenav/common/io/b/a;

.field private static volatile e:Lcom/google/googlenav/a/a;

.field private static volatile f:Lcom/google/googlenav/a/g;

.field private static volatile g:Lcom/google/googlenav/a/b;

.field private static volatile h:Lcom/google/googlenav/a/h;

.field private static volatile i:Lcom/google/googlenav/common/d/d;

.field private static volatile j:Z

.field private static volatile k:Z

.field private static l:Ljava/lang/Object;

.field private static volatile m:Lcom/google/googlenav/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x8

    const/4 v1, 0x0

    const-string v0, "ServerControlledParametersManager:"

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/a/c;->b:Lcom/google/glass/logging/i;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/a/c;->c:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/a/c;->i:Lcom/google/googlenav/common/d/d;

    sput-boolean v1, Lcom/google/googlenav/a/c;->j:Z

    sput-boolean v1, Lcom/google/googlenav/a/c;->k:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/a/c;->l:Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dn;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/dn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dn;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/dn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dn;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/dn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dn;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/dn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/dn;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/a/c;->a:Ljava/util/Map;

    invoke-static {}, Lcom/google/googlenav/common/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/a/a;

    invoke-static {}, Lcom/google/googlenav/a/a;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/a/a;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v0, Lcom/google/googlenav/a/c;->e:Lcom/google/googlenav/a/a;

    new-instance v0, Lcom/google/googlenav/a/g;

    invoke-static {}, Lcom/google/googlenav/a/g;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/a/g;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v0, Lcom/google/googlenav/a/c;->f:Lcom/google/googlenav/a/g;

    new-instance v0, Lcom/google/googlenav/a/b;

    invoke-static {}, Lcom/google/googlenav/a/b;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/a/b;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v0, Lcom/google/googlenav/a/c;->g:Lcom/google/googlenav/a/b;

    new-instance v0, Lcom/google/googlenav/a/h;

    invoke-static {}, Lcom/google/googlenav/a/h;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/a/h;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v0, Lcom/google/googlenav/a/c;->h:Lcom/google/googlenav/a/h;

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/a/h;
    .locals 1

    sget-object v0, Lcom/google/googlenav/a/c;->h:Lcom/google/googlenav/a/h;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/common/d/d;)Lcom/google/googlenav/common/d/d;
    .locals 0

    sput-object p0, Lcom/google/googlenav/a/c;->i:Lcom/google/googlenav/common/d/d;

    return-object p0
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/e;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->e()Z

    move-result v1

    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    invoke-virtual {p0, v3, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 2

    const-class v1, Lcom/google/googlenav/a/c;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/google/googlenav/a/c;->c:Z

    const-string v0, "ServerControlledParametersManager_DA.data"

    invoke-static {p0, v0}, Lcom/google/googlenav/a/c;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/google/googlenav/a/c;->d:Lcom/google/googlenav/common/io/b/a;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/a/c;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/googlenav/a/c;->d:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    sget-object v2, Lcom/google/googlenav/a/c;->d:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/a/c;->d(Lcom/google/googlenav/common/io/b/a;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, v3}, Lcom/google/googlenav/a/c;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/googlenav/a/c;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/a/c;->h()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/a/c;->d:Lcom/google/googlenav/common/io/b/a;

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/googlenav/common/io/PersistentStore;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v3, Lcom/google/i/a/a/b/e;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/b/a;->a([B)Lcom/google/googlenav/common/io/b/a;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/a/c;->e(Lcom/google/googlenav/common/io/b/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/googlenav/a/c;->b:Lcom/google/glass/logging/i;

    const-string v3, "Can\'t parse the CLIENT_PARAMETERS_RESPONSE_PROTO read from the cache: "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v1}, Lcom/google/glass/logging/i;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static a(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Z
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/googlenav/common/io/PersistentStore;->a([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/googlenav/a/c;->b:Lcom/google/glass/logging/i;

    const-string v3, "Can\'t write the CLIENT_PARAMETERS_RESPONSE_PROTO to the cache: "

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/i;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/google/googlenav/a/c;->k:Z

    return p0
.end method

.method static synthetic b()Lcom/google/googlenav/common/io/b/a;
    .locals 1

    sget-object v0, Lcom/google/googlenav/a/c;->d:Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method

.method private static declared-synchronized b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Z)V
    .locals 3

    const-class v1, Lcom/google/googlenav/a/c;

    monitor-enter v1

    if-nez p0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/googlenav/a/c;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/google/googlenav/a/c;->i:Lcom/google/googlenav/common/d/d;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/googlenav/a/c;->i:Lcom/google/googlenav/common/d/d;

    invoke-virtual {v0}, Lcom/google/googlenav/common/d/d;->b()I

    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/a/c;->i:Lcom/google/googlenav/common/d/d;

    :cond_1
    sget-boolean v0, Lcom/google/googlenav/a/c;->k:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/a/c;->j:Z

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/google/googlenav/a/c;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/a/c;->j:Z

    new-instance v0, Lcom/google/googlenav/a/d;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/a/d;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/googlenav/common/io/b/a;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/a/c;->d(Lcom/google/googlenav/common/io/b/a;)Z

    move-result v0

    return v0
.end method

.method static synthetic c()Lcom/google/googlenav/a/f;
    .locals 1

    sget-object v0, Lcom/google/googlenav/a/c;->m:Lcom/google/googlenav/a/f;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/common/io/b/a;)V
    .locals 0

    invoke-static {p0}, Lcom/google/googlenav/a/c;->e(Lcom/google/googlenav/common/io/b/a;)V

    return-void
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/google/googlenav/a/c;->c:Z

    return v0
.end method

.method private static d(Lcom/google/googlenav/common/io/b/a;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    invoke-static {p0, v2, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v3

    sget-object v0, Lcom/google/googlenav/a/c;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MAPS"

    const-string v4, "ServerControlledParametersManager: ParameterGroupProto with type %s is supported"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/googlenav/a/c;->a:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v0, "MAPS"

    const-string v4, "ServerControlledParametersManager: ParameterGroupProto with type %s isn\'t supported"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/google/googlenav/a/c;->e:Lcom/google/googlenav/a/a;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/googlenav/a/c;->e:Lcom/google/googlenav/a/a;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/a/a;->a(Lcom/google/googlenav/common/io/b/a;)V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/googlenav/a/a;

    invoke-direct {v1, v0}, Lcom/google/googlenav/a/a;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v1, Lcom/google/googlenav/a/c;->e:Lcom/google/googlenav/a/a;

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/google/googlenav/a/g;

    invoke-direct {v1, v0}, Lcom/google/googlenav/a/g;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v1, Lcom/google/googlenav/a/c;->f:Lcom/google/googlenav/a/g;

    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->d()V

    move v0, v2

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/google/googlenav/a/b;

    invoke-direct {v1, v0}, Lcom/google/googlenav/a/b;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v1, Lcom/google/googlenav/a/c;->g:Lcom/google/googlenav/a/b;

    move v0, v2

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/google/googlenav/a/h;

    invoke-direct {v1, v0}, Lcom/google/googlenav/a/h;-><init>(Lcom/google/googlenav/common/io/b/a;)V

    sput-object v1, Lcom/google/googlenav/a/c;->h:Lcom/google/googlenav/a/h;

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "MAPS"

    const-string v4, "ServerControlledParametersManager: ParameterGroupProto with type %s is not updated"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/google/glass/logging/o;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/googlenav/a/c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method private static e(Lcom/google/googlenav/common/io/b/a;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    sget-object v0, Lcom/google/googlenav/a/c;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/googlenav/a/c;->d:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    sget-object v3, Lcom/google/googlenav/a/c;->d:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/b/a;->d(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    sget-object v1, Lcom/google/googlenav/a/c;->d:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/b/a;->f(II)V

    :cond_1
    sget-object v0, Lcom/google/googlenav/a/c;->d:Lcom/google/googlenav/common/io/b/a;

    invoke-virtual {v0, v4, p0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic f()Z
    .locals 1

    sget-boolean v0, Lcom/google/googlenav/a/c;->j:Z

    return v0
.end method

.method static synthetic g()Lcom/google/googlenav/common/d/d;
    .locals 1

    sget-object v0, Lcom/google/googlenav/a/c;->i:Lcom/google/googlenav/common/d/d;

    return-object v0
.end method

.method private static h()Lcom/google/googlenav/common/io/b/a;
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v5, 0x1

    new-instance v3, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/i/a/a/b/e;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    sget-object v0, Lcom/google/googlenav/a/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/i/a/a/b/e;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v5, v1}, Lcom/google/googlenav/common/io/b/a;->g(II)V

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v3, v5, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/google/googlenav/a/a;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    move-object v0, v2

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/google/googlenav/a/g;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    move-object v0, v2

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/google/googlenav/a/b;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    move-object v0, v2

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/google/googlenav/a/h;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
