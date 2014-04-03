.class public final Lcom/google/googlenav/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Ljava/util/List;


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "v"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/h;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/h;->c:I

    iput v0, p0, Lcom/google/googlenav/h;->d:I

    iput v0, p0, Lcom/google/googlenav/h;->f:I

    iput v0, p0, Lcom/google/googlenav/h;->g:I

    iput v0, p0, Lcom/google/googlenav/h;->e:I

    iput v0, p0, Lcom/google/googlenav/h;->h:I

    iput v0, p0, Lcom/google/googlenav/h;->i:I

    iput v0, p0, Lcom/google/googlenav/h;->j:I

    iput-object p1, p0, Lcom/google/googlenav/h;->k:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(B)Lcom/google/googlenav/h;
    .locals 2

    const-class v1, Lcom/google/googlenav/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/googlenav/h;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/h;->d()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/h;->b:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/google/googlenav/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p0, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/googlenav/h;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/h;->f:I

    iget v1, p0, Lcom/google/googlenav/h;->g:I

    iget v2, p0, Lcom/google/googlenav/h;->h:I

    add-int v3, v0, v1

    const/16 v4, 0x32

    if-gt v3, v4, :cond_1

    add-int v3, v0, v1

    if-lez v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/h;->f:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/h;->g:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/h;->h:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v0, :cond_2

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    if-lez v1, :cond_3

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    if-lez v2, :cond_4

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "r"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/googlenav/h;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/i;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static d()Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "CacheHitStats"

    invoke-static {v1}, Lcom/google/googlenav/common/h;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v0

    :goto_0
    sget-object v4, Lcom/google/googlenav/h;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    new-instance v4, Lcom/google/googlenav/h;

    sget-object v5, Lcom/google/googlenav/h;->a:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v4, v5}, Lcom/google/googlenav/h;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/h;->c:I

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/h;->d:I

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/h;->i:I

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/h;->j:I

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/h;->e:I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "STATS"

    invoke-static {v2, v1}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/io/PersistentStore;

    move-result-object v1

    const-string v2, "CacheHitStats"

    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/PersistentStore;->b(Ljava/lang/String;)Z

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/h;->a:[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :goto_1
    sget-object v1, Lcom/google/googlenav/h;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/google/googlenav/h;

    sget-object v2, Lcom/google/googlenav/h;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Lcom/google/googlenav/h;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method


# virtual methods
.method public final a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/h;->e:I

    iget v0, p0, Lcom/google/googlenav/h;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/h;->h:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/h;->c:I

    iget v0, p0, Lcom/google/googlenav/h;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/h;->f:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/h;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/googlenav/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/h;->d:I

    iget v0, p0, Lcom/google/googlenav/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/h;->g:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/h;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
