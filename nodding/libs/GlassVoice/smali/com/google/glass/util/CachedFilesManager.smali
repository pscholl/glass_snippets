.class public Lcom/google/glass/util/CachedFilesManager;
.super Ljava/lang/Object;
.source "CachedFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;,
        Lcom/google/glass/util/CachedFilesManager$Loader;,
        Lcom/google/glass/util/CachedFilesManager$Type;
    }
.end annotation


# static fields
.field private static final DELETION_BUDGET_MS:J = 0x3e8L

.field private static final MODE_AID_PRIVATE:I = 0x1b0

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static sharedInstance:Lcom/google/glass/util/CachedFilesManager;


# instance fields
.field private final dir:Ljava/io/File;

.field public final dirPathLength:I

.field private final filePathToUsageCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fileSaver:Lcom/google/glass/util/FileSaver;

.field private final limitInByte:J

.field private final limitInCount:I

.field private numOfFiles:I

.field private pendingTrimmings:I

.field private sizeInBytes:J

.field private final targetLimitInByte:J

.field private final targetLimitInCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2
    .parameter "dir"
    .parameter "limitInByte"
    .parameter "limitInCount"

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    .line 158
    new-instance v0, Lcom/google/glass/util/FileSaver;

    invoke-direct {v0, p1}, Lcom/google/glass/util/FileSaver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    .line 159
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->dirPathLength:I

    .line 161
    iput-wide p2, p0, Lcom/google/glass/util/CachedFilesManager;->limitInByte:J

    .line 163
    const/4 v0, 0x1

    shr-long v0, p2, v0

    iput-wide v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInByte:J

    .line 165
    iput p4, p0, Lcom/google/glass/util/CachedFilesManager;->limitInCount:I

    .line 167
    shr-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInCount:I

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 170
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    .line 175
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/CachedFilesManager$1;

    invoke-direct {v1, p0}, Lcom/google/glass/util/CachedFilesManager$1;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->setupFileBookkeeping()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->trimCachedFilesIfNeeded()V

    return-void
.end method

.method private getAvailableExternalStorageSpaceInByte()J
    .locals 5

    .prologue
    .line 453
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, stat:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    .line 458
    .end local v0           #stat:Landroid/os/StatFs;
    :goto_0
    return-wide v1

    .line 455
    :catch_0
    move-exception v1

    .line 458
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/google/glass/util/CachedFilesManager;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->sharedInstance:Lcom/google/glass/util/CachedFilesManager;

    return-object v0
.end method

