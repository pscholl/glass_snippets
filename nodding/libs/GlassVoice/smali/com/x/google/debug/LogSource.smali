.class public final Lcom/x/google/debug/LogSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/debug/LogSource$LogSourceObserver;
    }
.end annotation


# static fields
.field private static final CONFIG_LEVEL_SEPARATOR:C = '='

.field private static final CONFIG_SOURCE_SEPARATOR:Ljava/lang/String; = ","

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_LOG_LEVEL:I = 0x0

.field private static final LOG_LEVEL_VARZ:Ljava/lang/String; = "/logs/level"

.field private static final LOG_SOURCE_SEPARATOR:Ljava/lang/String; = ": "

.field private static defaultLogSource:Lcom/x/google/debug/LogSource;

.field static forceProductionForTesting:Z

.field private static logSourceLevels:[[Ljava/lang/Object;

.field private static logSourceObserver:Lcom/x/google/debug/LogSource$LogSourceObserver;

.field private static logSources:Ljava/util/Vector;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final dynamicSourceObject:Ljava/lang/Object;

.field private logLevel:I

.field private final logPrefixLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/x/google/debug/LogSource;->getDefaultLogLevel()I

    move-result v0

    sput v0, Lcom/x/google/debug/LogSource;->DEFAULT_LOG_LEVEL:I

    invoke-static {}, Lcom/x/google/debug/LogSource;->staticInit()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/x/google/debug/LogSource;->dynamicSourceObject:Ljava/lang/Object;

    sget v0, Lcom/x/google/debug/LogSource;->DEFAULT_LOG_LEVEL:I

    iput v0, p0, Lcom/x/google/debug/LogSource;->logLevel:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p1}, Lcom/x/google/debug/DebugUtil;->getLogSource(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lcom/x/google/debug/LogSource;->logPrefixLength:I

    return-void
.end method

.method static synthetic access$002([[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 0

    sput-object p0, Lcom/x/google/debug/LogSource;->logSourceLevels:[[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)[[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/x/google/debug/LogSource;->parseLogSourceLevelsConfig(Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcom/x/google/debug/LogSource;->updateLogLevelFromLogSourceLevels()V

    return-void
.end method

.method private formatMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/x/google/debug/LogSource;->logPrefixLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/x/google/debug/LogSource;->dynamicSourceObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/x/google/debug/LogSource;->dynamicSourceObject:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/x/google/debug/LogSource;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lcom/x/google/debug/LogSource;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lcom/x/google/debug/LogSource;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getDefaultLogLevel()I
    .locals 2

    const/4 v0, 0x7

    :try_start_0
    invoke-static {v0}, Lcom/x/google/debug/Log;->parseLogLevel(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getDynamicLogSource(Ljava/lang/Object;)Lcom/x/google/debug/LogSource;
    .locals 3

    const-class v1, Lcom/x/google/debug/LogSource;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/x/google/debug/LogSource;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Lcom/x/google/debug/LogSource;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLogSource(Ljava/lang/Class;)Lcom/x/google/debug/LogSource;
    .locals 2

    const-class v0, Lcom/x/google/debug/LogSource;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/x/google/debug/LogSource;->defaultLogSource:Lcom/x/google/debug/LogSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static parseLogSourceLevelsConfig(Ljava/lang/String;)[[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/Object;

    return-object v0
.end method

.method private static registerLogSource(Lcom/x/google/debug/LogSource;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/x/google/debug/LogSource;->logSources:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/x/google/debug/LogSource;->logSources:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/x/google/debug/LogSource;->logSources:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/x/google/debug/LogSource;->logSources:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private safeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXCEPTION["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setLogLevelFromLogSourceLevels()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized setLogSourceLevelsConfig(Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/x/google/debug/LogSource;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private static staticInit()V
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/x/google/debug/LogSource;->logSources:Ljava/util/Vector;

    const-string v0, "${LOG_SOURCE_LEVELS}"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/x/google/debug/DebugUtil;->getAntProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/LogSource;->parseLogSourceLevelsConfig(Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/x/google/debug/LogSource;->logSourceLevels:[[Ljava/lang/Object;

    invoke-static {}, Lcom/x/google/debug/RuntimeVarz;->getInstance()Lcom/x/google/debug/RuntimeVarz;

    move-result-object v1

    const-string v2, "/logs/level"

    invoke-virtual {v1, v2}, Lcom/x/google/debug/RuntimeVarz;->isRegistered(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/x/google/debug/RuntimeVarz;->getInstance()Lcom/x/google/debug/RuntimeVarz;

    move-result-object v1

    const-string v2, "/logs/level"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "*=FINE"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "*=INFO"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "*=SEVERE"

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/x/google/debug/RuntimeVarz;->register(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/x/google/debug/LogSource$LogSourceObserver;

    invoke-direct {v0}, Lcom/x/google/debug/LogSource$LogSourceObserver;-><init>()V

    sput-object v0, Lcom/x/google/debug/LogSource;->logSourceObserver:Lcom/x/google/debug/LogSource$LogSourceObserver;

    invoke-static {}, Lcom/x/google/debug/RuntimeVarz;->getInstance()Lcom/x/google/debug/RuntimeVarz;

    move-result-object v0

    sget-object v1, Lcom/x/google/debug/LogSource;->logSourceObserver:Lcom/x/google/debug/LogSource$LogSourceObserver;

    invoke-virtual {v0, v1}, Lcom/x/google/debug/RuntimeVarz;->addObserver(Lcom/x/google/common/util/Observer;)V

    new-instance v0, Lcom/x/google/debug/LogSource;

    const-class v1, Lcom/x/google/debug/LogSource;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/x/google/debug/LogSource;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/x/google/debug/LogSource;->defaultLogSource:Lcom/x/google/debug/LogSource;

    return-void
.end method

.method private static declared-synchronized updateLogLevelFromLogSourceLevels()V
    .locals 6

    const-class v2, Lcom/x/google/debug/LogSource;

    monitor-enter v2

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/x/google/debug/LogSource;->logSources:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/x/google/debug/LogSource;->logSources:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/debug/LogSource;

    if-nez v0, :cond_0

    sget-object v0, Lcom/x/google/debug/LogSource;->logSources:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Lcom/x/google/debug/LogSource;->setLogLevelFromLogSourceLevels()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/x/google/debug/LogSource;->logLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/x/google/debug/LogSource;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public config(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/x/google/debug/LogSource;->config(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public config(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/x/google/debug/LogSource;->xlog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public fine(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/x/google/debug/LogSource;->fine(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public fine(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/x/google/debug/LogSource;->xlog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public finer(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/x/google/debug/LogSource;->finer(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public finer(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/x/google/debug/LogSource;->xlog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public finest(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/x/google/debug/LogSource;->finest(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public finest(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/x/google/debug/LogSource;->xlog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getLogLevel()I
    .locals 1

    iget v0, p0, Lcom/x/google/debug/LogSource;->logLevel:I

    return v0
.end method

.method public info(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/x/google/debug/LogSource;->xlog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public isEnabled(I)Z
    .locals 1

    iget v0, p0, Lcom/x/google/debug/LogSource;->logLevel:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public profilingMark(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/x/google/debug/LogSource;->formatMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/debug/Profiling;->mark(Ljava/lang/String;)V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    iput p1, p0, Lcom/x/google/debug/LogSource;->logLevel:I

    return-void
.end method

.method public severe(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/x/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public severe(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/x/google/debug/LogSource;->xlog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method testFormatMessage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/x/google/debug/LogSource;->formatMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warning(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/x/google/debug/LogSource;->warning(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public warning(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/x/google/debug/LogSource;->xlog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public xlog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/x/google/debug/LogSource;->xlog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public xlog(ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/x/google/debug/LogSource;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p5, p6}, Lcom/x/google/debug/LogSource;->formatMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/x/google/debug/Log;->xlog(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
