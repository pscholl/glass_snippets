.class public Lcom/google/glass/util/ah;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;

.field private static e:Lcom/google/glass/util/ah;


# instance fields
.field private c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/util/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ah;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/util/ah;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ah;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/ah;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/google/glass/util/ah;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/ah;->b:Lcom/google/glass/logging/i;

    const-string v1, "Directory told to manage, %s, does not exist -- making it!"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/util/ah;->d:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/ah;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/ah;->b:Lcom/google/glass/logging/i;

    const-string v1, "Error creating directory: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/util/ah;->d:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a([B)Lcom/google/glass/util/aj;
    .locals 1

    new-instance v0, Lcom/google/glass/util/ai;

    invoke-direct {v0, p0}, Lcom/google/glass/util/ai;-><init>([B)V

    return-object v0
.end method

.method public static a(Lcom/google/glass/util/ah;)V
    .locals 0

    sput-object p0, Lcom/google/glass/util/ah;->e:Lcom/google/glass/util/ah;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/glass/util/ah;->c:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/ah;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final a(Lcom/google/glass/util/aj;Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/glass/util/ah;->a()J

    move-result-wide v5

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p1, v1}, Lcom/google/glass/util/aj;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    sget-object v2, Lcom/google/glass/util/ah;->b:Lcom/google/glass/logging/i;

    const-string v7, "Saved content to [%s] into file cache at %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-interface {v2, v7, v8}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/util/ah;->b:Lcom/google/glass/logging/i;

    const-string v2, "Failed to close stream."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v5}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    sget-object v2, Lcom/google/glass/util/ah;->b:Lcom/google/glass/logging/i;

    const-string v5, "Failed to write content."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v2, v0, v5, v6}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    move v0, v3

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/google/glass/util/ah;->b:Lcom/google/glass/logging/i;

    const-string v2, "Failed to close stream."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v5}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/google/glass/util/ah;->b:Lcom/google/glass/logging/i;

    const-string v4, "Failed to close stream."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v1, v4, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method
