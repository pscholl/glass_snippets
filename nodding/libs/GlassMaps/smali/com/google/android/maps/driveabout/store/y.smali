.class public final Lcom/google/android/maps/driveabout/store/y;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/maps/driveabout/store/az;

.field private e:Lcom/google/android/maps/driveabout/store/ay;

.field private f:Lcom/google/android/maps/driveabout/store/ab;

.field private final g:Lcom/google/android/maps/driveabout/store/ai;

.field private final h:Lcom/google/android/maps/driveabout/store/aa;

.field private final i:[Lcom/google/android/maps/driveabout/store/ay;

.field private final j:Lcom/google/android/maps/driveabout/util/g;

.field private final k:Ljava/util/Set;

.field private final l:Ljava/util/concurrent/locks/ReentrantLock;

.field private final m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Lcom/google/android/maps/driveabout/store/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/maps/driveabout/store/y;->a:[B

    const/16 v0, 0x13

    sput v0, Lcom/google/android/maps/driveabout/store/y;->b:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;Lcom/google/android/maps/driveabout/store/az;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/store/y;->v:I

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/y;->w:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    iput-object p6, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    iget v2, p2, Lcom/google/android/maps/driveabout/store/ab;->d:I

    new-array v2, v2, [Lcom/google/android/maps/driveabout/store/ay;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    new-instance v2, Lcom/google/android/maps/driveabout/util/g;

    const/16 v3, 0x800

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->f()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ab;->d:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/store/ai;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/store/aa;->c(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebuilding inconsistent shard: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/y;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/store/y;->b(I)Lcom/google/android/maps/driveabout/store/ag;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/store/ai;->a(Lcom/google/android/maps/driveabout/store/ag;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/store/aa;->a(Lcom/google/android/maps/driveabout/store/ag;)V

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/store/y;->d(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebuilding shard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/store/y;->e(I)V

    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/aa;->a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ai;->a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static a([BI)I
    .locals 4

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public static a(JLjava/lang/String;I[B)Lcom/google/android/maps/driveabout/store/ac;
    .locals 3

    new-instance v0, Lcom/google/android/maps/driveabout/store/ac;

    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/y;->c(JLjava/lang/String;)Lcom/google/android/maps/driveabout/store/ad;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, p4, v2}, Lcom/google/android/maps/driveabout/store/ac;-><init>(Lcom/google/android/maps/driveabout/store/ad;I[BLcom/google/android/maps/driveabout/store/z;)V

    return-object v0
.end method

.method public static a(JLjava/lang/String;[B)Lcom/google/android/maps/driveabout/store/ac;
    .locals 3

    new-instance v0, Lcom/google/android/maps/driveabout/store/ac;

    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/y;->c(JLjava/lang/String;)Lcom/google/android/maps/driveabout/store/ad;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p3, v2}, Lcom/google/android/maps/driveabout/store/ac;-><init>(Lcom/google/android/maps/driveabout/store/ad;[BLcom/google/android/maps/driveabout/store/z;)V

    return-object v0
.end method

.method public static a(J[B)Lcom/google/android/maps/driveabout/store/ac;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;[B)Lcom/google/android/maps/driveabout/store/ac;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/ad;)Lcom/google/android/maps/driveabout/store/af;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/util/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/af;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;Lcom/google/android/maps/driveabout/store/ad;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v5, v0, Lcom/google/android/maps/driveabout/store/af;->g:I

    invoke-virtual {v4, v5}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v4

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->b(Lcom/google/android/maps/driveabout/store/ad;)Lcom/google/android/maps/driveabout/store/ah;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/google/android/maps/driveabout/store/ah;->b:Lcom/google/android/maps/driveabout/store/af;

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/ad;I)Lcom/google/android/maps/driveabout/store/ah;
    .locals 11

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v2

    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/y;->r:I

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/store/y;->b(I)Lcom/google/android/maps/driveabout/store/ag;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/store/ag;->e(I)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v6

    iget-wide v7, v6, Lcom/google/android/maps/driveabout/store/af;->a:J

    const-wide/16 v9, -0x1

    cmp-long v0, v7, v9

    if-eqz v0, :cond_3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v7, v6, Lcom/google/android/maps/driveabout/store/af;->a:J

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-nez v0, :cond_3

    invoke-direct {p0, v6, p1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;Lcom/google/android/maps/driveabout/store/ad;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/maps/driveabout/store/ah;

    invoke-direct {v0, v3, v6, v2}, Lcom/google/android/maps/driveabout/store/ah;-><init>(Lcom/google/android/maps/driveabout/store/ag;Lcom/google/android/maps/driveabout/store/af;I)V

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lookupShardRecordIndexFromShard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/store/y;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :goto_2
    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    throw v0

    :cond_0
    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/af;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v3

    :try_start_2
    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    iget-wide v5, v0, Lcom/google/android/maps/driveabout/store/af;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    iget-object v3, v1, Lcom/google/android/maps/driveabout/store/ah;->b:Lcom/google/android/maps/driveabout/store/af;

    iget-wide v3, v3, Lcom/google/android/maps/driveabout/store/af;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/maps/driveabout/store/ah;->b:Lcom/google/android/maps/driveabout/store/af;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/y;->q:I

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;IILjava/util/Locale;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;
    .locals 10

    const/16 v2, 0x37eb

    const/4 v8, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    move v0, v1

    move p1, v2

    :goto_0
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, -0x2

    if-ne p1, v4, :cond_1

    const/16 p1, 0x2fee

    move v5, v1

    move v0, p1

    :goto_1
    if-ge v0, v3, :cond_0

    move v0, v3

    :cond_0
    if-nez v5, :cond_2

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of records must be between 4 and 14315"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v4, -0x3

    if-ne p1, v4, :cond_3

    const p1, 0x28d71

    move v5, v1

    move v0, p1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".m"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;)V

    add-int/lit8 v2, v0, -0x1

    div-int/lit16 v2, v2, 0x199

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v3

    add-int/lit8 v4, v0, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0, v1}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v9

    new-instance v0, Lcom/google/android/maps/driveabout/store/ab;

    sget v1, Lcom/google/android/maps/driveabout/store/y;->b:I

    const/16 v2, 0x2000

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/store/ab;-><init>(IIIIZILjava/util/Locale;)V

    new-instance v4, Lcom/google/android/maps/driveabout/store/ai;

    invoke-direct {v4, v3}, Lcom/google/android/maps/driveabout/store/ai;-><init>(I)V

    new-instance v5, Lcom/google/android/maps/driveabout/store/aa;

    invoke-direct {v5, v3, v8}, Lcom/google/android/maps/driveabout/store/aa;-><init>(II)V

    invoke-static {v0, v4, v5, v9}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;)V

    invoke-interface {v9}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    new-instance v1, Lcom/google/android/maps/driveabout/store/y;

    move-object v2, p0

    move-object v3, v0

    move-object v6, v9

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/store/y;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;Lcom/google/android/maps/driveabout/store/az;)V

    return-object v1

    :cond_3
    move v5, v0

    move v0, p1

    goto :goto_1

    :cond_4
    move v0, v8

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/az;)Lcom/google/android/maps/driveabout/store/y;
    .locals 7

    const/16 v3, 0x2000

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v5

    new-array v0, v3, [B

    invoke-interface {v5, v0}, Lcom/google/android/maps/driveabout/store/ay;->a([B)V

    new-instance v2, Lcom/google/android/maps/driveabout/store/ab;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/store/ab;-><init>([BI)V

    iget v0, v2, Lcom/google/android/maps/driveabout/store/ab;->a:I

    sget v1, Lcom/google/android/maps/driveabout/store/y;->b:I

    if-ne v0, v1, :cond_0

    iget v0, v2, Lcom/google/android/maps/driveabout/store/ab;->c:I

    if-eq v0, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Cache Header: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v3, Lcom/google/android/maps/driveabout/store/ai;

    iget v0, v2, Lcom/google/android/maps/driveabout/store/ab;->d:I

    invoke-direct {v3, v0}, Lcom/google/android/maps/driveabout/store/ai;-><init>(I)V

    invoke-virtual {v3, v5}, Lcom/google/android/maps/driveabout/store/ai;->b(Lcom/google/android/maps/driveabout/store/ay;)V

    new-instance v4, Lcom/google/android/maps/driveabout/store/aa;

    iget v0, v2, Lcom/google/android/maps/driveabout/store/ab;->d:I

    iget v1, v3, Lcom/google/android/maps/driveabout/store/ai;->g:I

    invoke-direct {v4, v0, v1}, Lcom/google/android/maps/driveabout/store/aa;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/google/android/maps/driveabout/store/aa;->b(Lcom/google/android/maps/driveabout/store/ay;)V

    new-instance v0, Lcom/google/android/maps/driveabout/store/y;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/store/y;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;Lcom/google/android/maps/driveabout/store/az;)V

    return-object v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;)V
    .locals 2

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/ab;->a([BI)I

    invoke-interface {p3, v0}, Lcom/google/android/maps/driveabout/store/ay;->b([B)V

    invoke-virtual {p1, p3}, Lcom/google/android/maps/driveabout/store/ai;->a(Lcom/google/android/maps/driveabout/store/ay;)V

    invoke-virtual {p2, p3}, Lcom/google/android/maps/driveabout/store/aa;->a(Lcom/google/android/maps/driveabout/store/ay;)V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/store/ad;ILjava/util/Map;)V
    .locals 1

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/ae;Lcom/google/android/maps/driveabout/store/ag;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ae;->a()V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ag;Z)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/af;Ljava/io/IOException;)V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/y;->p:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/ag;Z)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/ai;->a:[I

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/store/ai;->a(I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->i()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2000

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/store/ab;->j:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/store/ag;->b(Lcom/google/android/maps/driveabout/store/ay;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/store/aa;->a(Lcom/google/android/maps/driveabout/store/ag;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/store/ai;->a(Lcom/google/android/maps/driveabout/store/ag;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/ai;->a(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->d(I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->i()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_0
    :try_start_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ag;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/store/ai;->a(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/maps/driveabout/store/ay;I[B)V
    .locals 2

    monitor-enter p0

    int-to-long v0, p1

    :try_start_0
    invoke-interface {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    invoke-interface {p0, p2}, Lcom/google/android/maps/driveabout/store/ay;->a([B)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a([BII)V
    .locals 3

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method public static a([BIJ)V
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    invoke-static {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    add-int/lit8 v0, p1, 0x4

    long-to-int v1, p2

    invoke-static {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a([BII)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/store/af;Lcom/google/android/maps/driveabout/store/ad;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/store/ad;->b()[B

    move-result-object v1

    array-length v2, v1

    iget v3, p1, Lcom/google/android/maps/driveabout/store/af;->d:I

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    array-length v2, v1

    if-nez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/store/af;)[B
    .locals 3

    iget v0, p1, Lcom/google/android/maps/driveabout/store/af;->d:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/store/y;->a:[B

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget v0, p1, Lcom/google/android/maps/driveabout/store/af;->g:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->g(I)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v1

    iget v0, p1, Lcom/google/android/maps/driveabout/store/af;->d:I

    new-array v0, v0, [B

    iget v2, p1, Lcom/google/android/maps/driveabout/store/af;->b:I

    invoke-static {v1, v2, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ay;I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;Ljava/io/IOException;)V

    throw v0
.end method

.method public static b([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private b(I)Lcom/google/android/maps/driveabout/store/ag;
    .locals 4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    mul-int/lit16 v2, p1, 0x2000

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ab;->j:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/ay;)Lcom/google/android/maps/driveabout/store/ag;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/google/android/maps/driveabout/store/ad;)Lcom/google/android/maps/driveabout/store/ah;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/store/aa;->a(J)[I

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v3, v0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/store/aa;->a([II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ad;I)Lcom/google/android/maps/driveabout/store/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 12

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    new-instance v5, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/ac;

    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v2

    const-wide/16 v9, -0x1

    cmp-long v2, v2, v9

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/ac;->b:[B

    array-length v2, v2

    const/16 v3, 0xff

    if-le v2, v3, :cond_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget v2, v0, Lcom/google/android/maps/driveabout/store/ac;->c:I

    if-lez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    iget v0, v0, Lcom/google/android/maps/driveabout/store/ac;->c:I

    invoke-static {v2, v0, v7}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ad;ILjava/util/Map;)V

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v0, v0, Lcom/google/android/maps/driveabout/store/ai;->g:I

    if-ge v1, v0, :cond_d

    const/4 v2, 0x0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10, v1}, Lcom/google/android/maps/driveabout/store/aa;->a(JI)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/y;->b(I)Lcom/google/android/maps/driveabout/store/ag;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    :goto_3
    if-eqz v4, :cond_b

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v3

    if-ge v0, v3, :cond_a

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/store/ag;->b(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/google/android/maps/driveabout/store/y;->a:[B

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/store/ag;->c(I)I

    move-result v11

    if-lez v11, :cond_6

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/store/ag;->e(I)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v3

    :try_start_1
    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :cond_6
    new-instance v11, Lcom/google/android/maps/driveabout/store/ad;

    invoke-direct {v11, v9, v10, v3}, Lcom/google/android/maps/driveabout/store/ad;-><init>(J[B)V

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v2, p0, Lcom/google/android/maps/driveabout/store/y;->t:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/store/y;->t:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    :cond_7
    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/store/ag;->d(I)I

    move-result v2

    if-lez v2, :cond_8

    invoke-static {v11, v2, v7}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ad;ILjava/util/Map;)V

    :cond_8
    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/store/ag;->a(I)V

    const/4 v2, 0x1

    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeOldRecordsAndFilterInsertions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/y;->e(I)V

    move-object v4, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_a
    if-eqz v2, :cond_c

    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ag;Z)V

    :cond_b
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/store/y;->s:I

    goto :goto_6

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_7
    if-ltz v2, :cond_f

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/ac;

    iget-object v1, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, v0, Lcom/google/android/maps/driveabout/store/ac;->c:I

    add-int/2addr v1, v4

    const/16 v4, 0x1f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v1, Lcom/google/android/maps/driveabout/store/ac;

    iget-object v5, v0, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    const/4 v6, 0x0

    invoke-direct {v1, v5, v4, v0, v6}, Lcom/google/android/maps/driveabout/store/ac;-><init>(Lcom/google/android/maps/driveabout/store/ad;I[BLcom/google/android/maps/driveabout/store/z;)V

    move-object v0, v1

    :cond_e
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_7

    :catch_1
    move-exception v3

    goto :goto_5

    :cond_f
    return-object v3

    :cond_10
    move v0, v2

    goto/16 :goto_2
.end method

.method private b(ILjava/util/Locale;)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move v0, v8

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/store/ay;->a()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    new-instance v0, Lcom/google/android/maps/driveabout/store/ab;

    sget v1, Lcom/google/android/maps/driveabout/store/y;->b:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/store/ab;->c:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ab;->d:I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/store/ab;->e:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-boolean v5, v5, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/store/ab;-><init>(IIIIZILjava/util/Locale;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/ai;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/aa;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ab;Lcom/google/android/maps/driveabout/store/ai;Lcom/google/android/maps/driveabout/store/aa;Lcom/google/android/maps/driveabout/store/ay;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    iput-boolean v8, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    :cond_2
    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/store/af;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    :try_start_0
    iget v0, p1, Lcom/google/android/maps/driveabout/store/af;->g:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->b(I)Lcom/google/android/maps/driveabout/store/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v1

    iget v2, p1, Lcom/google/android/maps/driveabout/store/af;->h:I

    if-le v1, v2, :cond_0

    iget v1, p1, Lcom/google/android/maps/driveabout/store/af;->h:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ag;->e(I)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/maps/driveabout/store/af;->a:J

    iget-wide v3, p1, Lcom/google/android/maps/driveabout/store/af;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Lcom/google/android/maps/driveabout/store/af;->h:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/store/ag;->a(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    iget-wide v3, p1, Lcom/google/android/maps/driveabout/store/af;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/util/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->x:Lcom/google/android/maps/driveabout/store/ba;

    iget-wide v1, p1, Lcom/google/android/maps/driveabout/store/af;->a:J

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ag;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static b([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    return-void
.end method

.method static c([BII)I
    .locals 2

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static c([BI)J
    .locals 6

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/google/android/maps/driveabout/store/y;->a([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static c(JLjava/lang/String;)Lcom/google/android/maps/driveabout/store/ad;
    .locals 2

    sget-object v0, Lcom/google/android/maps/driveabout/store/y;->a:[B

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/googlenav/common/io/p;->a(Ljava/lang/String;)[B

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/store/ad;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/maps/driveabout/store/ad;-><init>(J[B)V

    return-object v1
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private c(Lcom/google/android/maps/driveabout/store/ad;)[B
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ad;)Lcom/google/android/maps/driveabout/store/af;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget v0, v1, Lcom/google/android/maps/driveabout/store/af;->g:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->g(I)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v2

    iget v0, v1, Lcom/google/android/maps/driveabout/store/af;->e:I

    new-array v0, v0, [B

    iget v3, v1, Lcom/google/android/maps/driveabout/store/af;->b:I

    iget v4, v1, Lcom/google/android/maps/driveabout/store/af;->d:I

    add-int/2addr v3, v4

    invoke-static {v2, v3, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ay;I[B)V

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v2

    iget v3, v1, Lcom/google/android/maps/driveabout/store/af;->f:I

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checksum mismatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " record ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/af;Ljava/io/IOException;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v3, v1, Lcom/google/android/maps/driveabout/store/af;->g:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->k()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/store/ai;->a(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private d(I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    mul-int/lit16 v2, p1, 0x400

    add-int/lit16 v2, v2, 0x4000

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/maps/driveabout/store/aa;->a(Lcom/google/android/maps/driveabout/store/ay;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(I)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    new-instance v0, Lcom/google/android/maps/driveabout/store/ag;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/store/ag;-><init>(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ag;Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->j:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic e()[B
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/y;->a:[B

    return-object v0
.end method

.method private f()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/store/ab;->d:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/store/ab;->e:I

    mul-int/2addr v0, v1

    return v0
.end method

.method private f(I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->e(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;)V

    return-void
.end method

.method private g(I)Lcom/google/android/maps/driveabout/store/ay;
    .locals 5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->d:Lcom/google/android/maps/driveabout/store/az;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/store/y;->h(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/google/android/maps/driveabout/store/az;->a(Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v2

    aput-object v2, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v0, v0, p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/af;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->b(Lcom/google/android/maps/driveabout/store/af;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private h(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private i()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v2, v3}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/store/ai;->a(Lcom/google/android/maps/driveabout/store/ay;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private j()Lcom/google/android/maps/driveabout/store/ag;
    .locals 8

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    const/4 v2, 0x0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ai;->g:I

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/store/ai;->c:[I

    aget v3, v3, v0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v5, v5, Lcom/google/android/maps/driveabout/store/ab;->e:I

    if-ge v3, v5, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/store/ai;->b:[I

    aget v3, v3, v0

    const v5, 0x7ffffff

    if-gt v3, v5, :cond_1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->b(I)Lcom/google/android/maps/driveabout/store/ag;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    :goto_1
    if-ne v2, v4, :cond_2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-boolean v3, v3, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    const/4 v5, 0x2

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/store/ai;->c()I

    move-result v5

    if-eq v5, v4, :cond_0

    invoke-direct {p0, v5}, Lcom/google/android/maps/driveabout/store/y;->f(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocateShardToUse: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_8

    :goto_3
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ai;->g:I

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/store/ai;->c(I)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_4
    if-ne v1, v4, :cond_3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget v2, v2, Lcom/google/android/maps/driveabout/store/ai;->g:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ab;->d:I

    if-ge v2, v3, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/ai;->b()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/store/aa;->b(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->h:Lcom/google/android/maps/driveabout/store/aa;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/store/aa;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_3
    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/store/ai;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/y;->e(I)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/store/ai;->c:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_6

    :cond_5
    new-instance v0, Lcom/google/android/maps/driveabout/store/ag;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/ag;-><init>(I)V

    :cond_6
    iput v1, p0, Lcom/google/android/maps/driveabout/store/y;->u:I

    return-object v0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    move-object v0, v2

    move v2, v4

    goto/16 :goto_1
.end method

.method private k()I
    .locals 4

    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->v:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/store/y;->v:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method private l()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->m()V

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/store/y;->w:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ai;->f()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->f()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/store/ai;->e()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v6, 0x3fd0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Write lock must be held"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    return v0
.end method

.method public final a(I)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/store/ab;->g:I

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/store/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/store/ab;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/store/ab;->c:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/store/ab;->d:I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/store/ab;->e:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-boolean v5, v5, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    iget-object v6, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-object v7, v6, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/store/ab;-><init>(IIIIZILjava/util/Locale;)V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/store/ab;->a([BI)I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/google/android/maps/driveabout/store/ay;->a(J)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v3, v1}, Lcom/google/android/maps/driveabout/store/ay;->b([B)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/store/ay;->b()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/y;->d()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final a(ILjava/util/Locale;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/y;->b(ILjava/util/Locale;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/y;->d()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 15

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/maps/driveabout/store/y;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->g()V

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/store/ac;

    iget-object v5, v1, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    array-length v5, v5

    iget-object v1, v1, Lcom/google/android/maps/driveabout/store/ac;->b:[B

    array-length v1, v1

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v13, v1, [B

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->j()Lcom/google/android/maps/driveabout/store/ag;

    move-result-object v3

    new-instance v2, Lcom/google/android/maps/driveabout/store/ae;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/ag;->a()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/store/y;->g(I)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/ag;->c()I

    move-result v5

    invoke-direct {v2, v1, v5, v13}, Lcom/google/android/maps/driveabout/store/ae;-><init>(Lcom/google/android/maps/driveabout/store/ay;I[B)V

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/store/ac;

    move-object v8, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/store/ab;->e:I

    if-ge v1, v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/store/ag;->c()I

    move-result v1

    const v4, 0x7ffffff

    if-le v1, v4, :cond_4

    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ae;Lcom/google/android/maps/driveabout/store/ag;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->j()Lcom/google/android/maps/driveabout/store/ag;

    move-result-object v2

    new-instance v1, Lcom/google/android/maps/driveabout/store/ae;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ag;->a()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/store/y;->g(I)Lcom/google/android/maps/driveabout/store/ay;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ag;->c()I

    move-result v4

    invoke-direct {v1, v3, v4, v13}, Lcom/google/android/maps/driveabout/store/ae;-><init>(Lcom/google/android/maps/driveabout/store/ay;I[B)V

    move-object v11, v1

    move-object v12, v2

    :goto_3
    iget-object v1, v8, Lcom/google/android/maps/driveabout/store/ac;->b:[B

    invoke-virtual {v11, v1}, Lcom/google/android/maps/driveabout/store/ae;->a([B)V

    iget-object v1, v8, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    invoke-virtual {v11, v1}, Lcom/google/android/maps/driveabout/store/ae;->a([B)V

    new-instance v1, Lcom/google/android/maps/driveabout/store/af;

    iget-object v2, v8, Lcom/google/android/maps/driveabout/store/ac;->a:Lcom/google/android/maps/driveabout/store/ad;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/store/ad;->a()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/store/ag;->c()I

    move-result v4

    iget-object v5, v8, Lcom/google/android/maps/driveabout/store/ac;->b:[B

    array-length v5, v5

    iget-object v6, v8, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    array-length v6, v6

    iget v7, v8, Lcom/google/android/maps/driveabout/store/ac;->c:I

    iget-object v9, v8, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    const/4 v10, 0x0

    iget-object v8, v8, Lcom/google/android/maps/driveabout/store/ac;->d:[B

    array-length v8, v8

    invoke-static {v9, v10, v8}, Lcom/google/android/maps/driveabout/store/y;->c([BII)I

    move-result v8

    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/store/ag;->a()I

    move-result v9

    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/store/ag;->b()I

    move-result v10

    invoke-direct/range {v1 .. v10}, Lcom/google/android/maps/driveabout/store/af;-><init>(JIIIIIII)V

    invoke-virtual {v12, v1}, Lcom/google/android/maps/driveabout/store/ag;->a(Lcom/google/android/maps/driveabout/store/af;)V

    move-object v2, v11

    move-object v3, v12

    goto :goto_2

    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ae;Lcom/google/android/maps/driveabout/store/ag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_4
    move-object v11, v2

    move-object v12, v3

    goto :goto_3
.end method

.method public final a(J)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/store/y;->a(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->h()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/store/y;->c(JLjava/lang/String;)Lcom/google/android/maps/driveabout/store/ad;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->c(Lcom/google/android/maps/driveabout/store/ad;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->h()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->h()V

    throw v0
.end method

.method public final b()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/store/ab;->h:Ljava/util/Locale;

    return-object v0
.end method

.method public final b(JLjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/maps/driveabout/store/y;->c(JLjava/lang/String;)Lcom/google/android/maps/driveabout/store/ad;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/store/y;->a(Lcom/google/android/maps/driveabout/store/ad;)Lcom/google/android/maps/driveabout/store/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->h()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->h()V

    throw v0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->g:Lcom/google/android/maps/driveabout/store/ai;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/ai;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/y;->n:Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->e:Lcom/google/android/maps/driveabout/store/ay;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/store/ay;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    const/4 v1, 0x0

    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v2, v2, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :try_start_5
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/store/ay;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    :try_start_6
    iget-object v2, p0, Lcom/google/android/maps/driveabout/store/y;->i:[Lcom/google/android/maps/driveabout/store/ay;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_3
    :try_start_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->m:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/y;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/y;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " locale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/y;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget-boolean v1, v1, Lcom/google/android/maps/driveabout/store/ab;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/y;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/store/y;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max_shards:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/y;->f:Lcom/google/android/maps/driveabout/store/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/store/ab;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
