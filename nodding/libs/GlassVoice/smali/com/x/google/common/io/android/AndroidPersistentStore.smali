.class public Lcom/x/google/common/io/android/AndroidPersistentStore;
.super Lcom/x/google/common/io/BasePersistentStore;

# interfaces
.implements Lcom/x/google/common/io/PersistentStore;
.implements Lcom/x/google/common/io/ProcessLockProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x1000

.field private static final PREFIX:Ljava/lang/String; = "DATA_"


# instance fields
.field private context:Landroid/content/Context;

.field private final fileLockNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/x/google/common/io/BasePersistentStore;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    iput-object p1, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/x/google/common/io/android/AndroidPersistentStore;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/FileOutputStream;)Z
    .locals 1

    invoke-static {p0}, Lcom/x/google/common/io/android/AndroidPersistentStore;->closeFileOutputStreamSilently(Ljava/io/FileOutputStream;)Z

    move-result v0

    return v0
.end method

.method private static closeFileOutputStreamSilently(Ljava/io/FileOutputStream;)Z
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATA_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unMakeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "DATA_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteAllBlocks(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-object v2, v1, v0

    invoke-static {p1}, Lcom/x/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1
.end method

.method public deleteBlock(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/x/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteBlockX(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/x/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/x/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/x/google/common/io/PersistentStore$PersistentStoreException;

    const-string v1, "Delete failed."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/x/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    return-void
.end method

.method public getBlockSize(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/x/google/common/io/android/AndroidPersistentStore;->getDataSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataSize(Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/x/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    new-array v5, v0, [Ljava/lang/String;

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_1

    aget-object v3, v4, v0

    invoke-static {v3}, Lcom/x/google/common/io/android/AndroidPersistentStore;->unMakeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-object v6, v5, v2

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public lock(Ljava/lang/String;)Lcom/x/google/common/io/ProcessLock;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/x/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v5

    new-instance v1, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;-><init>(Lcom/x/google/common/io/android/AndroidPersistentStore;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    monitor-exit v4

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lcom/x/google/common/io/android/AndroidPersistentStore;->closeFileOutputStreamSilently(Ljava/io/FileOutputStream;)Z

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public readBlock(Ljava/lang/String;)[B
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/x/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-ge v4, v3, :cond_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public tryLock(Ljava/lang/String;)Lcom/x/google/common/io/ProcessLock;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/x/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v1, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/x/google/common/io/android/AndroidPersistentStore$AndroidFileLock;-><init>(Lcom/x/google/common/io/android/AndroidPersistentStore;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    monitor-exit v4

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    move-object v2, v1

    :cond_1
    :goto_2
    invoke-static {v2}, Lcom/x/google/common/io/android/AndroidPersistentStore;->closeFileOutputStreamSilently(Ljava/io/FileOutputStream;)Z

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public writeBlock([BLjava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/x/google/common/io/android/AndroidPersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_0
    .catch Lcom/x/google/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/x/google/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/x/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    const/4 v3, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array p1, v0, [B

    :cond_0
    iget-object v0, p0, Lcom/x/google/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/x/google/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/x/google/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/x/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/x/google/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/x/google/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
