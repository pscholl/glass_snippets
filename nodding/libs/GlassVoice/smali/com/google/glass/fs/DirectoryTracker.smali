.class public Lcom/google/glass/fs/DirectoryTracker;
.super Landroid/os/FileObserver;
.source "DirectoryTracker.java"


# static fields
.field private static final OBSERVER_MASK:I = 0xfc0

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final direntCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackedDir:Ljava/io/File;

.field private tracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const/16 v0, 0xfc0

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    .line 49
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a directory!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    .line 55
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/fs/DirectoryTracker$1;

    invoke-direct {v1, p0}, Lcom/google/glass/fs/DirectoryTracker$1;-><init>(Lcom/google/glass/fs/DirectoryTracker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method private cacheNestedDirents(Ljava/io/File;)V
    .locals 14
    .parameter "root"

    .prologue
    .line 161
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 164
    .local v4, startTime:J
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 165
    .local v1, direntsToCheck:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 167
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 168
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 170
    .local v0, dirent:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 174
    :cond_0
    iget-object v6, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v0           #dirent:Ljava/io/File;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 178
    .local v2, endTime:J
    sget-object v6, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Took %ds to iterate [%s]."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sub-long v10, v2, v4

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 5
    .parameter "filename"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Querying stopped instance on [%s] for filename [%s] -- results will be stale!"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    return v0
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 7
    .parameter "event"
    .parameter "path"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 71
    const-string v1, "%s%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, absolutePath:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 100
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unhandled event [%d] -- BUG!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :goto_0
    return-void

    .line 77
    :sswitch_0
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "File [%s] ADDED to [%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :sswitch_1
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "File [%s] REMOVED from [%s]"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :sswitch_2
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Monitored directory [%s] was deleted -- monitoring stopped!"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-boolean v5, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    goto :goto_0

    .line 95
    :sswitch_3
    sget-object v1, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Monitored directory [%s] has moved -- file paths will be different!"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    goto :goto_0

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_2
        0x800 -> :sswitch_3
    .end sparse-switch
.end method

.method public declared-synchronized start()Z
    .locals 5

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 142
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Asked to start tracking path [%s], but we\'ve already started."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :goto_0
    monitor-exit p0

    return v0

    .line 148
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->direntCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/fs/DirectoryTracker;->startWatching()V

    .line 150
    iget-object v0, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/google/glass/fs/DirectoryTracker;->cacheNestedDirents(Ljava/io/File;)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    .line 153
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 5

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Lcom/google/glass/fs/DirectoryTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Asked to stop tracking path [%s], but we\'ve already stopped."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/fs/DirectoryTracker;->trackedDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/fs/DirectoryTracker;->stopWatching()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/fs/DirectoryTracker;->tracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
