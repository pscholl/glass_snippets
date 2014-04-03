.class public Lcom/google/glass/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final READ_FILE_CHUNK_SIZE:I = 0x2000

.field private static final TIMESTAMP_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 32
    new-instance v0, Lcom/google/glass/util/FileHelper$1;

    invoke-direct {v0}, Lcom/google/glass/util/FileHelper$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/FileHelper;->TIMESTAMP_FORMAT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyResourcesToFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 17
    .parameter "context"
    .parameter "basePath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, resIdToFilename:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, basePathDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v13

    if-nez v13, :cond_0

    .line 62
    sget-object v13, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Error creating base path: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_0
    const/16 v13, 0x400

    new-array v2, v13, [B

    .line 67
    .local v2, buffer:[B
    const/4 v3, 0x0

    .line 68
    .local v3, bytesRead:I
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 69
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, destinationPath:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 72
    .local v12, resId:I
    const/4 v10, 0x0

    .line 73
    .local v10, is:Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 75
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 76
    .end local v10           #is:Ljava/io/BufferedInputStream;
    .local v11, is:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 77
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v8, fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v11, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-ltz v3, :cond_2

    .line 78
    const/4 v13, -0x1

    if-ne v3, v13, :cond_4

    .line 89
    :cond_2
    if-eqz v11, :cond_3

    .line 91
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 97
    :cond_3
    :goto_2
    if-eqz v8, :cond_1

    .line 99
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v5

    .line 101
    .local v5, e:Ljava/io/IOException;
    sget-object v13, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Error closing file output stream"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v5, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    .end local v5           #e:Ljava/io/IOException;
    :cond_4
    const/4 v13, 0x0

    :try_start_5
    invoke-virtual {v8, v2, v13, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 84
    :catch_1
    move-exception v5

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 85
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v5       #e:Ljava/io/IOException;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_6
    sget-object v13, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to copy file to: %s"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v5, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 89
    if-eqz v10, :cond_5

    .line 91
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 97
    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    .line 99
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 106
    .end local v4           #destinationPath:Ljava/lang/String;
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v10           #is:Ljava/io/BufferedInputStream;
    .end local v12           #resId:I
    :cond_6
    :goto_5
    return-void

    .line 92
    .restart local v4       #destinationPath:Ljava/lang/String;
    .restart local v6       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    .restart local v12       #resId:I
    :catch_2
    move-exception v5

    .line 93
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v13, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Error closing raw resource stream"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v5, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 92
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    .line 93
    sget-object v13, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Error closing raw resource stream"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v5, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 100
    :catch_4
    move-exception v5

    .line 101
    sget-object v13, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Error closing file output stream"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v5, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 89
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_6
    if-eqz v10, :cond_7

    .line 91
    :try_start_9
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 97
    :cond_7
    :goto_7
    if-eqz v7, :cond_8

    .line 99
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 102
    :cond_8
    :goto_8
    throw v13

    .line 92
    :catch_5
    move-exception v5

    .line 93
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v15, "Error closing raw resource stream"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v14, v5, v15, v0}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 100
    .end local v5           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 101
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v15, "Error closing file output stream"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v14, v5, v15, v0}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 89
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v13

    move-object v10, v11

    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v10           #is:Ljava/io/BufferedInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v13

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 84
    :catch_7
    move-exception v5

    goto/16 :goto_3

    .end local v10           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v5

    move-object v10, v11

    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_3
.end method

.method public static formatTimestamp(J)Ljava/lang/String;
    .locals 1
    .parameter "timestamp"

    .prologue
    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/google/glass/util/FileHelper;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 45
    sget-object v0, Lcom/google/glass/util/FileHelper;->TIMESTAMP_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static read(Ljava/io/File;[BLcom/google/glass/util/Condition;)I
    .locals 9
    .parameter "file"
    .parameter "into"
    .parameter "isCancelled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 116
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 117
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 119
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 120
    .local v4, read:I
    const/4 v3, 0x0

    .line 121
    .local v3, offset:I
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v2, v6

    .line 123
    .local v2, length:I
    :cond_0
    const/16 v6, 0x2000

    sub-int v7, v2, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1, p1, v3, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_2

    .line 124
    add-int/2addr v3, v4

    .line 127
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/glass/util/Condition;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :goto_0
    return v5

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error closing file."

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v6, v0, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    if-ne v3, v2, :cond_0

    .line 137
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move v5, v3

    .line 140
    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error closing file."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v6, v0, v7, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 136
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #length:I
    :catchall_0
    move-exception v6

    .line 137
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 140
    :goto_2
    throw v6

    .line 138
    :catch_2
    move-exception v0

    .line 139
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/util/FileHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Error closing file."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v7, v0, v8, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