.method public static setSharedInstance(Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 184
    sput-object p0, Lcom/google/glass/util/CachedFilesManager;->sharedInstance:Lcom/google/glass/util/CachedFilesManager;

    .line 185
    return-void
.end method

.method private setupFileBookkeeping()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 465
    iget-object v6, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v6

    .line 466
    :try_start_0
    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    if-ltz v5, :cond_0

    iget-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    cmp-long v5, v7, v9

    if-gez v5, :cond_2

    .line 467
    :cond_0
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Scanning %s for the amount of files and the total size of files ..."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    aput-object v10, v8, v9

    invoke-interface {v5, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 469
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 470
    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 473
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 474
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 475
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 476
    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 477
    iget-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 474
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    monitor-exit v6

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private trimCachedFilesIfNeeded()V
    .locals 6

    .prologue
    .line 574
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 576
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    iget-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->limitInByte:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    iget v2, p0, Lcom/google/glass/util/CachedFilesManager;->limitInCount:I

    if-le v0, v2, :cond_1

    .line 577
    :cond_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInByte:J

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInCount:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->trimTo(JI)V

    .line 579
    :cond_1
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    .line 580
    monitor-exit v1

    .line 581
    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private trimTo(JI)V
    .locals 1
    .parameter "targetSize"
    .parameter "targetCount"

    .prologue
    .line 585
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/util/CachedFilesManager;->trimTo(JIZ)V

    .line 586
    return-void
.end method

.method private trimTo(JIZ)V
    .locals 11
    .parameter "targetSize"
    .parameter "targetCount"
    .parameter "allowTimeout"

    .prologue
    .line 590
    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 591
    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 596
    .local v1, files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    new-instance v5, Lcom/google/glass/util/CachedFilesManager$4;

    invoke-direct {v5, p0}, Lcom/google/glass/util/CachedFilesManager$4;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 610
    .local v3, startTime:J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 611
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 615
    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 616
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Can\'t delete file %s which is still in use"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 619
    :cond_1
    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 620
    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 621
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 623
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "delete file %s, sizeInBytes=%s, numOfFiles=%s, targetSize=%s, targetCount=%s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v9, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget v9, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    cmp-long v5, v5, p1

    if-gtz v5, :cond_3

    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    if-gt v5, p3, :cond_3

    .line 642
    .end local v0           #file:Ljava/io/File;
    :cond_2
    :goto_1
    return-void

    .line 633
    .restart local v0       #file:Ljava/io/File;
    :cond_3
    if-eqz p4, :cond_0

    const-wide/16 v5, 0x3e8

    add-long/2addr v5, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    iget-wide v7, p0, Lcom/google/glass/util/CachedFilesManager;->limitInByte:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    iget v6, p0, Lcom/google/glass/util/CachedFilesManager;->limitInCount:I

    if-gt v5, v6, :cond_0

    .line 637
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Exit trimming due to timeout: %sms, size = %s, count = %s "

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v9, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget v9, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private updateFileBookkeeping(IJI)V
    .locals 6
    .parameter "filesDelta"
    .parameter "bytesDelta"
    .parameter "trimmingsDelta"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 490
    :try_start_0
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 491
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    add-long/2addr v2, p2

    iput-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 492
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    .line 495
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    if-ltz v0, :cond_0

    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 496
    :cond_0
    sget-object v0, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bookkeeping %s has become corrupt"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    :cond_1
    monitor-exit v1

    .line 499
    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearCache(Lcom/google/glass/util/CachedFilesManager$Type;)V
    .locals 10
    .parameter "type"

    .prologue
    .line 532
    iget-object v4, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v4

    .line 533
    :try_start_0
    sget-object v3, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "clearCache"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    iget-object v3, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 535
    .local v1, files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 536
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/util/CachedFilesManager$Type;->get(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 544
    iget-object v3, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 545
    sget-object v3, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Can\'t delete file %s which is still in use"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 555
    .end local v0           #file:Ljava/io/File;
    .end local v1           #files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 549
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    .line 550
    iget v3, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    .line 551
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 552
    sget-object v3, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "delete file %s, sizeInBytes=%s, numOfFiles=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 555
    .end local v0           #file:Ljava/io/File;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    return-void
.end method

.method public contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z
    .locals 7
    .parameter "type"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, filePath:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 274
    :goto_0
    return v2

    .line 266
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 274
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v2}, Lcom/google/glass/util/FileSaver;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    const/4 v2, 0x1

    .line 274
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #file:Ljava/io/File;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v2
.end method

.method public disableMockModifiedTimeForTest()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Lcom/google/glass/util/FileSaver;->disableMockModifiedTimeForTest()V

    .line 209
    return-void
.end method

.method public enableMockModifiedTimeForTest()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Lcom/google/glass/util/FileSaver;->enableMockModifiedTimeForTest()V

    .line 205
    return-void
.end method

.method public getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    .line 197
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const/4 v1, 0x0

    .line 200
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/util/CachedFilesManager$Type;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->NONE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 286
    :goto_0
    return-object v1

    .line 285
    :cond_0
    iget v1, p0, Lcom/google/glass/util/CachedFilesManager;->dirPathLength:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager$Type;->get(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;

    move-result-object v1

    goto :goto_0
.end method

.method public increaseUsage(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    .line 215
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 217
    if-nez p1, :cond_0

    .line 218
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "increaseUsage with null filePath"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v2

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 224
    .local v0, usageCount:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 225
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 229
    :goto_1
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    monitor-exit v2

    goto :goto_0

    .end local v0           #usageCount:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 227
    .restart local v0       #usageCount:Ljava/lang/Integer;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized load(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;
    .locals 1
    .parameter "type"
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/glass/util/CachedFilesManager$Type;",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/CachedFilesManager$Loader",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 311
    .local p3, loader:Lcom/google/glass/util/CachedFilesManager$Loader;,"Lcom/google/glass/util/CachedFilesManager$Loader<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;
    .locals 5
    .parameter "filePath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/CachedFilesManager$Loader",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, loader:Lcom/google/glass/util/CachedFilesManager$Loader;,"Lcom/google/glass/util/CachedFilesManager$Loader<TT;>;"
    const/4 v3, 0x0

    .line 290
    if-nez p1, :cond_0

    .line 291
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "load with null filePath"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    const/4 v0, 0x0

    .line 306
    :goto_0
    return-object v0

    .line 296
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 297
    invoke-interface {p2, p1}, Lcom/google/glass/util/CachedFilesManager$Loader;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, result:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_1

    .line 300
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v2}, Lcom/google/glass/util/FileSaver;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to load [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 306
    .end local v0           #result:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v1
.end method

.method public noPendingTrimmings()Z
    .locals 2

    .prologue
    .line 503
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 504
    :try_start_0
    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->pendingTrimmings:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseUsage(Ljava/lang/String;)V
    .locals 6
    .parameter "filePath"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 237
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 239
    if-nez p1, :cond_0

    .line 240
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "releaseUsage with null filePath"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v2

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 246
    .local v0, usageCount:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_3

    .line 247
    :cond_1
    sget-object v1, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Bad releasing: usageCount = %s found for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_2
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #usageCount:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 249
    .restart local v0       #usageCount:Ljava/lang/Integer;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 250
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 251
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 252
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z
    .locals 11
    .parameter "type"
    .parameter "fileName"
    .parameter "saver"

    .prologue
    .line 390
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 393
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->setupFileBookkeeping()V

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, path:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/google/glass/util/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 399
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, cacheFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 403
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    neg-long v6, v6

    const/4 v8, 0x0

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/glass/util/CachedFilesManager;->updateFileBookkeeping(IJI)V

    .line 406
    :cond_0
    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Lcom/google/glass/util/FileSaver;->write(Lcom/google/glass/util/FileSaver$Saver;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 408
    invoke-interface {p3}, Lcom/google/glass/util/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    add-long v2, v5, v7

    .line 409
    .local v2, estimatedSpace:J
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->getAvailableExternalStorageSpaceInByte()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_2

    .line 410
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Space may be full for content of size %s. Trim and retry."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {p3}, Lcom/google/glass/util/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    invoke-virtual {p0, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->trimBySize(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 414
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "No space to trim for content of size %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {p3}, Lcom/google/glass/util/FileSaver$Saver;->getEstimatedSizeBytes()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    const/4 v5, 0x0

    .line 447
    invoke-virtual {p0, v4}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    .end local v2           #estimatedSpace:J
    :goto_0
    return v5

    .line 417
    .restart local v2       #estimatedSpace:J
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/glass/util/CachedFilesManager;->fileSaver:Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Lcom/google/glass/util/FileSaver;->write(Lcom/google/glass/util/FileSaver$Saver;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    .line 418
    const/4 v5, 0x0

    .line 447
    invoke-virtual {p0, v4}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    const/4 v5, 0x0

    .line 447
    invoke-virtual {p0, v4}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    .end local v2           #estimatedSpace:J
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1b0

    invoke-static {v5, v6}, Lcom/google/glass/fs/Filesystem;->changeMode(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 434
    :goto_1
    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/glass/util/CachedFilesManager;->updateFileBookkeeping(IJI)V

    .line 438
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/google/glass/util/CachedFilesManager$3;

    invoke-direct {v6, p0}, Lcom/google/glass/util/CachedFilesManager$3;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 445
    const/4 v5, 0x1

    .line 447
    invoke-virtual {p0, v4}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    sget-object v5, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to change mode on file %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 447
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v4}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v5
.end method

.method public saveLink(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "type"
    .parameter "originalFilePath"
    .parameter "newFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 330
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 333
    invoke-direct {p0}, Lcom/google/glass/util/CachedFilesManager;->setupFileBookkeeping()V

    .line 335
    invoke-virtual {p0, p1, p3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, newPath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->increaseUsage(Ljava/lang/String;)V

    .line 339
    invoke-static {p2}, Lcom/google/glass/fs/Filesystem;->maybeTranslatePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 345
    .local v3, sourcePath:Ljava/lang/String;
    :try_start_1
    invoke-static {v3, v1}, Lcom/google/glass/fs/Filesystem;->createLink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    const/16 v4, 0x1b0

    :try_start_2
    invoke-static {v1, v4}, Lcom/google/glass/fs/Filesystem;->changeMode(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 361
    :goto_0
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v2, originalFile:Ljava/io/File;
    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/google/glass/util/CachedFilesManager;->updateFileBookkeeping(IJI)V

    .line 366
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/google/glass/util/CachedFilesManager$2;

    invoke-direct {v5, p0}, Lcom/google/glass/util/CachedFilesManager$2;-><init>(Lcom/google/glass/util/CachedFilesManager;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 375
    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    return v8

    .line 346
    .end local v2           #originalFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to link from %s to %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 375
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #sourcePath:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v1}, Lcom/google/glass/util/CachedFilesManager;->releaseUsage(Ljava/lang/String;)V

    throw v4

    .line 356
    .restart local v3       #sourcePath:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 357
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_5
    sget-object v4, Lcom/google/glass/util/CachedFilesManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Non-fatal error: Unable to change mode on file %s:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public trimBySize(J)Z
    .locals 4
    .parameter "size"

    .prologue
    .line 517
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    .line 519
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    sub-long/2addr v2, p1

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInCount:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->trimTo(JI)V

    .line 520
    const/4 v0, 0x1

    monitor-exit v1

    .line 522
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trimToWithoutTimeout()V
    .locals 6

    .prologue
    .line 565
    iget-object v1, p0, Lcom/google/glass/util/CachedFilesManager;->filePathToUsageCount:Ljava/util/Map;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->sizeInBytes:J

    iget-wide v4, p0, Lcom/google/glass/util/CachedFilesManager;->limitInByte:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->numOfFiles:I

    iget v2, p0, Lcom/google/glass/util/CachedFilesManager;->limitInCount:I

    if-le v0, v2, :cond_1

    .line 567
    :cond_0
    iget-wide v2, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInByte:J

    iget v0, p0, Lcom/google/glass/util/CachedFilesManager;->targetLimitInCount:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/glass/util/CachedFilesManager;->trimTo(JIZ)V

    .line 569
    :cond_1
    monitor-exit v1

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
