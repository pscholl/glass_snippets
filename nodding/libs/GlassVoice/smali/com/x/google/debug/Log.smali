.class public Lcom/x/google/debug/Log;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/debug/Log$TimerInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOGGER:Ljava/lang/String; = "com.x.google.debug.StdoutLogger"

.field public static final LEVEL_ALL:I = 0x0

.field public static final LEVEL_CONFIG:I = 0x4

.field public static final LEVEL_FINE:I = 0x3

.field public static final LEVEL_FINER:I = 0x2

.field public static final LEVEL_FINEST:I = 0x1

.field public static final LEVEL_INFO:I = 0x5

.field private static final LEVEL_NAMES:[Ljava/lang/String; = null

.field public static final LEVEL_NONE:I = 0x8

.field public static final LEVEL_SEVERE:I = 0x7

.field public static final LEVEL_WARNING:I = 0x6

.field private static final logger:Lcom/x/google/debug/Logger;

.field private static final timers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/x/google/debug/Log;->timers:Ljava/util/Hashtable;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ALL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FINEST"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FINER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "FINE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CONFIG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WARNING"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SEVERE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NONE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/x/google/debug/Log;->LEVEL_NAMES:[Ljava/lang/String;

    invoke-static {}, Lcom/x/google/debug/Log;->logger()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/DebugUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/debug/Logger;

    sput-object v0, Lcom/x/google/debug/Log;->logger:Lcom/x/google/debug/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static config(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-static {p0, v0, v2, v2, v1}, Lcom/x/google/debug/Log;->xlog(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static endTimer(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, v1, v1, v0}, Lcom/x/google/debug/Log;->xendTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static endTimer(Ljava/lang/String;J)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/x/google/debug/Log;->xendTimer(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static fine(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-static {p0, v0, v2, v2, v1}, Lcom/x/google/debug/Log;->xlog(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static finer(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {p0, v0, v2, v2, v1}, Lcom/x/google/debug/Log;->xlog(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static finest(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, v0, v2, v2, v1}, Lcom/x/google/debug/Log;->xlog(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static getLevelName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/x/google/debug/Log;->LEVEL_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getLogger()Lcom/x/google/debug/Logger;
    .locals 1

    sget-object v0, Lcom/x/google/debug/Log;->logger:Lcom/x/google/debug/Logger;

    return-object v0
.end method

.method public static info(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-static {p0, v0, v2, v2, v1}, Lcom/x/google/debug/Log;->xlog(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/x/google/debug/Log;->xisLoggable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static logLevel()Ljava/lang/String;
    .locals 3

    const-string v0, "INFO"

    const-string v1, "LOG_LEVEL"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/x/google/debug/DebugUtil;->getAntProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Missing log level - using logger specific default"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "         For Ant: Specify the log level using the LOG_LEVEL property"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "         For Bolide: Specify the log level using constant injection"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "         For J2SE:  Define LOG_LEVEL system property"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "         See JavaDoc or source of com.google.debug.Log."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static logThreads()Z
    .locals 2

    const-string v0, "false"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/x/google/debug/DebugUtil;->getAntPropertyAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, p1, v1, v1, v0}, Lcom/x/google/debug/Log;->xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/x/google/debug/Log;->xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static logTime()Z
    .locals 2

    const-string v0, "true"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/x/google/debug/DebugUtil;->getAntPropertyAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static logger()Ljava/lang/Class;
    .locals 2

    :try_start_0
    const-string v0, "com.x.google.debug.StdoutLogger"

    invoke-static {v0}, Lcom/x/google/debug/DebugUtil;->isAntPropertyExpanded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.x.google.debug.StdoutLogger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "LOGGER"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WARNING: Missing logger class - using default logger com.google.debug.StdoutLogger"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "         For Ant: Specify the logger class using the LOGGER property"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "         For Bolide: Specify the logger class using constant injection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "         For J2SE:  Specify the logger class via the LOGGER system property"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "         See JavaDoc or source of com.google.debug.Log."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "com.x.google.debug.StdoutLogger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "Missing logger class com.google.debug.StdoutLogger"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseLogLevel(I)I
    .locals 1

    invoke-static {}, Lcom/x/google/debug/Log;->logLevel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/x/google/debug/Log;->parseLogLevel(Ljava/lang/String;)I

    move-result p0

    :cond_0
    return p0
.end method

.method public static parseLogLevel(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    sget-object v2, Lcom/x/google/debug/Log;->LEVEL_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid log level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static severe(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x7

    const/4 v1, -0x1

    invoke-static {p0, v0, v2, v2, v1}, Lcom/x/google/debug/Log;->xlog(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static startTimer(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, v1, v1, v0}, Lcom/x/google/debug/Log;->xstartTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static startTimer(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {p0, p1, v1, v1, v0}, Lcom/x/google/debug/Log;->xstartTimer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static warning(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x6

    const/4 v1, -0x1

    invoke-static {p0, v0, v2, v2, v1}, Lcom/x/google/debug/Log;->xlog(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xendTimer(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    sget-object v0, Lcom/x/google/debug/Log;->timers:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/x/google/debug/Log$TimerInfo;

    if-nez v1, :cond_1

    sget-object v0, Lcom/x/google/debug/Log;->logger:Lcom/x/google/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/x/google/debug/Logger;->log(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/x/google/debug/Log$TimerInfo;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    sget-object v0, Lcom/x/google/debug/Log;->logger:Lcom/x/google/debug/Logger;

    invoke-virtual {v1}, Lcom/x/google/debug/Log$TimerInfo;->getLogLevel()I

    move-result v4

    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/x/google/debug/Logger;->logTimer(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static xendTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/x/google/debug/Log;->xendTimer(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xisLoggable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/x/google/debug/Log;->logger:Lcom/x/google/debug/Logger;

    invoke-interface {v0, p0, v1, v1}, Lcom/x/google/debug/Logger;->isLoggable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static xlog(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    sget-object v0, Lcom/x/google/debug/Log;->logger:Lcom/x/google/debug/Logger;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/x/google/debug/Logger;->log(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    sget-object v0, Lcom/x/google/debug/Log;->logger:Lcom/x/google/debug/Logger;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/x/google/debug/Logger;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v2, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/x/google/debug/Log;->xlogThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xstartTimer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    sget-object v0, Lcom/x/google/debug/Log;->timers:Ljava/util/Hashtable;

    new-instance v1, Lcom/x/google/debug/Log$TimerInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lcom/x/google/debug/Log$TimerInfo;-><init>(JI)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/x/google/debug/Log;->logger:Lcom/x/google/debug/Logger;

    const-wide/16 v2, -0x1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v0 .. v7}, Lcom/x/google/debug/Logger;->logTimer(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static xstartTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0, p1, p2, p3}, Lcom/x/google/debug/Log;->xstartTimer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
