.class public Lcom/google/glass/util/ProtoListFile;
.super Ljava/lang/Object;
.source "ProtoListFile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TIME_BETWEEN_SAVES_MS:J

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final parser:Lcom/google/glass/net/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoParser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final path:Ljava/lang/String;

.field private saveQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/util/ProtoListFile;->TIME_BETWEEN_SAVES_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/glass/net/ProtoParser;)V
    .locals 1
    .parameter "context"
    .parameter "path"
    .parameter "executor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/glass/net/ProtoParser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/glass/util/ProtoListFile;,"Lcom/google/glass/util/ProtoListFile<TT;>;"
    .local p4, parser:Lcom/google/glass/net/ProtoParser;,"Lcom/google/glass/net/ProtoParser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/google/glass/util/ProtoListFile;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/google/glass/util/ProtoListFile;->path:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/google/glass/util/ProtoListFile;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    iput-object p4, p0, Lcom/google/glass/util/ProtoListFile;->parser:Lcom/google/glass/net/ProtoParser;

    .line 47
    return-void
.end method

.method private readProto(Ljava/io/DataInputStream;)Lcom/google/protobuf/nano/MessageNano;
    .locals 3
    .parameter "dis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    .local p0, this:Lcom/google/glass/util/ProtoListFile;,"Lcom/google/glass/util/ProtoListFile<TT;>;"
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 174
    .local v1, length:I
    new-array v0, v1, [B

    .line 175
    .local v0, buf:[B
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 176
    iget-object v2, p0, Lcom/google/glass/util/ProtoListFile;->parser:Lcom/google/glass/net/ProtoParser;

    invoke-virtual {v2, v0}, Lcom/google/glass/net/ProtoParser;->parse([B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v2

    return-object v2
.end method

.method private writeProto(Lcom/google/protobuf/nano/MessageNano;Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter
    .parameter "dos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Lcom/google/glass/util/ProtoListFile;,"Lcom/google/glass/util/ProtoListFile<TT;>;"
    .local p1, proto:Lcom/google/protobuf/nano/MessageNano;,"TT;"
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 112
    .local v0, serializedProto:[B
    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 113
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 114
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    .line 181
    .local p0, this:Lcom/google/glass/util/ProtoListFile;,"Lcom/google/glass/util/ProtoListFile<TT;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 184
    iget-object v0, p0, Lcom/google/glass/util/ProtoListFile;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/util/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 188
    iget-object v0, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    return-void
.end method

.method public flushWrites()V
    .locals 11

    .prologue
    .local p0, this:Lcom/google/glass/util/ProtoListFile;,"Lcom/google/glass/util/ProtoListFile<TT;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 75
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 77
    iget-object v5, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 78
    const/4 v2, 0x0

    .line 80
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/util/ProtoListFile;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/glass/util/ProtoListFile;->path:Ljava/lang/String;

    const v7, 0x8000

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 81
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 84
    .local v0, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v5, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, n:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 85
    iget-object v5, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/nano/MessageNano;

    invoke-direct {p0, v5, v0}, Lcom/google/glass/util/ProtoListFile;->writeProto(Lcom/google/protobuf/nano/MessageNano;Ljava/io/DataOutputStream;)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 88
    sget-object v5, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saved "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " proto(s) to disk."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    iget-object v5, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 96
    if-eqz v2, :cond_1

    .line 98
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    .end local v4           #n:I
    :cond_1
    :goto_1
    return-void

    .line 99
    .restart local v0       #dos:Ljava/io/DataOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #i:I
    .restart local v4       #n:I
    :catch_0
    move-exception v1

    .line 100
    .local v1, e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Could not close protos file after write."

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 89
    .end local v0           #dos:Ljava/io/DataOutputStream;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #i:I
    .end local v4           #n:I
    :catch_1
    move-exception v1

    .line 90
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_2
    sget-object v5, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Could not write protos."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    iget-object v5, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 96
    if-eqz v2, :cond_1

    .line 98
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 99
    :catch_2
    move-exception v1

    .line 100
    sget-object v5, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Could not close protos file after write."

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 96
    if-eqz v2, :cond_2

    .line 98
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 101
    :cond_2
    :goto_2
    throw v5

    .line 99
    :catch_3
    move-exception v1

    .line 100
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Could not close protos file after write."

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v1, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 105
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_3
    sget-object v5, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "No protos to save to disk."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public flushedSize()J
    .locals 2

    .prologue
    .line 51
    .local p0, this:Lcom/google/glass/util/ProtoListFile;,"Lcom/google/glass/util/ProtoListFile<TT;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 52
    iget-object v0, p0, Lcom/google/glass/util/ProtoListFile;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/util/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/glass/util/ProtoListFile;,"Lcom/google/glass/util/ProtoListFile<TT;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 118
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 120
    const/4 v3, 0x0

    .line 122
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/util/ProtoListFile;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/glass/util/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 123
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 127
    .local v1, dis:Ljava/io/DataInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 128
    .local v5, result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v4, 0x1

    .line 129
    .local v4, hasData:Z
    :goto_0
    if-eqz v4, :cond_0

    .line 131
    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/glass/util/ProtoListFile;->readProto(Ljava/io/DataInputStream;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    .line 135
    .local v2, e:Ljava/io/EOFException;
    const/4 v4, 0x0

    .line 136
    goto :goto_0

    .line 138
    .end local v2           #e:Ljava/io/EOFException;
    :cond_0
    :try_start_2
    sget-object v6, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " persisted protos."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    iget-object v6, p0, Lcom/google/glass/util/ProtoListFile;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/glass/util/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 146
    :cond_1
    iget-object v6, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 157
    if-eqz v3, :cond_2

    .line 159
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 162
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v4           #hasData:Z
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_2
    :goto_1
    return-object v5

    .line 160
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #dis:Ljava/io/DataInputStream;
    .restart local v4       #hasData:Z
    .restart local v5       #result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :catch_1
    move-exception v2

    .line 161
    .local v2, e:Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Could not close file after read."

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 148
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #dis:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #hasData:Z
    .end local v5           #result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :catch_2
    move-exception v2

    .line 149
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4
    sget-object v6, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Could not read protos from disk."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v6, p0, Lcom/google/glass/util/ProtoListFile;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/glass/util/ProtoListFile;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    if-eqz v3, :cond_2

    .line 159
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 160
    :catch_3
    move-exception v2

    .line 161
    sget-object v6, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Could not close file after read."

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 157
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_3

    .line 159
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 162
    :cond_3
    :goto_2
    throw v6

    .line 160
    :catch_4
    move-exception v2

    .line 161
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/util/ProtoListFile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Could not close file after read."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v2, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public write(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, this:Lcom/google/glass/util/ProtoListFile;,"Lcom/google/glass/util/ProtoListFile<TT;>;"
    .local p1, proto:Lcom/google/protobuf/nano/MessageNano;,"TT;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 60
    iget-object v0, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/glass/util/ProtoListFile;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/util/ProtoListFile$1;

    invoke-direct {v1, p0}, Lcom/google/glass/util/ProtoListFile$1;-><init>(Lcom/google/glass/util/ProtoListFile;)V

    sget-wide v2, Lcom/google/glass/util/ProtoListFile;->TIME_BETWEEN_SAVES_MS:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/ProtoListFile;->saveQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method
