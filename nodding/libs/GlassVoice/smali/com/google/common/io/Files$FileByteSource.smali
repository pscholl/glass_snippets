.class final Lcom/google/common/io/Files$FileByteSource;
.super Lcom/google/common/io/ByteSource;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileByteSource"
.end annotation


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/google/common/io/Files$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/common/io/Files$FileByteSource;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/io/Files$FileByteSource;->openStream()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public read()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, -0x1

    .line 132
    iget-object v11, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 135
    .local v9, size:J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-nez v11, :cond_0

    .line 136
    invoke-super {p0}, Lcom/google/common/io/ByteSource;->read()[B

    move-result-object v8

    .line 182
    :goto_0
    return-object v8

    .line 141
    :cond_0
    const-wide/32 v11, 0x7fffffff

    cmp-long v11, v9, v11

    if-lez v11, :cond_1

    .line 143
    new-instance v11, Ljava/lang/OutOfMemoryError;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file is too large to fit in a byte array: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v11

    .line 147
    :cond_1
    long-to-int v11, v9

    new-array v0, v11, [B

    .line 149
    .local v0, bytes:[B
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 151
    .local v1, closer:Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/Files$FileByteSource;->openStream()Ljava/io/FileInputStream;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 152
    .local v3, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 153
    .local v5, off:I
    const/4 v7, 0x0

    .line 156
    .local v7, read:I
    :goto_1
    int-to-long v11, v5

    cmp-long v11, v11, v9

    if-gez v11, :cond_2

    long-to-int v11, v9

    sub-int/2addr v11, v5

    invoke-virtual {v3, v0, v5, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-eq v7, v13, :cond_2

    .line 157
    add-int/2addr v5, v7

    goto :goto_1

    .line 160
    :cond_2
    move-object v8, v0

    .line 162
    .local v8, result:[B
    int-to-long v11, v5

    cmp-long v11, v11, v9

    if-gez v11, :cond_4

    .line 164
    new-array v8, v5, [B

    .line 165
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v0, v11, v8, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    goto :goto_0

    .line 166
    :cond_4
    if-eq v7, v13, :cond_3

    .line 169
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 170
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {v3, v6}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 171
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 172
    .local v4, moreBytes:[B
    array-length v11, v0

    array-length v12, v4

    add-int/2addr v11, v12

    new-array v8, v11, [B

    .line 173
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v0

    invoke-static {v0, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    const/4 v11, 0x0

    array-length v12, v0

    array-length v13, v4

    invoke-static {v4, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 179
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #moreBytes:[B
    .end local v5           #off:I
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v7           #read:I
    .end local v8           #result:[B
    :catch_0
    move-exception v2

    .line 180
    .local v2, e:Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v11

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .end local v2           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    throw v11
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Files.asByteSource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/Files$FileByteSource;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
