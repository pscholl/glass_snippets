.class public final Lcom/google/glass/util/CachedFilesManager;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/google/glass/logging/i;

.field private static m:Lcom/google/glass/util/CachedFilesManager;


# instance fields
.field public final a:I

.field private final c:Ljava/io/File;

.field private final d:Ljava/util/Map;

.field private final e:Lcom/google/glass/util/ah;

.field private final f:J

.field private final g:J

.field private final h:I

.field private final i:I

.field private j:I

.field private k:J

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->c:Ljava/io/File;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    new-instance v0, Lcom/google/glass/util/ah;

    invoke-direct {v0, p1}, Lcom/google/glass/util/ah;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->e:Lcom/google/glass/util/ah;

    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->a:I

    iput-wide p2, p0, Lcom/google/glass/util/CachedFilesManager;->f:J

    const/4 v0, 0x1

    shr-long v0, p2, v0

    iput-wide v0, p0, Lcom/google/glass/util/CachedFilesManager;->g:J

    iput p4, p0, Lcom/google/glass/util/CachedFilesManager;->h:I

    shr-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->i:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->l:I

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/j;

    invoke-direct {v1, p0}, Lcom/google/glass/util/j;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Lcom/google/glass/util/CachedFilesManager;
    .locals 1

    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->m:Lcom/google/glass/util/CachedFilesManager;

    return-object v0
.end method

.method private a(IJI)V
    .locals 6

    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->l:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->l:I

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v2, "Bookkeeping %s has become corrupt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->c:Ljava/io/File;

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(JI)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/util/CachedFilesManager;->a(JIZ)V

    return-void
.end method

.method private a(JIZ)V
    .locals 9

    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/f/a;->a(Z)V

    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/l;

    invoke-direct {v1, p0}, Lcom/google/glass/util/l;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v5, "Can\'t delete file %s which is still in use"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    iget v4, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    sget-object v4, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v5, "delete file %s, sizeInBytes=%s, numOfFiles=%s, targetSize=%s, targetCount=%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    iget-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x2

    iget v7, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    cmp-long v0, v4, p1

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    if-gt v0, p3, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-eqz p4, :cond_0

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    iget-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    iget-wide v6, p0, Lcom/google/glass/util/CachedFilesManager;->f:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    iget v4, p0, Lcom/google/glass/util/CachedFilesManager;->h:I

    if-gt v0, v4, :cond_0

    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v3, "Exit trimming due to timeout: %sms, size = %s, count = %s "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static a(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0

    sput-object p0, Lcom/google/glass/util/CachedFilesManager;->m:Lcom/google/glass/util/CachedFilesManager;

    return-void
.end method

.method private a(J)Z
    .locals 4

    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    sub-long/2addr v2, p1

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->i:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->a(JI)V

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->e()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v1, "increaseUsage with null filePath"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic c()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic c(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->f()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v1, "releaseUsage with null filePath"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_3

    :cond_1
    sget-object v2, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v3, "Bad releasing: usageCount = %s found for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p1, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static d()J
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    :cond_0
    sget-object v2, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v3, "Scanning %s for the amount of files and the total size of files ..."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/util/CachedFilesManager;->c:Ljava/io/File;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long v4, v5, v7

    iput-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f()V
    .locals 6

    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    iget-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->f:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    iget v2, p0, Lcom/google/glass/util/CachedFilesManager;->h:I

    if-le v0, v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->g:J

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->i:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->a(JI)V

    :cond_1
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->l:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->NONE:Lcom/google/glass/util/CachedFilesManager$Type;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager$Type;->get(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/n;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/google/glass/util/CachedFilesManager;->a(Ljava/lang/String;Lcom/google/glass/util/n;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/glass/util/n;)Ljava/lang/Object;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v1, "load with null filePath"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->b(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/google/glass/util/n;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->e:Lcom/google/glass/util/ah;

    invoke-virtual {v2}, Lcom/google/glass/util/ah;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v2, "Failed to load [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/glass/util/CachedFilesManager$Type;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/glass/util/CachedFilesManager$Type;)V
    .locals 8

    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v2, "clearCache"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/util/CachedFilesManager$Type;->get(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;

    move-result-object v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v4, "Can\'t delete file %s which is still in use"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-wide v3, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    iget v3, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    sget-object v3, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v4, "delete file %s, sizeInBytes=%s, numOfFiles=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    iget-wide v6, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    iget v6, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/aj;)Z
    .locals 12

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->e()V

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-direct {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->b(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    neg-long v5, v5

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/glass/util/CachedFilesManager;->a(IJI)V

    :cond_0
    iget-object v4, p0, Lcom/google/glass/util/CachedFilesManager;->e:Lcom/google/glass/util/ah;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lcom/google/glass/util/ah;->a(Lcom/google/glass/util/aj;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p3}, Lcom/google/glass/util/aj;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    add-long/2addr v4, v6

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->d()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_2

    sget-object v6, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v7, "Space may be full for content of size %s. Trim and retry."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {p3}, Lcom/google/glass/util/aj;->a()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v4, v5}, Lcom/google/glass/util/CachedFilesManager;->a(J)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v3, "No space to trim for content of size %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p3}, Lcom/google/glass/util/aj;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->c(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/util/CachedFilesManager;->e:Lcom/google/glass/util/ah;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lcom/google/glass/util/ah;->a(Lcom/google/glass/util/aj;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1b0

    invoke-static {v0, v4}, Lcom/google/glass/e/c;->a(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/glass/util/CachedFilesManager;->a(IJI)V

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lcom/google/glass/util/k;

    invoke-direct {v3, p0}, Lcom/google/glass/util/k;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->c(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v4, Lcom/google/glass/util/CachedFilesManager;->b:Lcom/google/glass/logging/i;

    const-string v5, "Failed to change mode on file %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v2}, Lcom/google/glass/util/CachedFilesManager;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 6

    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->d:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->k:J

    iget-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->f:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->j:I

    iget v2, p0, Lcom/google/glass/util/CachedFilesManager;->h:I

    if-le v0, v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->g:J

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->i:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/glass/util/CachedFilesManager;->a(JIZ)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->b(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->e:Lcom/google/glass/util/ah;

    invoke-virtual {v0}, Lcom/google/glass/util/ah;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    invoke-direct {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->c(Ljava/lang/String;)V

    throw v0
.end method
