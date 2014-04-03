.class public final Lcom/google/glass/util/bm;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:J


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lcom/google/glass/net/f;

.field private g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/util/bm;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/glass/net/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    iput-object p1, p0, Lcom/google/glass/util/bm;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/util/bm;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/util/bm;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/google/glass/util/bm;->f:Lcom/google/glass/net/f;

    return-void
.end method

.method private a(Ljava/io/DataInputStream;)Lcom/google/protobuf/nano/b;
    .locals 3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-object v0, p0, Lcom/google/glass/util/bm;->f:Lcom/google/glass/net/f;

    invoke-virtual {v0, v1}, Lcom/google/glass/net/f;->a([B)Lcom/google/protobuf/nano/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/protobuf/nano/b;Ljava/io/DataOutputStream;)V
    .locals 3

    invoke-static {p0}, Lcom/google/protobuf/nano/b;->toByteArray(Lcom/google/protobuf/nano/b;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-object v0, p0, Lcom/google/glass/util/bm;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/util/bm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 5

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-object v0, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/bm;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/util/bn;

    invoke-direct {v1, p0}, Lcom/google/glass/util/bn;-><init>(Lcom/google/glass/util/bm;)V

    sget-wide v2, Lcom/google/glass/util/bm;->b:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-object v0, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/bm;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/util/bm;->d:Ljava/lang/String;

    const v4, 0x8000

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/b;

    invoke-static {v0, v4}, Lcom/google/glass/util/bm;->a(Lcom/google/protobuf/nano/b;Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    sget-object v0, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " proto(s) to disk."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    const-string v2, "Could not close protos file after write."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v2, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    const-string v4, "Could not write protos."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    const-string v2, "Could not close protos file after write."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_2
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    const-string v4, "Could not close protos file after write."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    const-string v1, "No protos to save to disk."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final c()Ljava/util/List;
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/bm;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/util/bm;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v2, v3

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    invoke-direct {p0, v5}, Lcom/google/glass/util/bm;->a(Ljava/io/DataInputStream;)Lcom/google/protobuf/nano/b;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v2

    move v2, v4

    goto :goto_0

    :cond_0
    :try_start_2
    sget-object v2, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " persisted protos."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v2, v5, v6}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/util/bm;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/glass/util/bm;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_1
    iget-object v2, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    return-object v0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    const-string v5, "Could not close file after read."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-interface {v2, v5, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    const-string v5, "Could not read protos from disk."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v2, v5, v6}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/util/bm;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/util/bm;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    sget-object v2, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    const-string v5, "Could not close file after read."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-interface {v2, v5, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_2
    throw v0

    :catch_4
    move-exception v1

    sget-object v2, Lcom/google/glass/util/bm;->a:Lcom/google/glass/logging/i;

    const-string v5, "Could not close file after read."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-interface {v2, v5, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-object v0, p0, Lcom/google/glass/util/bm;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/util/bm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/glass/util/bm;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
