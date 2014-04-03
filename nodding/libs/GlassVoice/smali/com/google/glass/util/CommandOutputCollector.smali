.class public Lcom/google/glass/util/CommandOutputCollector;
.super Ljava/lang/Object;
.source "CommandOutputCollector.java"


# static fields
.field private static final SYSTEM_LOG_COMMAND:[Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "logcat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-v"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "threadtime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/util/CommandOutputCollector;->SYSTEM_LOG_COMMAND:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectOutput([Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "command"

    .prologue
    const/4 v11, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    .local v5, reader:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 31
    .local v1, errorReader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 32
    .local v4, proc:Ljava/lang/Process;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 33
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 34
    .end local v1           #errorReader:Ljava/io/BufferedReader;
    .local v2, errorReader:Ljava/io/BufferedReader;
    const/4 v7, 0x2

    :try_start_2
    new-array v3, v7, [Ljava/lang/String;

    .line 35
    .local v3, output:[Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v6}, Lcom/google/glass/util/CommandOutputCollector;->readStream(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 36
    const/4 v7, 0x1

    invoke-static {v2}, Lcom/google/glass/util/CommandOutputCollector;->readStream(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 41
    if-eqz v6, :cond_0

    .line 43
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 48
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 50
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    move-object v1, v2

    .end local v2           #errorReader:Ljava/io/BufferedReader;
    .restart local v1       #errorReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .line 56
    .end local v3           #output:[Ljava/lang/String;
    .end local v4           #proc:Ljava/lang/Process;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_2
    return-object v3

    .line 44
    .end local v1           #errorReader:Ljava/io/BufferedReader;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #errorReader:Ljava/io/BufferedReader;
    .restart local v3       #output:[Ljava/lang/String;
    .restart local v4       #proc:Ljava/lang/Process;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Error closing STDOUT reader"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 52
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Error closing STDERR reader"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 38
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #errorReader:Ljava/io/BufferedReader;
    .end local v3           #output:[Ljava/lang/String;
    .end local v4           #proc:Ljava/lang/Process;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v1       #errorReader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 39
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    sget-object v7, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Error collecting output"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 41
    if-eqz v5, :cond_2

    .line 43
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 48
    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    .line 50
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 56
    :cond_3
    :goto_5
    const/4 v3, 0x0

    goto :goto_2

    .line 44
    :catch_3
    move-exception v0

    .line 45
    sget-object v7, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Error closing STDOUT reader"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 51
    :catch_4
    move-exception v0

    .line 52
    sget-object v7, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Error closing STDERR reader"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 41
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v5, :cond_4

    .line 43
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 48
    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    .line 50
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 53
    :cond_5
    :goto_8
    throw v7

    .line 44
    :catch_5
    move-exception v0

    .line 45
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v8, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Error closing STDOUT reader"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v0, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 51
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 52
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v8, Lcom/google/glass/util/CommandOutputCollector;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Error closing STDERR reader"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-interface {v8, v0, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 41
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #proc:Ljava/lang/Process;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .end local v1           #errorReader:Ljava/io/BufferedReader;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #errorReader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2           #errorReader:Ljava/io/BufferedReader;
    .restart local v1       #errorReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 38
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v1           #errorReader:Ljava/io/BufferedReader;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v2       #errorReader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #errorReader:Ljava/io/BufferedReader;
    .restart local v1       #errorReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static getLogcat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    sget-object v1, Lcom/google/glass/util/CommandOutputCollector;->SYSTEM_LOG_COMMAND:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, output:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 21
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 23
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static readStream(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v1, log:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 66
    :cond_0
    return-object v1
.end method
