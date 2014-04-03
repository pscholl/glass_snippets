.class public Lcom/google/glass/util/FileSaver;
.super Ljava/lang/Object;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/FileSaver$Saver;
    }
.end annotation


# static fields
.field private static final COPY_SAVER_BUFFER_SIZE:I = 0x100000

.field private static final MOCK_MODIFIED_TIME_STEP_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static sharedInstance:Lcom/google/glass/util/FileSaver;


# instance fields
.field private final dir:Ljava/io/File;

.field private mockModifiedTimeForTest:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/util/FileSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/FileSaver;->TAG:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/google/glass/util/FileSaver;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    .line 133
    iget-object v0, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Directory told to manage, %s, does not exist -- making it!"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Error creating directory: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Ljava/io/FileOutputStream;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/google/glass/util/FileSaver;->copyWithChannels(Ljava/io/File;Ljava/io/FileOutputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/util/FileSaver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static copyWithChannels(Ljava/io/File;Ljava/io/FileOutputStream;)J
    .locals 8
    .parameter "inputFile"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v6, 0x0

    .line 114
    .local v6, input:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v6           #input:Ljava/io/FileInputStream;
    .local v7, input:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 116
    .local v1, source:Ljava/nio/channels/FileChannel;
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 117
    .local v0, target:Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 119
    if-eqz v7, :cond_0

    .line 120
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-wide v2

    .line 119
    .end local v0           #target:Ljava/nio/channels/FileChannel;
    .end local v1           #source:Ljava/nio/channels/FileChannel;
    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v6, :cond_1

    .line 120
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v2

    .line 119
    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v7       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v6, v7

    .end local v7           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/google/glass/util/FileSaver;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/google/glass/util/FileSaver;->sharedInstance:Lcom/google/glass/util/FileSaver;

    return-object v0
.end method

.method public static newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;
    .locals 1
    .parameter "fileToSave"

    .prologue
    .line 73
    new-instance v0, Lcom/google/glass/util/FileSaver$2;

    invoke-direct {v0, p0}, Lcom/google/glass/util/FileSaver$2;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static newSaver([B)Lcom/google/glass/util/FileSaver$Saver;
    .locals 1
    .parameter "content"

    .prologue
    .line 58
    new-instance v0, Lcom/google/glass/util/FileSaver$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/FileSaver$1;-><init>([B)V

    return-object v0
.end method

.method public static setSharedInstance(Lcom/google/glass/util/FileSaver;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 142
    sput-object p0, Lcom/google/glass/util/FileSaver;->sharedInstance:Lcom/google/glass/util/FileSaver;

    .line 143
    return-void
.end method


# virtual methods
.method public disableMockModifiedTimeForTest()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/FileSaver;->mockModifiedTimeForTest:Ljava/util/concurrent/atomic/AtomicLong;

    .line 192
    return-void
.end method

.method public enableMockModifiedTimeForTest()V
    .locals 3

    .prologue
    .line 187
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/glass/util/FileSaver;->mockModifiedTimeForTest:Ljava/util/concurrent/atomic/AtomicLong;

    .line 188
    return-void
.end method

.method public getModifiedTime()J
    .locals 5

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    .local v0, lastModifiedTime:J
    iget-object v2, p0, Lcom/google/glass/util/FileSaver;->mockModifiedTimeForTest:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/google/glass/util/FileSaver;->mockModifiedTimeForTest:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    .line 199
    :cond_0
    return-wide v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/glass/util/FileSaver;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/glass/util/FileSaver$Saver;Ljava/lang/String;)Z
    .locals 13
    .parameter "saver"
    .parameter "path"

    .prologue
    const/4 v12, 0x0

    .line 155
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 157
    .local v4, out:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lcom/google/glass/util/FileSaver;->getModifiedTime()J

    move-result-wide v2

    .line 161
    .local v2, lastModifiedTime:J
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-interface {p1, v5}, Lcom/google/glass/util/FileSaver$Saver;->save(Ljava/io/OutputStream;)V

    .line 163
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 164
    sget-object v7, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Saved content to [%s] into file cache at %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 166
    const/4 v6, 0x1

    .line 172
    .local v6, success:Z
    if-eqz v5, :cond_0

    .line 173
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v4, v5

    .line 180
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    if-nez v6, :cond_2

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 183
    :cond_2
    return v6

    .line 175
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Failed to close stream."

    new-array v9, v12, [Ljava/lang/Object;

    invoke-interface {v7, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    const/4 v6, 0x0

    move-object v4, v5

    .line 179
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/io/IOException;
    .end local v6           #success:Z
    :catch_1
    move-exception v0

    .line 168
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v7, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Failed to write content."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    const/4 v6, 0x0

    .line 172
    .restart local v6       #success:Z
    if-eqz v4, :cond_1

    .line 173
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 175
    :catch_2
    move-exception v0

    .line 176
    sget-object v7, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Failed to close stream."

    new-array v9, v12, [Ljava/lang/Object;

    invoke-interface {v7, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    const/4 v6, 0x0

    .line 179
    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    .end local v6           #success:Z
    :catchall_0
    move-exception v7

    .line 172
    :goto_2
    if-eqz v4, :cond_3

    .line 173
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 178
    :cond_3
    :goto_3
    throw v7

    .line 175
    :catch_3
    move-exception v0

    .line 176
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v8, Lcom/google/glass/util/FileSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Failed to close stream."

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface {v8, v0, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 167
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
